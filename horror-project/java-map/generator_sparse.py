#!/usr/bin/env python3
"""
Sparse generator for Nova Horror Java map - only generates chunks needed for structures
Much faster
"""
import os, random, math
from anvil import Block, EmptyChunk, EmptySection, EmptyRegion
import nbtlib

OUTPUT_DIR = os.path.join(os.path.dirname(__file__), "world")
REGION_DIR = os.path.join(OUTPUT_DIR, "region")
REGIONS = [(-1,-1), (-1,0), (0,-1), (0,0)]

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
STONE_BRICKS = Block('minecraft','stone_bricks')
IRON_BARS = Block('minecraft','iron_bars')
COBWEB = Block('minecraft','cobweb')
CHEST = Block('minecraft','chest')
MOSSY_COBBLE = Block('minecraft','mossy_cobblestone')
RAIL = Block('minecraft','rail')

def get_region_coords(chunk_x, chunk_z):
    return chunk_x // 32, chunk_z // 32

def ensure_chunk(regions_dict, cx, cz):
    rx, rz = get_region_coords(cx, cz)
    if (rx,rz) not in regions_dict:
        regions_dict[(rx,rz)] = EmptyRegion(rx, rz)
    reg = regions_dict[(rx,rz)]
    chunk = reg.get_chunk(cx, cz)
    if chunk is None:
        chunk = EmptyChunk(cx, cz)
        reg.add_chunk(chunk)
    return reg, chunk

def ensure_section(chunk, sy):
    if sy < len(chunk.sections) and chunk.sections[sy] is not None:
        return chunk.sections[sy]
    sec = EmptySection(sy)
    chunk.add_section(sec)
    return sec

def set_block_fast(regions_dict, x, y, z, block):
    cx = x // 16
    cz = z // 16
    lx = x % 16
    lz = z % 16
    rx, rz = get_region_coords(cx, cz)
    if (rx,rz) not in regions_dict:
        regions_dict[(rx,rz)] = EmptyRegion(rx, rz)
    reg = regions_dict[(rx,rz)]
    chunk = reg.get_chunk(cx, cz)
    if chunk is None:
        chunk = EmptyChunk(cx, cz)
        reg.add_chunk(chunk)
    sy = y // 16
    sec = ensure_section(chunk, sy)
    sec.set_block(block, lx, y % 16, lz)

def fill_fast(regions_dict, block, x1, y1, z1, x2, y2, z2):
    x1, x2 = min(x1,x2), max(x1,x2)
    y1, y2 = min(y1,y2), max(y1,y2)
    z1, z2 = min(z1,z2), max(z1,z2)
    # iterate
    for x in range(x1, x2+1):
        for y in range(y1, y2+1):
            for z in range(z1, z2+1):
                set_block_fast(regions_dict, x, y, z, block)

def create_terrain_chunk(regions_dict, cx, cz):
    # Create chunk with stone up to 60, dirt 61-63, grass 64
    rx, rz = get_region_coords(cx, cz)
    if (rx,rz) not in regions_dict:
        regions_dict[(rx,rz)] = EmptyRegion(rx, rz)
    reg = regions_dict[(rx,rz)]
    try:
        chunk = reg.get_chunk(cx, cz)
    except:
        chunk = EmptyChunk(cx, cz)
        reg.add_chunk(chunk)
    # sections 0,1,2 stone
    for sy in [0,1,2]:
        sec = EmptySection(sy)
        sec.blocks = [STONE]*4096
        chunk.add_section(sec)
    # section 3: y 48-63, top 3 dirt
    sec3 = EmptySection(3)
    sec3.blocks = [STONE]*4096
    for x in range(16):
        for z in range(16):
            for ly in [13,14,15]:
                idx = ly*256 + z*16 + x
                sec3.blocks[idx] = DIRT
    chunk.add_section(sec3)
    # section 4: grass at 64
    sec4 = EmptySection(4)
    for x in range(16):
        for z in range(16):
            idx = 0*256 + z*16 + x
            sec4.blocks[idx] = GRASS
    chunk.add_section(sec4)

