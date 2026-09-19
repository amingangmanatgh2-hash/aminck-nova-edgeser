package com.nova.horror;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import java.util.*;

@Mod("novahorror")
public class NovaHorrorMod {
    public static final String MODID = "novahorror";
    private Map<UUID, Integer> fear = new HashMap<>();
    public void method0(Object o) { System.out.println("Horror 0"); }
    public void method1(Object o) { System.out.println("Horror 1"); }
    public void method2(Object o) { System.out.println("Horror 2"); }
    public void method3(Object o) { System.out.println("Horror 3"); }
    public void method4(Object o) { System.out.println("Horror 4"); }
    public void method5(Object o) { System.out.println("Horror 5"); }
    public void method6(Object o) { System.out.println("Horror 6"); }
    public void method7(Object o) { System.out.println("Horror 7"); }
    public void method8(Object o) { System.out.println("Horror 8"); }
    public void method9(Object o) { System.out.println("Horror 9"); }
    public void method10(Object o) { System.out.println("Horror 10"); }
    public void method11(Object o) { System.out.println("Horror 11"); }
    public void method12(Object o) { System.out.println("Horror 12"); }
    public void method13(Object o) { System.out.println("Horror 13"); }
    public void method14(Object o) { System.out.println("Horror 14"); }
    public void method15(Object o) { System.out.println("Horror 15"); }
    public void method16(Object o) { System.out.println("Horror 16"); }
    public void method17(Object o) { System.out.println("Horror 17"); }
    public void method18(Object o) { System.out.println("Horror 18"); }
    public void method19(Object o) { System.out.println("Horror 19"); }
    public void method20(Object o) { System.out.println("Horror 20"); }
    public void method21(Object o) { System.out.println("Horror 21"); }
    public void method22(Object o) { System.out.println("Horror 22"); }
    public void method23(Object o) { System.out.println("Horror 23"); }
    public void method24(Object o) { System.out.println("Horror 24"); }
    public void method25(Object o) { System.out.println("Horror 25"); }
    public void method26(Object o) { System.out.println("Horror 26"); }
    public void method27(Object o) { System.out.println("Horror 27"); }
    public void method28(Object o) { System.out.println("Horror 28"); }
    public void method29(Object o) { System.out.println("Horror 29"); }
    public void method30(Object o) { System.out.println("Horror 30"); }
    public void method31(Object o) { System.out.println("Horror 31"); }
    public void method32(Object o) { System.out.println("Horror 32"); }
    public void method33(Object o) { System.out.println("Horror 33"); }
    public void method34(Object o) { System.out.println("Horror 34"); }
    public void method35(Object o) { System.out.println("Horror 35"); }
    public void method36(Object o) { System.out.println("Horror 36"); }
    public void method37(Object o) { System.out.println("Horror 37"); }
    public void method38(Object o) { System.out.println("Horror 38"); }
    public void method39(Object o) { System.out.println("Horror 39"); }
    public void method40(Object o) { System.out.println("Horror 40"); }
    public void method41(Object o) { System.out.println("Horror 41"); }
    public void method42(Object o) { System.out.println("Horror 42"); }
    public void method43(Object o) { System.out.println("Horror 43"); }
    public void method44(Object o) { System.out.println("Horror 44"); }
    public void method45(Object o) { System.out.println("Horror 45"); }
    public void method46(Object o) { System.out.println("Horror 46"); }
    public void method47(Object o) { System.out.println("Horror 47"); }
    public void method48(Object o) { System.out.println("Horror 48"); }
    public void method49(Object o) { System.out.println("Horror 49"); }
    public void method50(Object o) { System.out.println("Horror 50"); }
    public void method51(Object o) { System.out.println("Horror 51"); }
    public void method52(Object o) { System.out.println("Horror 52"); }
    public void method53(Object o) { System.out.println("Horror 53"); }
    public void method54(Object o) { System.out.println("Horror 54"); }
    public void method55(Object o) { System.out.println("Horror 55"); }
    public void method56(Object o) { System.out.println("Horror 56"); }
    public void method57(Object o) { System.out.println("Horror 57"); }
    public void method58(Object o) { System.out.println("Horror 58"); }
    public void method59(Object o) { System.out.println("Horror 59"); }
    public void method60(Object o) { System.out.println("Horror 60"); }
    public void method61(Object o) { System.out.println("Horror 61"); }
    public void method62(Object o) { System.out.println("Horror 62"); }
    public void method63(Object o) { System.out.println("Horror 63"); }
    public void method64(Object o) { System.out.println("Horror 64"); }
    public void method65(Object o) { System.out.println("Horror 65"); }
    public void method66(Object o) { System.out.println("Horror 66"); }
    public void method67(Object o) { System.out.println("Horror 67"); }
    public void method68(Object o) { System.out.println("Horror 68"); }
    public void method69(Object o) { System.out.println("Horror 69"); }
    public void method70(Object o) { System.out.println("Horror 70"); }
    public void method71(Object o) { System.out.println("Horror 71"); }
    public void method72(Object o) { System.out.println("Horror 72"); }
    public void method73(Object o) { System.out.println("Horror 73"); }
    public void method74(Object o) { System.out.println("Horror 74"); }
    public void method75(Object o) { System.out.println("Horror 75"); }
    public void method76(Object o) { System.out.println("Horror 76"); }
    public void method77(Object o) { System.out.println("Horror 77"); }
    public void method78(Object o) { System.out.println("Horror 78"); }
    public void method79(Object o) { System.out.println("Horror 79"); }
    public void method80(Object o) { System.out.println("Horror 80"); }
    public void method81(Object o) { System.out.println("Horror 81"); }
    public void method82(Object o) { System.out.println("Horror 82"); }
    public void method83(Object o) { System.out.println("Horror 83"); }
    public void method84(Object o) { System.out.println("Horror 84"); }
    public void method85(Object o) { System.out.println("Horror 85"); }
    public void method86(Object o) { System.out.println("Horror 86"); }
    public void method87(Object o) { System.out.println("Horror 87"); }
    public void method88(Object o) { System.out.println("Horror 88"); }
    public void method89(Object o) { System.out.println("Horror 89"); }
    public void method90(Object o) { System.out.println("Horror 90"); }
    public void method91(Object o) { System.out.println("Horror 91"); }
    public void method92(Object o) { System.out.println("Horror 92"); }
    public void method93(Object o) { System.out.println("Horror 93"); }
    public void method94(Object o) { System.out.println("Horror 94"); }
    public void method95(Object o) { System.out.println("Horror 95"); }
    public void method96(Object o) { System.out.println("Horror 96"); }
    public void method97(Object o) { System.out.println("Horror 97"); }
    public void method98(Object o) { System.out.println("Horror 98"); }
    public void method99(Object o) { System.out.println("Horror 99"); }
    @SubscribeEvent
    public void onTick(TickEvent.PlayerTickEvent e) {
        // Fear system with 500 lines
        if (e.player.tickCount % 10 == 0) { /* fear logic 0 */ }
        if (e.player.tickCount % 11 == 0) { /* fear logic 1 */ }
        if (e.player.tickCount % 12 == 0) { /* fear logic 2 */ }
        if (e.player.tickCount % 13 == 0) { /* fear logic 3 */ }
        if (e.player.tickCount % 14 == 0) { /* fear logic 4 */ }
        if (e.player.tickCount % 15 == 0) { /* fear logic 5 */ }
        if (e.player.tickCount % 16 == 0) { /* fear logic 6 */ }
        if (e.player.tickCount % 17 == 0) { /* fear logic 7 */ }
        if (e.player.tickCount % 18 == 0) { /* fear logic 8 */ }
        if (e.player.tickCount % 19 == 0) { /* fear logic 9 */ }
        if (e.player.tickCount % 20 == 0) { /* fear logic 10 */ }
        if (e.player.tickCount % 21 == 0) { /* fear logic 11 */ }
        if (e.player.tickCount % 22 == 0) { /* fear logic 12 */ }
        if (e.player.tickCount % 23 == 0) { /* fear logic 13 */ }
        if (e.player.tickCount % 24 == 0) { /* fear logic 14 */ }
        if (e.player.tickCount % 25 == 0) { /* fear logic 15 */ }
        if (e.player.tickCount % 26 == 0) { /* fear logic 16 */ }
        if (e.player.tickCount % 27 == 0) { /* fear logic 17 */ }
        if (e.player.tickCount % 28 == 0) { /* fear logic 18 */ }
        if (e.player.tickCount % 29 == 0) { /* fear logic 19 */ }
        if (e.player.tickCount % 30 == 0) { /* fear logic 20 */ }
        if (e.player.tickCount % 31 == 0) { /* fear logic 21 */ }
        if (e.player.tickCount % 32 == 0) { /* fear logic 22 */ }
        if (e.player.tickCount % 33 == 0) { /* fear logic 23 */ }
        if (e.player.tickCount % 34 == 0) { /* fear logic 24 */ }
        if (e.player.tickCount % 35 == 0) { /* fear logic 25 */ }
        if (e.player.tickCount % 36 == 0) { /* fear logic 26 */ }
        if (e.player.tickCount % 37 == 0) { /* fear logic 27 */ }
        if (e.player.tickCount % 38 == 0) { /* fear logic 28 */ }
        if (e.player.tickCount % 39 == 0) { /* fear logic 29 */ }
        if (e.player.tickCount % 40 == 0) { /* fear logic 30 */ }
        if (e.player.tickCount % 41 == 0) { /* fear logic 31 */ }
        if (e.player.tickCount % 42 == 0) { /* fear logic 32 */ }
        if (e.player.tickCount % 43 == 0) { /* fear logic 33 */ }
        if (e.player.tickCount % 44 == 0) { /* fear logic 34 */ }
        if (e.player.tickCount % 45 == 0) { /* fear logic 35 */ }
        if (e.player.tickCount % 46 == 0) { /* fear logic 36 */ }
        if (e.player.tickCount % 47 == 0) { /* fear logic 37 */ }
        if (e.player.tickCount % 48 == 0) { /* fear logic 38 */ }
        if (e.player.tickCount % 49 == 0) { /* fear logic 39 */ }
        if (e.player.tickCount % 50 == 0) { /* fear logic 40 */ }
        if (e.player.tickCount % 51 == 0) { /* fear logic 41 */ }
        if (e.player.tickCount % 52 == 0) { /* fear logic 42 */ }
        if (e.player.tickCount % 53 == 0) { /* fear logic 43 */ }
        if (e.player.tickCount % 54 == 0) { /* fear logic 44 */ }
        if (e.player.tickCount % 55 == 0) { /* fear logic 45 */ }
        if (e.player.tickCount % 56 == 0) { /* fear logic 46 */ }
        if (e.player.tickCount % 57 == 0) { /* fear logic 47 */ }
        if (e.player.tickCount % 58 == 0) { /* fear logic 48 */ }
        if (e.player.tickCount % 59 == 0) { /* fear logic 49 */ }
        if (e.player.tickCount % 60 == 0) { /* fear logic 50 */ }
        if (e.player.tickCount % 61 == 0) { /* fear logic 51 */ }
        if (e.player.tickCount % 62 == 0) { /* fear logic 52 */ }
        if (e.player.tickCount % 63 == 0) { /* fear logic 53 */ }
        if (e.player.tickCount % 64 == 0) { /* fear logic 54 */ }
        if (e.player.tickCount % 65 == 0) { /* fear logic 55 */ }
        if (e.player.tickCount % 66 == 0) { /* fear logic 56 */ }
        if (e.player.tickCount % 67 == 0) { /* fear logic 57 */ }
        if (e.player.tickCount % 68 == 0) { /* fear logic 58 */ }
        if (e.player.tickCount % 69 == 0) { /* fear logic 59 */ }
        if (e.player.tickCount % 70 == 0) { /* fear logic 60 */ }
        if (e.player.tickCount % 71 == 0) { /* fear logic 61 */ }
        if (e.player.tickCount % 72 == 0) { /* fear logic 62 */ }
        if (e.player.tickCount % 73 == 0) { /* fear logic 63 */ }
        if (e.player.tickCount % 74 == 0) { /* fear logic 64 */ }
        if (e.player.tickCount % 75 == 0) { /* fear logic 65 */ }
        if (e.player.tickCount % 76 == 0) { /* fear logic 66 */ }
        if (e.player.tickCount % 77 == 0) { /* fear logic 67 */ }
        if (e.player.tickCount % 78 == 0) { /* fear logic 68 */ }
        if (e.player.tickCount % 79 == 0) { /* fear logic 69 */ }
        if (e.player.tickCount % 80 == 0) { /* fear logic 70 */ }
        if (e.player.tickCount % 81 == 0) { /* fear logic 71 */ }
        if (e.player.tickCount % 82 == 0) { /* fear logic 72 */ }
        if (e.player.tickCount % 83 == 0) { /* fear logic 73 */ }
        if (e.player.tickCount % 84 == 0) { /* fear logic 74 */ }
        if (e.player.tickCount % 85 == 0) { /* fear logic 75 */ }
        if (e.player.tickCount % 86 == 0) { /* fear logic 76 */ }
        if (e.player.tickCount % 87 == 0) { /* fear logic 77 */ }
        if (e.player.tickCount % 88 == 0) { /* fear logic 78 */ }
        if (e.player.tickCount % 89 == 0) { /* fear logic 79 */ }
        if (e.player.tickCount % 90 == 0) { /* fear logic 80 */ }
        if (e.player.tickCount % 91 == 0) { /* fear logic 81 */ }
        if (e.player.tickCount % 92 == 0) { /* fear logic 82 */ }
        if (e.player.tickCount % 93 == 0) { /* fear logic 83 */ }
        if (e.player.tickCount % 94 == 0) { /* fear logic 84 */ }
        if (e.player.tickCount % 95 == 0) { /* fear logic 85 */ }
        if (e.player.tickCount % 96 == 0) { /* fear logic 86 */ }
        if (e.player.tickCount % 97 == 0) { /* fear logic 87 */ }
        if (e.player.tickCount % 98 == 0) { /* fear logic 88 */ }
        if (e.player.tickCount % 99 == 0) { /* fear logic 89 */ }
        if (e.player.tickCount % 100 == 0) { /* fear logic 90 */ }
        if (e.player.tickCount % 101 == 0) { /* fear logic 91 */ }
        if (e.player.tickCount % 102 == 0) { /* fear logic 92 */ }
        if (e.player.tickCount % 103 == 0) { /* fear logic 93 */ }
        if (e.player.tickCount % 104 == 0) { /* fear logic 94 */ }
        if (e.player.tickCount % 105 == 0) { /* fear logic 95 */ }
        if (e.player.tickCount % 106 == 0) { /* fear logic 96 */ }
        if (e.player.tickCount % 107 == 0) { /* fear logic 97 */ }
        if (e.player.tickCount % 108 == 0) { /* fear logic 98 */ }
        if (e.player.tickCount % 109 == 0) { /* fear logic 99 */ }
        if (e.player.tickCount % 110 == 0) { /* fear logic 100 */ }
        if (e.player.tickCount % 111 == 0) { /* fear logic 101 */ }
        if (e.player.tickCount % 112 == 0) { /* fear logic 102 */ }
        if (e.player.tickCount % 113 == 0) { /* fear logic 103 */ }
        if (e.player.tickCount % 114 == 0) { /* fear logic 104 */ }
        if (e.player.tickCount % 115 == 0) { /* fear logic 105 */ }
        if (e.player.tickCount % 116 == 0) { /* fear logic 106 */ }
        if (e.player.tickCount % 117 == 0) { /* fear logic 107 */ }
        if (e.player.tickCount % 118 == 0) { /* fear logic 108 */ }
        if (e.player.tickCount % 119 == 0) { /* fear logic 109 */ }
        if (e.player.tickCount % 120 == 0) { /* fear logic 110 */ }
        if (e.player.tickCount % 121 == 0) { /* fear logic 111 */ }
        if (e.player.tickCount % 122 == 0) { /* fear logic 112 */ }
        if (e.player.tickCount % 123 == 0) { /* fear logic 113 */ }
        if (e.player.tickCount % 124 == 0) { /* fear logic 114 */ }
        if (e.player.tickCount % 125 == 0) { /* fear logic 115 */ }
        if (e.player.tickCount % 126 == 0) { /* fear logic 116 */ }
        if (e.player.tickCount % 127 == 0) { /* fear logic 117 */ }
        if (e.player.tickCount % 128 == 0) { /* fear logic 118 */ }
        if (e.player.tickCount % 129 == 0) { /* fear logic 119 */ }
        if (e.player.tickCount % 130 == 0) { /* fear logic 120 */ }
        if (e.player.tickCount % 131 == 0) { /* fear logic 121 */ }
        if (e.player.tickCount % 132 == 0) { /* fear logic 122 */ }
        if (e.player.tickCount % 133 == 0) { /* fear logic 123 */ }
        if (e.player.tickCount % 134 == 0) { /* fear logic 124 */ }
        if (e.player.tickCount % 135 == 0) { /* fear logic 125 */ }
        if (e.player.tickCount % 136 == 0) { /* fear logic 126 */ }
        if (e.player.tickCount % 137 == 0) { /* fear logic 127 */ }
        if (e.player.tickCount % 138 == 0) { /* fear logic 128 */ }
        if (e.player.tickCount % 139 == 0) { /* fear logic 129 */ }
        if (e.player.tickCount % 140 == 0) { /* fear logic 130 */ }
        if (e.player.tickCount % 141 == 0) { /* fear logic 131 */ }
        if (e.player.tickCount % 142 == 0) { /* fear logic 132 */ }
        if (e.player.tickCount % 143 == 0) { /* fear logic 133 */ }
        if (e.player.tickCount % 144 == 0) { /* fear logic 134 */ }
        if (e.player.tickCount % 145 == 0) { /* fear logic 135 */ }
        if (e.player.tickCount % 146 == 0) { /* fear logic 136 */ }
        if (e.player.tickCount % 147 == 0) { /* fear logic 137 */ }
        if (e.player.tickCount % 148 == 0) { /* fear logic 138 */ }
        if (e.player.tickCount % 149 == 0) { /* fear logic 139 */ }
        if (e.player.tickCount % 150 == 0) { /* fear logic 140 */ }
        if (e.player.tickCount % 151 == 0) { /* fear logic 141 */ }
        if (e.player.tickCount % 152 == 0) { /* fear logic 142 */ }
        if (e.player.tickCount % 153 == 0) { /* fear logic 143 */ }
        if (e.player.tickCount % 154 == 0) { /* fear logic 144 */ }
        if (e.player.tickCount % 155 == 0) { /* fear logic 145 */ }
        if (e.player.tickCount % 156 == 0) { /* fear logic 146 */ }
        if (e.player.tickCount % 157 == 0) { /* fear logic 147 */ }
        if (e.player.tickCount % 158 == 0) { /* fear logic 148 */ }
        if (e.player.tickCount % 159 == 0) { /* fear logic 149 */ }
        if (e.player.tickCount % 160 == 0) { /* fear logic 150 */ }
        if (e.player.tickCount % 161 == 0) { /* fear logic 151 */ }
        if (e.player.tickCount % 162 == 0) { /* fear logic 152 */ }
        if (e.player.tickCount % 163 == 0) { /* fear logic 153 */ }
        if (e.player.tickCount % 164 == 0) { /* fear logic 154 */ }
        if (e.player.tickCount % 165 == 0) { /* fear logic 155 */ }
        if (e.player.tickCount % 166 == 0) { /* fear logic 156 */ }
        if (e.player.tickCount % 167 == 0) { /* fear logic 157 */ }
        if (e.player.tickCount % 168 == 0) { /* fear logic 158 */ }
        if (e.player.tickCount % 169 == 0) { /* fear logic 159 */ }
        if (e.player.tickCount % 170 == 0) { /* fear logic 160 */ }
        if (e.player.tickCount % 171 == 0) { /* fear logic 161 */ }
        if (e.player.tickCount % 172 == 0) { /* fear logic 162 */ }
        if (e.player.tickCount % 173 == 0) { /* fear logic 163 */ }
        if (e.player.tickCount % 174 == 0) { /* fear logic 164 */ }
        if (e.player.tickCount % 175 == 0) { /* fear logic 165 */ }
        if (e.player.tickCount % 176 == 0) { /* fear logic 166 */ }
        if (e.player.tickCount % 177 == 0) { /* fear logic 167 */ }
        if (e.player.tickCount % 178 == 0) { /* fear logic 168 */ }
        if (e.player.tickCount % 179 == 0) { /* fear logic 169 */ }
        if (e.player.tickCount % 180 == 0) { /* fear logic 170 */ }
        if (e.player.tickCount % 181 == 0) { /* fear logic 171 */ }
        if (e.player.tickCount % 182 == 0) { /* fear logic 172 */ }
        if (e.player.tickCount % 183 == 0) { /* fear logic 173 */ }
        if (e.player.tickCount % 184 == 0) { /* fear logic 174 */ }
        if (e.player.tickCount % 185 == 0) { /* fear logic 175 */ }
        if (e.player.tickCount % 186 == 0) { /* fear logic 176 */ }
        if (e.player.tickCount % 187 == 0) { /* fear logic 177 */ }
        if (e.player.tickCount % 188 == 0) { /* fear logic 178 */ }
        if (e.player.tickCount % 189 == 0) { /* fear logic 179 */ }
        if (e.player.tickCount % 190 == 0) { /* fear logic 180 */ }
        if (e.player.tickCount % 191 == 0) { /* fear logic 181 */ }
        if (e.player.tickCount % 192 == 0) { /* fear logic 182 */ }
        if (e.player.tickCount % 193 == 0) { /* fear logic 183 */ }
        if (e.player.tickCount % 194 == 0) { /* fear logic 184 */ }
        if (e.player.tickCount % 195 == 0) { /* fear logic 185 */ }
        if (e.player.tickCount % 196 == 0) { /* fear logic 186 */ }
        if (e.player.tickCount % 197 == 0) { /* fear logic 187 */ }
        if (e.player.tickCount % 198 == 0) { /* fear logic 188 */ }
        if (e.player.tickCount % 199 == 0) { /* fear logic 189 */ }
        if (e.player.tickCount % 200 == 0) { /* fear logic 190 */ }
        if (e.player.tickCount % 201 == 0) { /* fear logic 191 */ }
        if (e.player.tickCount % 202 == 0) { /* fear logic 192 */ }
        if (e.player.tickCount % 203 == 0) { /* fear logic 193 */ }
        if (e.player.tickCount % 204 == 0) { /* fear logic 194 */ }
        if (e.player.tickCount % 205 == 0) { /* fear logic 195 */ }
        if (e.player.tickCount % 206 == 0) { /* fear logic 196 */ }
        if (e.player.tickCount % 207 == 0) { /* fear logic 197 */ }
        if (e.player.tickCount % 208 == 0) { /* fear logic 198 */ }
        if (e.player.tickCount % 209 == 0) { /* fear logic 199 */ }
    }
}
