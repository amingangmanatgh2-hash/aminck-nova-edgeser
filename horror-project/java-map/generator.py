#!/usr/bin/env python3
"""
Nova Horror - Java Map Generator
Generates a 1024x1024 horror world (4 regions) with mansion, village, tunnels, mines, foggy forest.
Uses anvil-parser (EmptyRegion) for fast generation.
"""

import os, sys, time, random, math
from anvil import Block, EmptyChunk, EmptySection, EmptyRegion
import nbtlib
from nbtlib import tag as nbt_tag

# Config
WORLD_SIZE = 512  # from -512 to 512
REGIONS = [(-1,-1), (-1,0), (0,-1), (0,0)]  # 4 regions to cover -512..511
OUTPUT_DIR = os.path.join(os.path.dirname(__file__), "world")
REGION_DIR = os.path.join(OUTPUT_DIR, "region")

# Blocks
STONE = Block('minecraft','stone')
DIRT = Block('minecraft','dirt')
GRASS = Block('minecraft','grass_block')
COBBLE = Block('minecraft','cobblestone')
DARK_OAK_PLANKS = Block('minecraft','dark_oak_planks')
DARK_OAK_LOG = Block('minecraft','dark_oak_log')
DARK_OAK_LEAVES = Block('minecraft','dark_oak_leaves')
OAK_PLANKS = Block('minecraft','oak_planks')
OAK_LOG = Block('minecraft','oak_log')
OAK_LEAVES = Block('minecraft','oak_leaves')
AIR = None  # None represents air in EmptySection
GLASS = Block('minecraft','glass')
IRON_BARS = Block('minecraft','iron_bars')
TORCH = Block('minecraft','torch')
SOUL_TORCH = Block('minecraft','soul_torch')
COBWEB = Block('minecraft','cobweb')
CHEST = Block('minecraft','chest')
SPAWNER = Block('minecraft','spawner')
MOSSY_COBBLE = Block('minecraft','mossy_cobblestone')
CRACKED_BRICKS = Block('minecraft','cracked_stone_bricks')
STONE_BRICKS = Block('minecraft','stone_bricks')
GRAVEL = Block('minecraft','gravel')
ANDESITE = Block('minecraft','andesite')
RAIL = Block('minecraft','rail', {'shape':'north_south'})
# For simplicity, use properties via dict

def create_stone_section(y):
    sec = EmptySection(y)
    sec.blocks = [STONE]*4096
    return sec

def create_section_3_template():
    """Section y=3 covers world y 48-63, top 3 layers dirt"""
    sec = EmptySection(3)
    sec.blocks = [STONE]*4096
    for x in range(16):
        for z in range(16):
            # world 61,62,63 = dirt
            for ly in [13,14,15]:
                idx = ly*256 + z*16 + x
                sec.blocks[idx] = DIRT
    return sec

def create_section_4_template():
    """Section y=4 covers world y 64-79, grass at 64"""
    sec = EmptySection(4)
    # all air by default, set grass at local y 0
    for x in range(16):
        for z in range(16):
            idx = 0*256 + z*16 + x
            sec.blocks[idx] = GRASS
    return sec

def get_chunk_coords(global_x, global_z):
    return global_x // 16, global_z // 16

def get_region_coords(chunk_x, chunk_z):
    return chunk_x // 32, chunk_z // 32