def build_mansion(regions_dict):
    print("Building mansion...")
    # foundation
    fill_fast(regions_dict, COBBLE, -40, 64, -30, 40, 64, 30)
    fill_fast(regions_dict, DARK_OAK_PLANKS, -39, 65, -29, 39, 65, 29)
    # outer walls
    for y in range(66, 80):
        fill_fast(regions_dict, STONE_BRICKS, -40, y, -30, 40, y, -30)
        fill_fast(regions_dict, STONE_BRICKS, -40, y, 30, 40, y, 30)
        fill_fast(regions_dict, STONE_BRICKS, -40, y, -30, -40, y, 30)
        fill_fast(regions_dict, STONE_BRICKS, 40, y, -30, 40, y, 30)
    # second floor
    fill_fast(regions_dict, DARK_OAK_PLANKS, -39, 80, -29, 39, 80, 29)
    for y in range(81, 90):
        fill_fast(regions_dict, STONE_BRICKS, -40, y, -30, 40, y, -30)
        fill_fast(regions_dict, STONE_BRICKS, -40, y, 30, 40, y, 30)
        fill_fast(regions_dict, STONE_BRICKS, -40, y, -30, -40, y, 30)
        fill_fast(regions_dict, STONE_BRICKS, 40, y, -30, 40, y, 30)
    # roof simple
    for y in range(90, 93):
        off = y-90
        fill_fast(regions_dict, DARK_OAK_PLANKS, -40+off, y, -30+off, 40-off, y, 30-off)
    # entrance
    fill_fast(regions_dict, None, -2, 66, -30, 2, 68, -30)
    # windows
    for x in [-30,-10,10,30]:
        fill_fast(regions_dict, IRON_BARS, x, 70, -30, x, 72, -30)
        fill_fast(regions_dict, IRON_BARS, x, 70, 30, x, 72, 30)
    # basement shaft
    for y in range(30, 65):
        fill_fast(regions_dict, None, -1, y, 1, 1, y, 3)
    # basement room
    fill_fast(regions_dict, None, -10, 30, -10, 10, 35, 10)
    fill_fast(regions_dict, STONE_BRICKS, -11, 29, -11, 11, 29, 11)
    fill_fast(regions_dict, STONE_BRICKS, -11, 36, -11, 11, 36, 11)
    fill_fast(regions_dict, STONE_BRICKS, -11, 30, -11, -11, 35, 11)
    fill_fast(regions_dict, STONE_BRICKS, 11, 30, -11, 11, 35, 11)
    fill_fast(regions_dict, STONE_BRICKS, -11, 30, -11, 11, 35, -11)
    fill_fast(regions_dict, STONE_BRICKS, -11, 30, 11, 11, 35, 11)
    set_block_fast(regions_dict, 0, 31, 0, CHEST)
    # cobwebs
    for _ in range(15):
        x = random.randint(-38,38)
        y = random.randint(66,85)
        z = random.randint(-28,28)
        set_block_fast(regions_dict, x, y, z, COBWEB)