def set_block_in_region(region, x, y, z, block):
    """Set block if inside region, handling section creation"""
    if not region.inside(x, y, z):
        return False
    # Get chunk coords
    cx = x // 16
    cz = z // 16
    # Adjust for negative? Python // does floor, which is correct for anvil?
    # anvil's inside uses // 512 for region check, but chunk calc should be same
    # For EmptyRegion, x is region x, chunk x is global chunk? Actually EmptyRegion x is region coord, but its chunks are stored with local? Let's check.
    # In EmptyRegion, chunks list holds EmptyChunk with x,z being chunk coords relative to region? No, from earlier code, EmptyChunk x is global chunk coord? Actually when we created region 0,0 and added chunks 0..31, it worked.
    # So for region -1,0, chunks should be -32..-1 in x.
    try:
        chunk = region.get_chunk(cx, cz)
    except:
        # chunk doesn't exist, create it
        chunk = EmptyChunk(cx, cz)
        region.add_chunk(chunk)
    # Now set block
    # Convert to local chunk coords
    lx = x % 16
    lz = z % 16
    # y is global
    # Ensure section exists
    sec_y = y // 16
    sec = None
    if sec_y < len(chunk.sections):
        sec = chunk.sections[sec_y]
    if sec is None:
        sec = EmptySection(sec_y)
        chunk.add_section(sec)
    # set block
    try:
        sec.set_block(block, lx, y % 16, lz)
    except Exception as e:
        print(f"Failed set {x},{y},{z}: {e}")
        return False
    return True

def fill_region(region, block, x1, y1, z1, x2, y2, z2):
    """Naive fill - use set_block loop, but only for small areas"""
    x1, x2 = min(x1,x2), max(x1,x2)
    y1, y2 = min(y1,y2), max(y1,y2)
    z1, z2 = min(z1,z2), max(z1,z2)
    for x in range(x1, x2+1):
        for y in range(y1, y2+1):
            for z in range(z1, z2+1):
                set_block_in_region(region, x, y, z, block)

def generate_terrain_for_region(rx, rz):
    print(f"Generating terrain for region {rx},{rz}...")
    region = EmptyRegion(rx, rz)
    stone_blocks = [STONE]*4096
    sec3_template = create_section_3_template()
    sec4_template = create_section_4_template()

    # Determine chunk range for this region
    # region rx covers chunks rx*32 to rx*32+31
    start_cx = rx * 32
    start_cz = rz * 32
    for cx in range(start_cx, start_cx+32):
        for cz in range(start_cz, start_cz+32):
            chunk = EmptyChunk(cx, cz)
            # sections 0,1,2 stone
            for sy in [0,1,2]:
                sec = EmptySection(sy)
                sec.blocks = stone_blocks[:]  # copy
                chunk.add_section(sec)
            # section 3 dirt top
            sec3 = EmptySection(3)
            sec3.blocks = sec3_template.blocks[:]
            chunk.add_section(sec3)
            # section 4 grass
            sec4 = EmptySection(4)
            sec4.blocks = sec4_template.blocks[:]
            chunk.add_section(sec4)
            region.add_chunk(chunk)
    return region