def build_village(regions_dict, bx=200, bz=200):
    print("Village...")
    houses = [(0,0,8,6),(15,5,7,7),(-12,10,9,5),(10,-15,6,8),(-15,-12,8,8)]
    for hx,hz,w,d in houses:
        x1 = bx+hx
        z1 = bz+hz
        x2 = x1+w
        z2 = z1+d
        fill_fast(regions_dict, COBBLE, x1, 64, z1, x2, 64, z2)
        fill_fast(regions_dict, OAK_PLANKS, x1+1, 65, z1+1, x2-1, 65, z2-1)
        for y in range(66,70):
            fill_fast(regions_dict, OAK_LOG, x1, y, z1, x2, y, z1)
            fill_fast(regions_dict, OAK_LOG, x1, y, z2, x2, y, z2)
            fill_fast(regions_dict, OAK_LOG, x1, y, z1, x1, y, z2)
            fill_fast(regions_dict, OAK_LOG, x2, y, z1, x2, y, z2)
        fill_fast(regions_dict, DARK_OAK_PLANKS, x1, 70, z1, x2, 70, z2)
        fill_fast(regions_dict, None, x1+w//2, 66, z1, x1+w//2, 67, z1)
        set_block_fast(regions_dict, x1+1, 66, z1+2, CHEST)
    # well
    fill_fast(regions_dict, COBBLE, bx-2, 64, bz-2, bx+2, 68, bz+2)
    fill_fast(regions_dict, None, bx-1, 65, bz-1, bx+1, 67, bz+1)
    fill_fast(regions_dict, None, bx, 20, bz, bx, 64, bz)
    set_block_fast(regions_dict, bx, 21, bz, CHEST)

def build_tunnels(regions_dict):
    print("Tunnels...")
    points = [(0,25,0),(50,22,50),(120,20,120),(200,20,200)]
    for i in range(len(points)-1):
        x1,y1,z1 = points[i]
        x2,y2,z2 = points[i+1]
        steps = max(abs(x2-x1), abs(z2-z1))
        for s in range(steps+1):
            t = s/steps if steps else 0
            x = int(x1 + (x2-x1)*t + random.randint(-1,1))
            y = int(y1 + (y2-y1)*t)
            z = int(z1 + (z2-z1)*t + random.randint(-1,1))
            for dx in [-1,0,1]:
                for dy in [-1,0,1]:
                    for dz in [-1,0,1]:
                        if abs(dx)+abs(dy)+abs(dz) >2:
                            continue
                        set_block_fast(regions_dict, x+dx, y+dy, z+dz, None)
                        if dy==-1 and random.random()<0.05:
                            set_block_fast(regions_dict, x+dx, y+dy, z+dz, RAIL)
    # mine chambers
    for _ in range(4):
        bx = random.randint(30,170)
        bz = random.randint(30,170)
        by = random.randint(15,25)
        fill_fast(regions_dict, None, bx-4, by-2, bz-4, bx+4, by+2, bz+4)
        set_block_fast(regions_dict, bx, by-1, bz, CHEST)

def build_forest(regions_dict):
    print("Forest...")
    for _ in range(80):
        x = random.randint(-250,250)
        z = random.randint(-250,250)
        if -50 < x < 90 and -40 < z < 70:
            continue
        if 180 < x < 230 and 180 < z < 230:
            continue
        y = 65
        h = random.randint(4,6)
        for dy in range(h):
            set_block_fast(regions_dict, x, y+dy, z, DARK_OAK_LOG if random.random()<0.6 else OAK_LOG)
        for dx in range(-2,3):
            for dy in range(0,2):
                for dz in range(-2,3):
                    if abs(dx)==2 and abs(dz)==2:
                        continue
                    if random.random()<0.7:
                        set_block_fast(regions_dict, x+dx, y+h+dy, z+dz, DARK_OAK_LEAVES)

def create_level_dat(output_dir):
    print("level.dat...")
    # Simplified level.dat for 1.20.1 with default generator (so empty chunks generate naturally)
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
            'GameType': nbtlib.tag.Int(0),
            'Time': nbtlib.tag.Long(18000),
            'DayTime': nbtlib.tag.Long(18000),
            'SpawnX': nbtlib.tag.Int(-250),
            'SpawnY': nbtlib.tag.Int(70),
            'SpawnZ': nbtlib.tag.Int(-250),
            'Difficulty': nbtlib.tag.Byte(2),
            'BorderCenterX': nbtlib.tag.Double(0.0),
            'BorderCenterZ': nbtlib.tag.Double(0.0),
            'BorderSize': nbtlib.tag.Double(2000.0),
            'GameRules': nbtlib.tag.Compound({
                'doDaylightCycle': nbtlib.tag.String('false'),
                'doWeatherCycle': nbtlib.tag.String('false'),
            }),
            'WorldGenSettings': nbtlib.tag.Compound({
                'bonus_chest': nbtlib.tag.Byte(0),
                'generate_features': nbtlib.tag.Byte(0),
                'seed': nbtlib.tag.Long(123456789),
                'dimensions': nbtlib.tag.Compound({
                    'minecraft:overworld': nbtlib.tag.Compound({
                        'type': nbtlib.tag.String('minecraft:overworld'),
                        'generator': nbtlib.tag.Compound({
                            'type': nbtlib.tag.String('minecraft:noise'),
                            'biome_source': nbtlib.tag.Compound({
                                'type': nbtlib.tag.String('minecraft:multi_noise'),
                            }),
                            'settings': nbtlib.tag.String('minecraft:overworld')
                        })
                    })
                })
            }),
            'allowCommands': nbtlib.tag.Byte(1),
            'initialized': nbtlib.tag.Byte(1),
        })
    })
    nbt_file = nbtlib.File(data)
    nbt_file.save(os.path.join(output_dir, "level.dat"), gzipped=True)
    nbt_file.save(os.path.join(output_dir, "level.dat_old"), gzipped=True)
    with open(os.path.join(output_dir, "session.lock"), "wb") as f:
        f.write(b'\x00\x00\x00\x00')

def main():
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    os.makedirs(REGION_DIR, exist_ok=True)
    regions_dict = {}

    # Pre-create terrain for needed chunks
    needed_chunks = set()
    # Mansion area chunks
    for x in range(-40, 80, 16):
        for z in range(-30, 60, 16):
            needed_chunks.add((x//16, z//16))
    # Village area
    for x in range(185, 235, 16):
        for z in range(185, 235, 16):
            needed_chunks.add((x//16, z//16))
    # Tunnel path
    for i in range(0, 200, 8):
        needed_chunks.add((i//16, i//16))
    # Forest random
    for _ in range(80):
        x = random.randint(-250,250)
        z = random.randint(-250,250)
        needed_chunks.add((x//16, z//16))
    # Also spawn area
    for x in range(-260, -200, 16):
        for z in range(-260, -200, 16):
            needed_chunks.add((x//16, z//16))

    print(f"Generating {len(needed_chunks)} chunks terrain...")
    for cx, cz in needed_chunks:
        # create terrain chunk
        rx, rz = get_region_coords(cx, cz)
        if (rx,rz) not in regions_dict:
            regions_dict[(rx,rz)] = EmptyRegion(rx, rz)
        reg = regions_dict[(rx,rz)]
        chunk = reg.get_chunk(cx, cz)
        if chunk is None:
            chunk = EmptyChunk(cx, cz)
            reg.add_chunk(chunk)
        # sections
        for sy in [0,1,2]:
            sec = EmptySection(sy)
            sec.blocks = [STONE]*4096
            chunk.add_section(sec)
        sec3 = EmptySection(3)
        sec3.blocks = [STONE]*4096
        for x in range(16):
            for z in range(16):
                for ly in [13,14,15]:
                    idx = ly*256 + z*16 + x
                    sec3.blocks[idx] = DIRT
        chunk.add_section(sec3)
        sec4 = EmptySection(4)
        for x in range(16):
            for z in range(16):
                idx = 0*256 + z*16 + x
                sec4.blocks[idx] = GRASS
        chunk.add_section(sec4)

    build_mansion(regions_dict)
    build_village(regions_dict)
    build_tunnels(regions_dict)
    build_forest(regions_dict)

    for (rx,rz), reg in regions_dict.items():
        path = os.path.join(REGION_DIR, f"r.{rx}.{rz}.mca")
        reg.save(path)
        print(f"Saved r.{rx}.{rz}.mca {os.path.getsize(path)} bytes with {len(reg.chunks)} chunks")

    create_level_dat(OUTPUT_DIR)
    with open(os.path.join(OUTPUT_DIR, "README.txt"), "w", encoding="utf-8") as f:
        f.write("Nova Horror - Ravenshollow\nSpawn -250,-250\nMansion 0,0\nVillage 200,200\n")

    print("Done!")

if __name__ == "__main__":
    main()