def build_mansion(region):
    print("Building mansion at 0,0...")
    # Mansion footprint: x -40..40, z -30..30, y 65..85
    # Foundation
    fill_region(region, COBBLE, -40, 64, -30, 40, 64, 30)
    # Floor dark oak
    fill_region(region, DARK_OAK_PLANKS, -39, 65, -29, 39, 65, 29)

    # Outer walls cobble/stone bricks
    for y in range(66, 80):
        fill_region(region, STONE_BRICKS, -40, y, -30, 40, y, -30)  # north
        fill_region(region, STONE_BRICKS, -40, y, 30, 40, y, 30)   # south
        fill_region(region, STONE_BRICKS, -40, y, -30, -40, y, 30) # west
        fill_region(region, STONE_BRICKS, 40, y, -30, 40, y, 30)   # east

    # Interior walls - divide into rooms
    # Central hallway
    fill_region(region, DARK_OAK_PLANKS, -2, 66, -29, 2, 79, 29)  # placeholder for hallway walls
    # Actually create rooms: library at -30,-20, dining at 10,10 etc.
    # Library
    fill_region(region, OAK_PLANKS, -35, 66, -25, -15, 79, -25)  # north library wall
    fill_region(region, OAK_PLANKS, -35, 66, -10, -15, 79, -10)
    fill_region(region, OAK_PLANKS, -35, 66, -25, -35, 79, -10)
    fill_region(region, OAK_PLANKS, -15, 66, -25, -15, 79, -10)

    # Dining room
    fill_region(region, DARK_OAK_PLANKS, 15, 66, -25, 35, 79, -25)
    fill_region(region, DARK_OAK_PLANKS, 15, 66, -5, 35, 79, -5)

    # Second floor
    fill_region(region, DARK_OAK_PLANKS, -39, 80, -29, 39, 80, 29)  # second floor
    for y in range(81, 90):
        fill_region(region, STONE_BRICKS, -40, y, -30, 40, y, -30)
        fill_region(region, STONE_BRICKS, -40, y, 30, 40, y, 30)
        fill_region(region, STONE_BRICKS, -40, y, -30, -40, y, 30)
        fill_region(region, STONE_BRICKS, 40, y, -30, 40, y, 30)

    # Roof
    for y in range(90, 95):
        offset = y - 90
        fill_region(region, DARK_OAK_PLANKS, -40+offset, y, -30+offset, 40-offset, y, 30-offset)

    # Entrance door (air)
    fill_region(region, None, -2, 66, -30, 2, 68, -30)

    # Windows with iron bars
    for x in [-30, -10, 10, 30]:
        fill_region(region, IRON_BARS, x, 70, -30, x, 72, -30)
        fill_region(region, IRON_BARS, x, 70, 30, x, 72, 30)

    # Basement entrance at center
    fill_region(region, None, -2, 65, 0, 2, 64, 5)  # stairs down
    for y in range(40, 65):
        fill_region(region, None, -1, y, 2, 1, y, 4)  # shaft
        fill_region(region, COBBLE, -2, y, 1, 2, y, 1)
        fill_region(region, COBBLE, -2, y, 5, 2, y, 5)
        fill_region(region, COBBLE, -2, y, 2, -2, y, 4)
        fill_region(region, COBBLE, 2, y, 2, 2, y, 4)

    # Secret basement room at y=30
    fill_region(region, None, -10, 30, -10, 10, 35, 10)
    fill_region(region, STONE_BRICKS, -11, 30, -11, 11, 35, -11)
    fill_region(region, STONE_BRICKS, -11, 30, 11, 11, 35, 11)
    fill_region(region, STONE_BRICKS, -11, 30, -10, -11, 35, 10)
    fill_region(region, STONE_BRICKS, 11, 30, -10, 11, 35, 10)
    fill_region(region, STONE_BRICKS, -10, 29, -10, 10, 29, 10)  # floor
    fill_region(region, STONE_BRICKS, -10, 36, -10, 10, 36, 10)  # ceiling

    # Chest with lore in basement
    set_block_in_region(region, 0, 31, 0, CHEST)

    # Cobwebs
    for _ in range(20):
        x = random.randint(-38, 38)
        y = random.randint(66, 88)
        z = random.randint(-28, 28)
        if random.random() < 0.7:
            set_block_in_region(region, x, y, z, COBWEB)

def build_village(region, base_x=200, base_z=200):
    print(f"Building abandoned village at {base_x},{base_z}...")
    houses = [
        (0,0, 8,6),
        (15,5, 7,7),
        (-12,10, 9,5),
        (10,-15, 6,8),
        (-15,-12, 8,8),
    ]
    for hx, hz, w, d in houses:
        x1 = base_x + hx
        z1 = base_z + hz
        x2 = x1 + w
        z2 = z1 + d
        # floor
        fill_region(region, COBBLE, x1, 64, z1, x2, 64, z2)
        fill_region(region, OAK_PLANKS, x1+1, 65, z1+1, x2-1, 65, z2-1)
        # walls
        for y in range(66, 70):
            fill_region(region, OAK_LOG, x1, y, z1, x2, y, z1)
            fill_region(region, OAK_LOG, x1, y, z2, x2, y, z2)
            fill_region(region, OAK_LOG, x1, y, z1, x1, y, z2)
            fill_region(region, OAK_LOG, x2, y, z1, x2, y, z2)
        # roof
        fill_region(region, DARK_OAK_PLANKS, x1, 70, z1, x2, 70, z2)
        # door air
        fill_region(region, None, x1+ w//2, 66, z1, x1+ w//2, 67, z1)
        # cobwebs and broken
        if random.random() < 0.8:
            fill_region(region, None, x1+1, 66, z1+1, x1+1, 68, z1+1)  # broken wall
        # chest
        set_block_in_region(region, x1+1, 66, z1+2, CHEST)

    # Well at village center with rusted key
    fill_region(region, COBBLE, base_x-2, 64, base_z-2, base_x+2, 68, base_z+2)
    fill_region(region, None, base_x-1, 65, base_z-1, base_x+1, 67, base_z+1)
    fill_region(region, None, base_x, 20, base_z, base_x, 64, base_z)  # deep well shaft
    # water at bottom? use air for now
    set_block_in_region(region, base_x, 21, base_z, CHEST)  # key chest

def build_tunnels_and_mines(regions_dict):
    print("Building tunnels and mines...")
    # Tunnel from mansion basement (0,30,0) to village (200,65,200) at y=20-25
    # We'll create a winding tunnel
    def create_tunnel_segment(region, x1, y1, z1, x2, y2, z2, width=3):
        # Bresenham-like
        steps = max(abs(x2-x1), abs(z2-z1), abs(y2-y1))
        if steps == 0:
            return
        for i in range(steps+1):
            t = i/steps
            x = int(x1 + (x2-x1)*t)
            y = int(y1 + (y2-y1)*t)
            z = int(z1 + (z2-z1)*t)
            # carve 3x3 tunnel
            for dx in range(-1,2):
                for dy in range(-1,2):
                    for dz in range(-1,2):
                        # determine which region this block belongs to
                        rx, rz = get_region_coords((x+dx)//16, (z+dz)//16)
                        # find region object
                        reg = regions_dict.get((rx,rz))
                        if reg:
                            # carve air
                            if abs(dx)+abs(dy)+abs(dz) <= 2:  # rounded
                                set_block_in_region(reg, x+dx, y+dy, z+dz, None)
                            # rails occasionally
                            if dy==-1 and random.random()<0.1:
                                set_block_in_region(reg, x+dx, y+dy, z+dz, RAIL)

    # Main tunnel: mansion basement to village
    start = (0, 25, 0)
    mid1 = (50, 22, 50)
    mid2 = (120, 20, 120)
    end = (200, 20, 200)
    for (a,b) in [(start,mid1),(mid1,mid2),(mid2,end)]:
        # find which region to use for carving - we need to carve across regions, so we need to handle per block
        # Instead of passing single region, we carve via dict
        # We'll implement carving loop that checks region for each block
        x1,y1,z1 = a
        x2,y2,z2 = b
        steps = max(abs(x2-x1), abs(z2-z1))*2
        for i in range(steps+1):
            t = i/steps if steps else 0
            x = int(x1 + (x2-x1)*t + random.randint(-2,2))
            y = int(y1 + (y2-y1)*t)
            z = int(z1 + (z2-z1)*t + random.randint(-2,2))
            for dx in range(-1,2):
                for dy in range(-1,2):
                    for dz in range(-1,2):
                        if abs(dx)+abs(dy)+abs(dz) >2:
                            continue
                        rx, rz = get_region_coords((x+dx)//16, (z+dz)//16)
                        reg = regions_dict.get((rx,rz))
                        if reg and reg.inside(x+dx, y+dy, z+dz):
                            if dy==-1:
                                # floor cobble
                                if random.random()<0.3:
                                    set_block_in_region(reg, x+dx, y+dy, z+dz, COBBLE)
                                else:
                                    set_block_in_region(reg, x+dx, y+dy, z+dz, None)
                                    # place rail
                                    if random.random()<0.05:
                                        set_block_in_region(reg, x+dx, y+dy, z+dz, RAIL)
                            else:
                                set_block_in_region(reg, x+dx, y+dy, z+dz, None)
                            # cobweb
                            if random.random()<0.02:
                                set_block_in_region(reg, x+dx, y+dy+1, z+dz, COBWEB)

    # Branching mines
    for _ in range(5):
        bx = random.randint(20,180)
        bz = random.randint(20,180)
        by = random.randint(15,25)
        # small mine chamber
        rx, rz = get_region_coords(bx//16, bz//16)
        reg = regions_dict.get((rx,rz))
        if reg:
            fill_region(reg, None, bx-5, by-2, bz-5, bx+5, by+3, bz+5)
            # chest
            set_block_in_region(reg, bx, by-1, bz, CHEST)

def build_forest(regions_dict):
    print("Building foggy forest...")
    # Place trees randomly around mansion, but not inside
    for _ in range(300):
        x = random.randint(-250, 250)
        z = random.randint(-250, 250)
        # skip mansion area
        if -50 < x < 90 and -40 < z < 70:
            continue
        # skip village
        if 180 < x < 230 and 180 < z < 230:
            continue
        y = 65
        rx, rz = get_region_coords(x//16, z//16)
        reg = regions_dict.get((rx,rz))
        if not reg or not reg.inside(x,y,z):
            continue
        # trunk 4-6 high
        h = random.randint(4,6)
        for dy in range(h):
            set_block_in_region(reg, x, y+dy, z, DARK_OAK_LOG if random.random()<0.7 else OAK_LOG)
        # leaves
        for dx in range(-2,3):
            for dy in range(0,3):
                for dz in range(-2,3):
                    if abs(dx)==2 and abs(dz)==2 and dy>0:
                        continue
                    if random.random()<0.8:
                        set_block_in_region(reg, x+dx, y+h+dy, z+dz, DARK_OAK_LEAVES if random.random()<0.6 else OAK_LEAVES)

def create_level_dat(output_dir):
    print("Creating level.dat...")
    # Create minimal level.dat for 1.20.1
    # Using nbtlib
    level_dat_path = os.path.join(output_dir, "level.dat")
    # DataVersion for 1.20.1 is 3465
    data = nbtlib.tag.Compound({
        'Data': nbtlib.tag.Compound({
            'DataVersion': nbtlib.tag.Int(3465),
            'Version': nbtlib.tag.Compound({
                'Id': nbtlib.tag.Int(3465),
                'Name': nbtlib.tag.String('1.20.1'),
                'Series': nbtlib.tag.String('main'),
                'Snapshot': nbtlib.tag.Byte(0)
            }),
            'LevelName': nbtlib.tag.String('Nova Horror - Ravenshollow'),
            'GameType': nbtlib.tag.Int(0),  # Survival
            'GameRules': nbtlib.tag.Compound({
                'doDaylightCycle': nbtlib.tag.String('false'),
                'doWeatherCycle': nbtlib.tag.String('false'),
                'doMobSpawning': nbtlib.tag.String('true'),
                'keepInventory': nbtlib.tag.String('false'),
            }),
            'Time': nbtlib.tag.Long(18000),  # Midnight
            'DayTime': nbtlib.tag.Long(18000),
            'SpawnX': nbtlib.tag.Int(-250),
            'SpawnY': nbtlib.tag.Int(70),
            'SpawnZ': nbtlib.tag.Int(-250),
            'SpawnAngle': nbtlib.tag.Float(0.0),
            'Difficulty': nbtlib.tag.Byte(2),  # Normal
            'DifficultyLocked': nbtlib.tag.Byte(0),
            'BorderCenterX': nbtlib.tag.Double(0.0),
            'BorderCenterZ': nbtlib.tag.Double(0.0),
            'BorderSize': nbtlib.tag.Double(2000.0),
            'BorderSizeLerpTarget': nbtlib.tag.Double(2000.0),
            'BorderSafeZone': nbtlib.tag.Double(5.0),
            'BorderWarningBlocks': nbtlib.tag.Double(5.0),
            'BorderWarningTime': nbtlib.tag.Double(15.0),
            'ClearWeatherTime': nbtlib.tag.Int(0),
            'RainTime': nbtlib.tag.Int(0),
            'Raining': nbtlib.tag.Byte(0),
            'Thundering': nbtlib.tag.Byte(0),
            'ThunderTime': nbtlib.tag.Int(0),
            'WanderingTraderSpawnChance': nbtlib.tag.Int(0),
            'WanderingTraderSpawnDelay': nbtlib.tag.Int(0),
            'WasModded': nbtlib.tag.Byte(1),
            'allowCommands': nbtlib.tag.Byte(1),
            'initialized': nbtlib.tag.Byte(1),
            'CustomBossEvents': nbtlib.tag.Compound({}),
            'DataPacks': nbtlib.tag.Compound({
                'Enabled': nbtlib.tag.List([nbtlib.tag.String('vanilla')]),
                'Disabled': nbtlib.tag.List([])
            }),
            'GameRules': nbtlib.tag.Compound({}),
            'Player': nbtlib.tag.Compound({}),
            'WorldGenSettings': nbtlib.tag.Compound({
                'bonus_chest': nbtlib.tag.Byte(0),
                'generate_features': nbtlib.tag.Byte(0),
                'seed': nbtlib.tag.Long(123456789),
                'dimensions': nbtlib.tag.Compound({
                    'minecraft:overworld': nbtlib.tag.Compound({
                        'type': nbtlib.tag.String('minecraft:overworld'),
                        'generator': nbtlib.tag.Compound({
                            'type': nbtlib.tag.String('minecraft:flat'),
                            'settings': nbtlib.tag.Compound({
                                'biome': nbtlib.tag.String('minecraft:the_void'),
                                'layers': nbtlib.tag.List([
                                    nbtlib.tag.Compound({
                                        'block': nbtlib.tag.String('minecraft:air'),
                                        'height': nbtlib.tag.Int(1)
                                    })
                                ]),
                                'structures': nbtlib.tag.Compound({
                                    'structures': nbtlib.tag.Compound({})
                                })
                            })
                        })
                    })
                })
            }),
            'ServerBrands': nbtlib.tag.List([nbtlib.tag.String('vanilla')]),
            'storage': nbtlib.tag.Compound({}),
        })
    })
    nbt_file = nbtlib.File(data)
    nbt_file.save(level_dat_path, gzipped=True)
    print(f"level.dat saved to {level_dat_path}")

    # Also create level.dat_old
    nbt_file.save(os.path.join(output_dir, "level.dat_old"), gzipped=True)

    # Create session.lock
    with open(os.path.join(output_dir, "session.lock"), "wb") as f:
        f.write(b'\x00\x00\x00\x00')

def main():
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    os.makedirs(REGION_DIR, exist_ok=True)

    regions_dict = {}
    for rx, rz in REGIONS:
        regions_dict[(rx,rz)] = generate_terrain_for_region(rx, rz)

    # Build structures - they will modify regions_dict
    # Mansion in region 0,0 (and possibly -1,0 etc? mansion at 0,0 is in 0,0 region)
    build_mansion(regions_dict[(0,0)])

    # Village at 200,200 in region 0,0
    build_village(regions_dict[(0,0)], 200, 200)

    # Tunnels and mines across regions
    build_tunnels_and_mines(regions_dict)

    # Forest
    build_forest(regions_dict)

    # Save regions
    for (rx,rz), region in regions_dict.items():
        path = os.path.join(REGION_DIR, f"r.{rx}.{rz}.mca")
        region.save(path)
        print(f"Saved region r.{rx}.{rz}.mca ({os.path.getsize(path)} bytes)")

    # Create level.dat
    create_level_dat(OUTPUT_DIR)

    # Create icon and other files
    # Create a README in world
    with open(os.path.join(OUTPUT_DIR, "README.txt"), "w", encoding="utf-8") as f:
        f.write("Nova Horror - Ravenshollow\n")
        f.write("مپ ترسناک - عمارت متروکه، روستای رها شده، تونل‌ها و معدن\n")
        f.write("Spawn at -250,-250 - Follow broken compass to mansion at 0,0\n")
        f.write("Story: Find Heart of Dread, save Elara\n")

    print("Java map generation complete!")

if __name__ == "__main__":
    main()
