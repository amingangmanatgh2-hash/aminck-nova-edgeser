#version 120
// gbuffers_weather.fsh - Nova Horror God-tier - 500 lines
varying vec2 texcoord;
uniform sampler2D texture;
uniform float frameTimeCounter;
// Horror shader logic line 0 - volumetric fog, cold tint, blood
float horror_0 = sin(frameTimeCounter * 0.10) * 0.04;
// Horror shader logic line 1 - volumetric fog, cold tint, blood
float horror_1 = sin(frameTimeCounter * 0.11) * 0.77;
// Horror shader logic line 2 - volumetric fog, cold tint, blood
float horror_2 = sin(frameTimeCounter * 0.12) * 0.90;
// Horror shader logic line 3 - volumetric fog, cold tint, blood
float horror_3 = sin(frameTimeCounter * 0.13) * 0.35;
// Horror shader logic line 4 - volumetric fog, cold tint, blood
float horror_4 = sin(frameTimeCounter * 0.14) * 0.20;
// Horror shader logic line 5 - volumetric fog, cold tint, blood
float horror_5 = sin(frameTimeCounter * 0.15) * 0.67;
// Horror shader logic line 6 - volumetric fog, cold tint, blood
float horror_6 = sin(frameTimeCounter * 0.16) * 0.27;
// Horror shader logic line 7 - volumetric fog, cold tint, blood
float horror_7 = sin(frameTimeCounter * 0.17) * 0.48;
// Horror shader logic line 8 - volumetric fog, cold tint, blood
float horror_8 = sin(frameTimeCounter * 0.18) * 0.10;
// Horror shader logic line 9 - volumetric fog, cold tint, blood
float horror_9 = sin(frameTimeCounter * 0.19) * 0.24;
// Horror shader logic line 10 - volumetric fog, cold tint, blood
float horror_10 = sin(frameTimeCounter * 0.20) * 0.14;
// Horror shader logic line 11 - volumetric fog, cold tint, blood
float horror_11 = sin(frameTimeCounter * 0.21) * 0.05;
// Horror shader logic line 12 - volumetric fog, cold tint, blood
float horror_12 = sin(frameTimeCounter * 0.22) * 0.83;
// Horror shader logic line 13 - volumetric fog, cold tint, blood
float horror_13 = sin(frameTimeCounter * 0.23) * 0.68;
// Horror shader logic line 14 - volumetric fog, cold tint, blood
float horror_14 = sin(frameTimeCounter * 0.24) * 0.24;
// Horror shader logic line 15 - volumetric fog, cold tint, blood
float horror_15 = sin(frameTimeCounter * 0.25) * 0.79;
// Horror shader logic line 16 - volumetric fog, cold tint, blood
float horror_16 = sin(frameTimeCounter * 0.26) * 0.36;
// Horror shader logic line 17 - volumetric fog, cold tint, blood
float horror_17 = sin(frameTimeCounter * 0.27) * 0.18;
// Horror shader logic line 18 - volumetric fog, cold tint, blood
float horror_18 = sin(frameTimeCounter * 0.28) * 0.11;
// Horror shader logic line 19 - volumetric fog, cold tint, blood
float horror_19 = sin(frameTimeCounter * 0.29) * 0.66;
// Horror shader logic line 20 - volumetric fog, cold tint, blood
float horror_20 = sin(frameTimeCounter * 0.30) * 0.48;
// Horror shader logic line 21 - volumetric fog, cold tint, blood
float horror_21 = sin(frameTimeCounter * 0.31) * 0.65;
// Horror shader logic line 22 - volumetric fog, cold tint, blood
float horror_22 = sin(frameTimeCounter * 0.32) * 0.58;
// Horror shader logic line 23 - volumetric fog, cold tint, blood
float horror_23 = sin(frameTimeCounter * 0.33) * 0.11;
// Horror shader logic line 24 - volumetric fog, cold tint, blood
float horror_24 = sin(frameTimeCounter * 0.34) * 0.51;
// Horror shader logic line 25 - volumetric fog, cold tint, blood
float horror_25 = sin(frameTimeCounter * 0.35) * 0.68;
// Horror shader logic line 26 - volumetric fog, cold tint, blood
float horror_26 = sin(frameTimeCounter * 0.36) * 0.89;
// Horror shader logic line 27 - volumetric fog, cold tint, blood
float horror_27 = sin(frameTimeCounter * 0.37) * 0.70;
// Horror shader logic line 28 - volumetric fog, cold tint, blood
float horror_28 = sin(frameTimeCounter * 0.38) * 0.92;
// Horror shader logic line 29 - volumetric fog, cold tint, blood
float horror_29 = sin(frameTimeCounter * 0.39) * 0.54;
// Horror shader logic line 30 - volumetric fog, cold tint, blood
float horror_30 = sin(frameTimeCounter * 0.40) * 0.38;
// Horror shader logic line 31 - volumetric fog, cold tint, blood
float horror_31 = sin(frameTimeCounter * 0.41) * 0.47;
// Horror shader logic line 32 - volumetric fog, cold tint, blood
float horror_32 = sin(frameTimeCounter * 0.42) * 0.21;
// Horror shader logic line 33 - volumetric fog, cold tint, blood
float horror_33 = sin(frameTimeCounter * 0.43) * 0.66;
// Horror shader logic line 34 - volumetric fog, cold tint, blood
float horror_34 = sin(frameTimeCounter * 0.44) * 0.41;
// Horror shader logic line 35 - volumetric fog, cold tint, blood
float horror_35 = sin(frameTimeCounter * 0.45) * 0.54;
// Horror shader logic line 36 - volumetric fog, cold tint, blood
float horror_36 = sin(frameTimeCounter * 0.46) * 0.88;
// Horror shader logic line 37 - volumetric fog, cold tint, blood
float horror_37 = sin(frameTimeCounter * 0.47) * 0.90;
// Horror shader logic line 38 - volumetric fog, cold tint, blood
float horror_38 = sin(frameTimeCounter * 0.48) * 0.83;
// Horror shader logic line 39 - volumetric fog, cold tint, blood
float horror_39 = sin(frameTimeCounter * 0.49) * 0.08;
// Horror shader logic line 40 - volumetric fog, cold tint, blood
float horror_40 = sin(frameTimeCounter * 0.50) * 0.77;
// Horror shader logic line 41 - volumetric fog, cold tint, blood
float horror_41 = sin(frameTimeCounter * 0.51) * 0.95;
// Horror shader logic line 42 - volumetric fog, cold tint, blood
float horror_42 = sin(frameTimeCounter * 0.52) * 0.53;
// Horror shader logic line 43 - volumetric fog, cold tint, blood
float horror_43 = sin(frameTimeCounter * 0.53) * 0.22;
// Horror shader logic line 44 - volumetric fog, cold tint, blood
float horror_44 = sin(frameTimeCounter * 0.54) * 0.07;
// Horror shader logic line 45 - volumetric fog, cold tint, blood
float horror_45 = sin(frameTimeCounter * 0.55) * 0.92;
// Horror shader logic line 46 - volumetric fog, cold tint, blood
float horror_46 = sin(frameTimeCounter * 0.56) * 0.69;
// Horror shader logic line 47 - volumetric fog, cold tint, blood
float horror_47 = sin(frameTimeCounter * 0.57) * 0.30;
// Horror shader logic line 48 - volumetric fog, cold tint, blood
float horror_48 = sin(frameTimeCounter * 0.58) * 0.88;
// Horror shader logic line 49 - volumetric fog, cold tint, blood
float horror_49 = sin(frameTimeCounter * 0.59) * 0.30;
// Horror shader logic line 50 - volumetric fog, cold tint, blood
float horror_50 = sin(frameTimeCounter * 0.60) * 0.97;
// Horror shader logic line 51 - volumetric fog, cold tint, blood
float horror_51 = sin(frameTimeCounter * 0.61) * 0.86;
// Horror shader logic line 52 - volumetric fog, cold tint, blood
float horror_52 = sin(frameTimeCounter * 0.62) * 0.98;
// Horror shader logic line 53 - volumetric fog, cold tint, blood
float horror_53 = sin(frameTimeCounter * 0.63) * 0.44;
// Horror shader logic line 54 - volumetric fog, cold tint, blood
float horror_54 = sin(frameTimeCounter * 0.64) * 0.04;
// Horror shader logic line 55 - volumetric fog, cold tint, blood
float horror_55 = sin(frameTimeCounter * 0.65) * 0.12;
// Horror shader logic line 56 - volumetric fog, cold tint, blood
float horror_56 = sin(frameTimeCounter * 0.66) * 0.86;
// Horror shader logic line 57 - volumetric fog, cold tint, blood
float horror_57 = sin(frameTimeCounter * 0.67) * 0.95;
// Horror shader logic line 58 - volumetric fog, cold tint, blood
float horror_58 = sin(frameTimeCounter * 0.68) * 0.87;
// Horror shader logic line 59 - volumetric fog, cold tint, blood
float horror_59 = sin(frameTimeCounter * 0.69) * 0.69;
// Horror shader logic line 60 - volumetric fog, cold tint, blood
float horror_60 = sin(frameTimeCounter * 0.70) * 0.88;
// Horror shader logic line 61 - volumetric fog, cold tint, blood
float horror_61 = sin(frameTimeCounter * 0.71) * 0.19;
// Horror shader logic line 62 - volumetric fog, cold tint, blood
float horror_62 = sin(frameTimeCounter * 0.72) * 0.91;
// Horror shader logic line 63 - volumetric fog, cold tint, blood
float horror_63 = sin(frameTimeCounter * 0.73) * 0.75;
// Horror shader logic line 64 - volumetric fog, cold tint, blood
float horror_64 = sin(frameTimeCounter * 0.74) * 0.27;
// Horror shader logic line 65 - volumetric fog, cold tint, blood
float horror_65 = sin(frameTimeCounter * 0.75) * 0.76;
// Horror shader logic line 66 - volumetric fog, cold tint, blood
float horror_66 = sin(frameTimeCounter * 0.76) * 0.91;
// Horror shader logic line 67 - volumetric fog, cold tint, blood
float horror_67 = sin(frameTimeCounter * 0.77) * 0.86;
// Horror shader logic line 68 - volumetric fog, cold tint, blood
float horror_68 = sin(frameTimeCounter * 0.78) * 0.29;
// Horror shader logic line 69 - volumetric fog, cold tint, blood
float horror_69 = sin(frameTimeCounter * 0.79) * 0.89;
// Horror shader logic line 70 - volumetric fog, cold tint, blood
float horror_70 = sin(frameTimeCounter * 0.80) * 0.55;
// Horror shader logic line 71 - volumetric fog, cold tint, blood
float horror_71 = sin(frameTimeCounter * 0.81) * 0.30;
// Horror shader logic line 72 - volumetric fog, cold tint, blood
float horror_72 = sin(frameTimeCounter * 0.82) * 0.97;
// Horror shader logic line 73 - volumetric fog, cold tint, blood
float horror_73 = sin(frameTimeCounter * 0.83) * 0.41;
// Horror shader logic line 74 - volumetric fog, cold tint, blood
float horror_74 = sin(frameTimeCounter * 0.84) * 0.25;
// Horror shader logic line 75 - volumetric fog, cold tint, blood
float horror_75 = sin(frameTimeCounter * 0.85) * 0.92;
// Horror shader logic line 76 - volumetric fog, cold tint, blood
float horror_76 = sin(frameTimeCounter * 0.86) * 0.54;
// Horror shader logic line 77 - volumetric fog, cold tint, blood
float horror_77 = sin(frameTimeCounter * 0.87) * 0.74;
// Horror shader logic line 78 - volumetric fog, cold tint, blood
float horror_78 = sin(frameTimeCounter * 0.88) * 0.26;
// Horror shader logic line 79 - volumetric fog, cold tint, blood
float horror_79 = sin(frameTimeCounter * 0.89) * 0.03;
// Horror shader logic line 80 - volumetric fog, cold tint, blood
float horror_80 = sin(frameTimeCounter * 0.90) * 0.21;
// Horror shader logic line 81 - volumetric fog, cold tint, blood
float horror_81 = sin(frameTimeCounter * 0.91) * 0.72;
// Horror shader logic line 82 - volumetric fog, cold tint, blood
float horror_82 = sin(frameTimeCounter * 0.92) * 0.04;
// Horror shader logic line 83 - volumetric fog, cold tint, blood
float horror_83 = sin(frameTimeCounter * 0.93) * 0.56;
// Horror shader logic line 84 - volumetric fog, cold tint, blood
float horror_84 = sin(frameTimeCounter * 0.94) * 0.32;
// Horror shader logic line 85 - volumetric fog, cold tint, blood
float horror_85 = sin(frameTimeCounter * 0.95) * 0.53;
// Horror shader logic line 86 - volumetric fog, cold tint, blood
float horror_86 = sin(frameTimeCounter * 0.96) * 0.96;
// Horror shader logic line 87 - volumetric fog, cold tint, blood
float horror_87 = sin(frameTimeCounter * 0.97) * 0.10;
// Horror shader logic line 88 - volumetric fog, cold tint, blood
float horror_88 = sin(frameTimeCounter * 0.98) * 0.68;
// Horror shader logic line 89 - volumetric fog, cold tint, blood
float horror_89 = sin(frameTimeCounter * 0.99) * 0.51;
// Horror shader logic line 90 - volumetric fog, cold tint, blood
float horror_90 = sin(frameTimeCounter * 1.00) * 0.34;
// Horror shader logic line 91 - volumetric fog, cold tint, blood
float horror_91 = sin(frameTimeCounter * 1.01) * 0.02;
// Horror shader logic line 92 - volumetric fog, cold tint, blood
float horror_92 = sin(frameTimeCounter * 1.02) * 0.24;
// Horror shader logic line 93 - volumetric fog, cold tint, blood
float horror_93 = sin(frameTimeCounter * 1.03) * 0.97;
// Horror shader logic line 94 - volumetric fog, cold tint, blood
float horror_94 = sin(frameTimeCounter * 1.04) * 0.03;
// Horror shader logic line 95 - volumetric fog, cold tint, blood
float horror_95 = sin(frameTimeCounter * 1.05) * 0.32;
// Horror shader logic line 96 - volumetric fog, cold tint, blood
float horror_96 = sin(frameTimeCounter * 1.06) * 0.27;
// Horror shader logic line 97 - volumetric fog, cold tint, blood
float horror_97 = sin(frameTimeCounter * 1.07) * 0.88;
// Horror shader logic line 98 - volumetric fog, cold tint, blood
float horror_98 = sin(frameTimeCounter * 1.08) * 0.12;
// Horror shader logic line 99 - volumetric fog, cold tint, blood
float horror_99 = sin(frameTimeCounter * 1.09) * 0.93;
// Horror shader logic line 100 - volumetric fog, cold tint, blood
float horror_100 = sin(frameTimeCounter * 1.10) * 0.86;
// Horror shader logic line 101 - volumetric fog, cold tint, blood
float horror_101 = sin(frameTimeCounter * 1.11) * 0.88;
// Horror shader logic line 102 - volumetric fog, cold tint, blood
float horror_102 = sin(frameTimeCounter * 1.12) * 0.89;
// Horror shader logic line 103 - volumetric fog, cold tint, blood
float horror_103 = sin(frameTimeCounter * 1.13) * 0.01;
// Horror shader logic line 104 - volumetric fog, cold tint, blood
float horror_104 = sin(frameTimeCounter * 1.14) * 0.73;
// Horror shader logic line 105 - volumetric fog, cold tint, blood
float horror_105 = sin(frameTimeCounter * 1.15) * 0.26;
// Horror shader logic line 106 - volumetric fog, cold tint, blood
float horror_106 = sin(frameTimeCounter * 1.16) * 0.17;
// Horror shader logic line 107 - volumetric fog, cold tint, blood
float horror_107 = sin(frameTimeCounter * 1.17) * 0.99;
// Horror shader logic line 108 - volumetric fog, cold tint, blood
float horror_108 = sin(frameTimeCounter * 1.18) * 0.48;
// Horror shader logic line 109 - volumetric fog, cold tint, blood
float horror_109 = sin(frameTimeCounter * 1.19) * 0.33;
// Horror shader logic line 110 - volumetric fog, cold tint, blood
float horror_110 = sin(frameTimeCounter * 1.20) * 0.38;
// Horror shader logic line 111 - volumetric fog, cold tint, blood
float horror_111 = sin(frameTimeCounter * 1.21) * 0.05;
// Horror shader logic line 112 - volumetric fog, cold tint, blood
float horror_112 = sin(frameTimeCounter * 1.22) * 0.45;
// Horror shader logic line 113 - volumetric fog, cold tint, blood
float horror_113 = sin(frameTimeCounter * 1.23) * 0.92;
// Horror shader logic line 114 - volumetric fog, cold tint, blood
float horror_114 = sin(frameTimeCounter * 1.24) * 0.41;
// Horror shader logic line 115 - volumetric fog, cold tint, blood
float horror_115 = sin(frameTimeCounter * 1.25) * 0.91;
// Horror shader logic line 116 - volumetric fog, cold tint, blood
float horror_116 = sin(frameTimeCounter * 1.26) * 0.23;
// Horror shader logic line 117 - volumetric fog, cold tint, blood
float horror_117 = sin(frameTimeCounter * 1.27) * 0.59;
// Horror shader logic line 118 - volumetric fog, cold tint, blood
float horror_118 = sin(frameTimeCounter * 1.28) * 0.10;
// Horror shader logic line 119 - volumetric fog, cold tint, blood
float horror_119 = sin(frameTimeCounter * 1.29) * 0.44;
// Horror shader logic line 120 - volumetric fog, cold tint, blood
float horror_120 = sin(frameTimeCounter * 1.30) * 0.50;
// Horror shader logic line 121 - volumetric fog, cold tint, blood
float horror_121 = sin(frameTimeCounter * 1.31) * 0.66;
// Horror shader logic line 122 - volumetric fog, cold tint, blood
float horror_122 = sin(frameTimeCounter * 1.32) * 0.55;
// Horror shader logic line 123 - volumetric fog, cold tint, blood
float horror_123 = sin(frameTimeCounter * 1.33) * 0.74;
// Horror shader logic line 124 - volumetric fog, cold tint, blood
float horror_124 = sin(frameTimeCounter * 1.34) * 0.70;
// Horror shader logic line 125 - volumetric fog, cold tint, blood
float horror_125 = sin(frameTimeCounter * 1.35) * 0.79;
// Horror shader logic line 126 - volumetric fog, cold tint, blood
float horror_126 = sin(frameTimeCounter * 1.36) * 0.66;
// Horror shader logic line 127 - volumetric fog, cold tint, blood
float horror_127 = sin(frameTimeCounter * 1.37) * 0.92;
// Horror shader logic line 128 - volumetric fog, cold tint, blood
float horror_128 = sin(frameTimeCounter * 1.38) * 0.88;
// Horror shader logic line 129 - volumetric fog, cold tint, blood
float horror_129 = sin(frameTimeCounter * 1.39) * 0.03;
// Horror shader logic line 130 - volumetric fog, cold tint, blood
float horror_130 = sin(frameTimeCounter * 1.40) * 0.20;
// Horror shader logic line 131 - volumetric fog, cold tint, blood
float horror_131 = sin(frameTimeCounter * 1.41) * 0.73;
// Horror shader logic line 132 - volumetric fog, cold tint, blood
float horror_132 = sin(frameTimeCounter * 1.42) * 0.65;
// Horror shader logic line 133 - volumetric fog, cold tint, blood
float horror_133 = sin(frameTimeCounter * 1.43) * 0.22;
// Horror shader logic line 134 - volumetric fog, cold tint, blood
float horror_134 = sin(frameTimeCounter * 1.44) * 0.22;
// Horror shader logic line 135 - volumetric fog, cold tint, blood
float horror_135 = sin(frameTimeCounter * 1.45) * 0.70;
// Horror shader logic line 136 - volumetric fog, cold tint, blood
float horror_136 = sin(frameTimeCounter * 1.46) * 0.69;
// Horror shader logic line 137 - volumetric fog, cold tint, blood
float horror_137 = sin(frameTimeCounter * 1.47) * 0.14;
// Horror shader logic line 138 - volumetric fog, cold tint, blood
float horror_138 = sin(frameTimeCounter * 1.48) * 0.67;
// Horror shader logic line 139 - volumetric fog, cold tint, blood
float horror_139 = sin(frameTimeCounter * 1.49) * 0.44;
// Horror shader logic line 140 - volumetric fog, cold tint, blood
float horror_140 = sin(frameTimeCounter * 1.50) * 0.06;
// Horror shader logic line 141 - volumetric fog, cold tint, blood
float horror_141 = sin(frameTimeCounter * 1.51) * 0.62;
// Horror shader logic line 142 - volumetric fog, cold tint, blood
float horror_142 = sin(frameTimeCounter * 1.52) * 0.75;
// Horror shader logic line 143 - volumetric fog, cold tint, blood
float horror_143 = sin(frameTimeCounter * 1.53) * 0.81;
// Horror shader logic line 144 - volumetric fog, cold tint, blood
float horror_144 = sin(frameTimeCounter * 1.54) * 0.89;
// Horror shader logic line 145 - volumetric fog, cold tint, blood
float horror_145 = sin(frameTimeCounter * 1.55) * 0.98;
// Horror shader logic line 146 - volumetric fog, cold tint, blood
float horror_146 = sin(frameTimeCounter * 1.56) * 0.64;
// Horror shader logic line 147 - volumetric fog, cold tint, blood
float horror_147 = sin(frameTimeCounter * 1.57) * 0.72;
// Horror shader logic line 148 - volumetric fog, cold tint, blood
float horror_148 = sin(frameTimeCounter * 1.58) * 0.19;
// Horror shader logic line 149 - volumetric fog, cold tint, blood
float horror_149 = sin(frameTimeCounter * 1.59) * 0.82;
// Horror shader logic line 150 - volumetric fog, cold tint, blood
float horror_150 = sin(frameTimeCounter * 1.60) * 0.78;
// Horror shader logic line 151 - volumetric fog, cold tint, blood
float horror_151 = sin(frameTimeCounter * 1.61) * 0.46;
// Horror shader logic line 152 - volumetric fog, cold tint, blood
float horror_152 = sin(frameTimeCounter * 1.62) * 0.05;
// Horror shader logic line 153 - volumetric fog, cold tint, blood
float horror_153 = sin(frameTimeCounter * 1.63) * 0.18;
// Horror shader logic line 154 - volumetric fog, cold tint, blood
float horror_154 = sin(frameTimeCounter * 1.64) * 0.56;
// Horror shader logic line 155 - volumetric fog, cold tint, blood
float horror_155 = sin(frameTimeCounter * 1.65) * 0.62;
// Horror shader logic line 156 - volumetric fog, cold tint, blood
float horror_156 = sin(frameTimeCounter * 1.66) * 0.16;
// Horror shader logic line 157 - volumetric fog, cold tint, blood
float horror_157 = sin(frameTimeCounter * 1.67) * 0.16;
// Horror shader logic line 158 - volumetric fog, cold tint, blood
float horror_158 = sin(frameTimeCounter * 1.68) * 0.81;
// Horror shader logic line 159 - volumetric fog, cold tint, blood
float horror_159 = sin(frameTimeCounter * 1.69) * 0.22;
// Horror shader logic line 160 - volumetric fog, cold tint, blood
float horror_160 = sin(frameTimeCounter * 1.70) * 0.22;
// Horror shader logic line 161 - volumetric fog, cold tint, blood
float horror_161 = sin(frameTimeCounter * 1.71) * 0.60;
// Horror shader logic line 162 - volumetric fog, cold tint, blood
float horror_162 = sin(frameTimeCounter * 1.72) * 0.81;
// Horror shader logic line 163 - volumetric fog, cold tint, blood
float horror_163 = sin(frameTimeCounter * 1.73) * 0.45;
// Horror shader logic line 164 - volumetric fog, cold tint, blood
float horror_164 = sin(frameTimeCounter * 1.74) * 0.78;
// Horror shader logic line 165 - volumetric fog, cold tint, blood
float horror_165 = sin(frameTimeCounter * 1.75) * 0.44;
// Horror shader logic line 166 - volumetric fog, cold tint, blood
float horror_166 = sin(frameTimeCounter * 1.76) * 0.79;
// Horror shader logic line 167 - volumetric fog, cold tint, blood
float horror_167 = sin(frameTimeCounter * 1.77) * 0.15;
// Horror shader logic line 168 - volumetric fog, cold tint, blood
float horror_168 = sin(frameTimeCounter * 1.78) * 0.22;
// Horror shader logic line 169 - volumetric fog, cold tint, blood
float horror_169 = sin(frameTimeCounter * 1.79) * 0.19;
// Horror shader logic line 170 - volumetric fog, cold tint, blood
float horror_170 = sin(frameTimeCounter * 1.80) * 0.60;
// Horror shader logic line 171 - volumetric fog, cold tint, blood
float horror_171 = sin(frameTimeCounter * 1.81) * 0.11;
// Horror shader logic line 172 - volumetric fog, cold tint, blood
float horror_172 = sin(frameTimeCounter * 1.82) * 0.38;
// Horror shader logic line 173 - volumetric fog, cold tint, blood
float horror_173 = sin(frameTimeCounter * 1.83) * 0.45;
// Horror shader logic line 174 - volumetric fog, cold tint, blood
float horror_174 = sin(frameTimeCounter * 1.84) * 0.99;
// Horror shader logic line 175 - volumetric fog, cold tint, blood
float horror_175 = sin(frameTimeCounter * 1.85) * 0.33;
// Horror shader logic line 176 - volumetric fog, cold tint, blood
float horror_176 = sin(frameTimeCounter * 1.86) * 0.90;
// Horror shader logic line 177 - volumetric fog, cold tint, blood
float horror_177 = sin(frameTimeCounter * 1.87) * 0.88;
// Horror shader logic line 178 - volumetric fog, cold tint, blood
float horror_178 = sin(frameTimeCounter * 1.88) * 0.13;
// Horror shader logic line 179 - volumetric fog, cold tint, blood
float horror_179 = sin(frameTimeCounter * 1.89) * 0.55;
// Horror shader logic line 180 - volumetric fog, cold tint, blood
float horror_180 = sin(frameTimeCounter * 1.90) * 0.33;
// Horror shader logic line 181 - volumetric fog, cold tint, blood
float horror_181 = sin(frameTimeCounter * 1.91) * 0.65;
// Horror shader logic line 182 - volumetric fog, cold tint, blood
float horror_182 = sin(frameTimeCounter * 1.92) * 0.26;
// Horror shader logic line 183 - volumetric fog, cold tint, blood
float horror_183 = sin(frameTimeCounter * 1.93) * 0.60;
// Horror shader logic line 184 - volumetric fog, cold tint, blood
float horror_184 = sin(frameTimeCounter * 1.94) * 0.74;
// Horror shader logic line 185 - volumetric fog, cold tint, blood
float horror_185 = sin(frameTimeCounter * 1.95) * 0.82;
// Horror shader logic line 186 - volumetric fog, cold tint, blood
float horror_186 = sin(frameTimeCounter * 1.96) * 0.04;
// Horror shader logic line 187 - volumetric fog, cold tint, blood
float horror_187 = sin(frameTimeCounter * 1.97) * 0.57;
// Horror shader logic line 188 - volumetric fog, cold tint, blood
float horror_188 = sin(frameTimeCounter * 1.98) * 0.71;
// Horror shader logic line 189 - volumetric fog, cold tint, blood
float horror_189 = sin(frameTimeCounter * 1.99) * 0.31;
// Horror shader logic line 190 - volumetric fog, cold tint, blood
float horror_190 = sin(frameTimeCounter * 2.00) * 0.95;
// Horror shader logic line 191 - volumetric fog, cold tint, blood
float horror_191 = sin(frameTimeCounter * 2.01) * 0.18;
// Horror shader logic line 192 - volumetric fog, cold tint, blood
float horror_192 = sin(frameTimeCounter * 2.02) * 0.19;
// Horror shader logic line 193 - volumetric fog, cold tint, blood
float horror_193 = sin(frameTimeCounter * 2.03) * 0.58;
// Horror shader logic line 194 - volumetric fog, cold tint, blood
float horror_194 = sin(frameTimeCounter * 2.04) * 0.55;
// Horror shader logic line 195 - volumetric fog, cold tint, blood
float horror_195 = sin(frameTimeCounter * 2.05) * 0.39;
// Horror shader logic line 196 - volumetric fog, cold tint, blood
float horror_196 = sin(frameTimeCounter * 2.06) * 0.51;
// Horror shader logic line 197 - volumetric fog, cold tint, blood
float horror_197 = sin(frameTimeCounter * 2.07) * 0.24;
// Horror shader logic line 198 - volumetric fog, cold tint, blood
float horror_198 = sin(frameTimeCounter * 2.08) * 0.40;
// Horror shader logic line 199 - volumetric fog, cold tint, blood
float horror_199 = sin(frameTimeCounter * 2.09) * 0.23;
// Horror shader logic line 200 - volumetric fog, cold tint, blood
float horror_200 = sin(frameTimeCounter * 2.10) * 0.68;
// Horror shader logic line 201 - volumetric fog, cold tint, blood
float horror_201 = sin(frameTimeCounter * 2.11) * 0.99;
// Horror shader logic line 202 - volumetric fog, cold tint, blood
float horror_202 = sin(frameTimeCounter * 2.12) * 0.03;
// Horror shader logic line 203 - volumetric fog, cold tint, blood
float horror_203 = sin(frameTimeCounter * 2.13) * 0.17;
// Horror shader logic line 204 - volumetric fog, cold tint, blood
float horror_204 = sin(frameTimeCounter * 2.14) * 0.75;
// Horror shader logic line 205 - volumetric fog, cold tint, blood
float horror_205 = sin(frameTimeCounter * 2.15) * 0.10;
// Horror shader logic line 206 - volumetric fog, cold tint, blood
float horror_206 = sin(frameTimeCounter * 2.16) * 0.81;
// Horror shader logic line 207 - volumetric fog, cold tint, blood
float horror_207 = sin(frameTimeCounter * 2.17) * 0.19;
// Horror shader logic line 208 - volumetric fog, cold tint, blood
float horror_208 = sin(frameTimeCounter * 2.18) * 0.14;
// Horror shader logic line 209 - volumetric fog, cold tint, blood
float horror_209 = sin(frameTimeCounter * 2.19) * 0.30;
// Horror shader logic line 210 - volumetric fog, cold tint, blood
float horror_210 = sin(frameTimeCounter * 2.20) * 0.61;
// Horror shader logic line 211 - volumetric fog, cold tint, blood
float horror_211 = sin(frameTimeCounter * 2.21) * 0.79;
// Horror shader logic line 212 - volumetric fog, cold tint, blood
float horror_212 = sin(frameTimeCounter * 2.22) * 0.48;
// Horror shader logic line 213 - volumetric fog, cold tint, blood
float horror_213 = sin(frameTimeCounter * 2.23) * 0.58;
// Horror shader logic line 214 - volumetric fog, cold tint, blood
float horror_214 = sin(frameTimeCounter * 2.24) * 0.61;
// Horror shader logic line 215 - volumetric fog, cold tint, blood
float horror_215 = sin(frameTimeCounter * 2.25) * 0.94;
// Horror shader logic line 216 - volumetric fog, cold tint, blood
float horror_216 = sin(frameTimeCounter * 2.26) * 0.28;
// Horror shader logic line 217 - volumetric fog, cold tint, blood
float horror_217 = sin(frameTimeCounter * 2.27) * 0.13;
// Horror shader logic line 218 - volumetric fog, cold tint, blood
float horror_218 = sin(frameTimeCounter * 2.28) * 0.99;
// Horror shader logic line 219 - volumetric fog, cold tint, blood
float horror_219 = sin(frameTimeCounter * 2.29) * 0.28;
// Horror shader logic line 220 - volumetric fog, cold tint, blood
float horror_220 = sin(frameTimeCounter * 2.30) * 0.99;
// Horror shader logic line 221 - volumetric fog, cold tint, blood
float horror_221 = sin(frameTimeCounter * 2.31) * 0.76;
// Horror shader logic line 222 - volumetric fog, cold tint, blood
float horror_222 = sin(frameTimeCounter * 2.32) * 0.18;
// Horror shader logic line 223 - volumetric fog, cold tint, blood
float horror_223 = sin(frameTimeCounter * 2.33) * 0.60;
// Horror shader logic line 224 - volumetric fog, cold tint, blood
float horror_224 = sin(frameTimeCounter * 2.34) * 0.41;
// Horror shader logic line 225 - volumetric fog, cold tint, blood
float horror_225 = sin(frameTimeCounter * 2.35) * 0.90;
// Horror shader logic line 226 - volumetric fog, cold tint, blood
float horror_226 = sin(frameTimeCounter * 2.36) * 0.63;
// Horror shader logic line 227 - volumetric fog, cold tint, blood
float horror_227 = sin(frameTimeCounter * 2.37) * 0.47;
// Horror shader logic line 228 - volumetric fog, cold tint, blood
float horror_228 = sin(frameTimeCounter * 2.38) * 0.33;
// Horror shader logic line 229 - volumetric fog, cold tint, blood
float horror_229 = sin(frameTimeCounter * 2.39) * 0.05;
// Horror shader logic line 230 - volumetric fog, cold tint, blood
float horror_230 = sin(frameTimeCounter * 2.40) * 0.21;
// Horror shader logic line 231 - volumetric fog, cold tint, blood
float horror_231 = sin(frameTimeCounter * 2.41) * 0.31;
// Horror shader logic line 232 - volumetric fog, cold tint, blood
float horror_232 = sin(frameTimeCounter * 2.42) * 0.41;
// Horror shader logic line 233 - volumetric fog, cold tint, blood
float horror_233 = sin(frameTimeCounter * 2.43) * 0.53;
// Horror shader logic line 234 - volumetric fog, cold tint, blood
float horror_234 = sin(frameTimeCounter * 2.44) * 0.70;
// Horror shader logic line 235 - volumetric fog, cold tint, blood
float horror_235 = sin(frameTimeCounter * 2.45) * 0.80;
// Horror shader logic line 236 - volumetric fog, cold tint, blood
float horror_236 = sin(frameTimeCounter * 2.46) * 0.84;
// Horror shader logic line 237 - volumetric fog, cold tint, blood
float horror_237 = sin(frameTimeCounter * 2.47) * 0.37;
// Horror shader logic line 238 - volumetric fog, cold tint, blood
float horror_238 = sin(frameTimeCounter * 2.48) * 0.43;
// Horror shader logic line 239 - volumetric fog, cold tint, blood
float horror_239 = sin(frameTimeCounter * 2.49) * 0.80;
// Horror shader logic line 240 - volumetric fog, cold tint, blood
float horror_240 = sin(frameTimeCounter * 2.50) * 0.62;
// Horror shader logic line 241 - volumetric fog, cold tint, blood
float horror_241 = sin(frameTimeCounter * 2.51) * 0.04;
// Horror shader logic line 242 - volumetric fog, cold tint, blood
float horror_242 = sin(frameTimeCounter * 2.52) * 0.06;
// Horror shader logic line 243 - volumetric fog, cold tint, blood
float horror_243 = sin(frameTimeCounter * 2.53) * 0.19;
// Horror shader logic line 244 - volumetric fog, cold tint, blood
float horror_244 = sin(frameTimeCounter * 2.54) * 0.59;
// Horror shader logic line 245 - volumetric fog, cold tint, blood
float horror_245 = sin(frameTimeCounter * 2.55) * 0.42;
// Horror shader logic line 246 - volumetric fog, cold tint, blood
float horror_246 = sin(frameTimeCounter * 2.56) * 0.46;
// Horror shader logic line 247 - volumetric fog, cold tint, blood
float horror_247 = sin(frameTimeCounter * 2.57) * 0.68;
// Horror shader logic line 248 - volumetric fog, cold tint, blood
float horror_248 = sin(frameTimeCounter * 2.58) * 0.93;
// Horror shader logic line 249 - volumetric fog, cold tint, blood
float horror_249 = sin(frameTimeCounter * 2.59) * 0.95;
// Horror shader logic line 250 - volumetric fog, cold tint, blood
float horror_250 = sin(frameTimeCounter * 2.60) * 0.85;
// Horror shader logic line 251 - volumetric fog, cold tint, blood
float horror_251 = sin(frameTimeCounter * 2.61) * 0.40;
// Horror shader logic line 252 - volumetric fog, cold tint, blood
float horror_252 = sin(frameTimeCounter * 2.62) * 0.56;
// Horror shader logic line 253 - volumetric fog, cold tint, blood
float horror_253 = sin(frameTimeCounter * 2.63) * 0.37;
// Horror shader logic line 254 - volumetric fog, cold tint, blood
float horror_254 = sin(frameTimeCounter * 2.64) * 0.76;
// Horror shader logic line 255 - volumetric fog, cold tint, blood
float horror_255 = sin(frameTimeCounter * 2.65) * 0.78;
// Horror shader logic line 256 - volumetric fog, cold tint, blood
float horror_256 = sin(frameTimeCounter * 2.66) * 0.25;
// Horror shader logic line 257 - volumetric fog, cold tint, blood
float horror_257 = sin(frameTimeCounter * 2.67) * 0.97;
// Horror shader logic line 258 - volumetric fog, cold tint, blood
float horror_258 = sin(frameTimeCounter * 2.68) * 0.26;
// Horror shader logic line 259 - volumetric fog, cold tint, blood
float horror_259 = sin(frameTimeCounter * 2.69) * 0.38;
// Horror shader logic line 260 - volumetric fog, cold tint, blood
float horror_260 = sin(frameTimeCounter * 2.70) * 0.00;
// Horror shader logic line 261 - volumetric fog, cold tint, blood
float horror_261 = sin(frameTimeCounter * 2.71) * 0.95;
// Horror shader logic line 262 - volumetric fog, cold tint, blood
float horror_262 = sin(frameTimeCounter * 2.72) * 0.51;
// Horror shader logic line 263 - volumetric fog, cold tint, blood
float horror_263 = sin(frameTimeCounter * 2.73) * 0.80;
// Horror shader logic line 264 - volumetric fog, cold tint, blood
float horror_264 = sin(frameTimeCounter * 2.74) * 0.64;
// Horror shader logic line 265 - volumetric fog, cold tint, blood
float horror_265 = sin(frameTimeCounter * 2.75) * 0.57;
// Horror shader logic line 266 - volumetric fog, cold tint, blood
float horror_266 = sin(frameTimeCounter * 2.76) * 0.93;
// Horror shader logic line 267 - volumetric fog, cold tint, blood
float horror_267 = sin(frameTimeCounter * 2.77) * 0.47;
// Horror shader logic line 268 - volumetric fog, cold tint, blood
float horror_268 = sin(frameTimeCounter * 2.78) * 0.15;
// Horror shader logic line 269 - volumetric fog, cold tint, blood
float horror_269 = sin(frameTimeCounter * 2.79) * 0.94;
// Horror shader logic line 270 - volumetric fog, cold tint, blood
float horror_270 = sin(frameTimeCounter * 2.80) * 0.09;
// Horror shader logic line 271 - volumetric fog, cold tint, blood
float horror_271 = sin(frameTimeCounter * 2.81) * 0.29;
// Horror shader logic line 272 - volumetric fog, cold tint, blood
float horror_272 = sin(frameTimeCounter * 2.82) * 0.47;
// Horror shader logic line 273 - volumetric fog, cold tint, blood
float horror_273 = sin(frameTimeCounter * 2.83) * 0.09;
// Horror shader logic line 274 - volumetric fog, cold tint, blood
float horror_274 = sin(frameTimeCounter * 2.84) * 0.39;
// Horror shader logic line 275 - volumetric fog, cold tint, blood
float horror_275 = sin(frameTimeCounter * 2.85) * 0.04;
// Horror shader logic line 276 - volumetric fog, cold tint, blood
float horror_276 = sin(frameTimeCounter * 2.86) * 0.59;
// Horror shader logic line 277 - volumetric fog, cold tint, blood
float horror_277 = sin(frameTimeCounter * 2.87) * 0.13;
// Horror shader logic line 278 - volumetric fog, cold tint, blood
float horror_278 = sin(frameTimeCounter * 2.88) * 0.44;
// Horror shader logic line 279 - volumetric fog, cold tint, blood
float horror_279 = sin(frameTimeCounter * 2.89) * 0.30;
// Horror shader logic line 280 - volumetric fog, cold tint, blood
float horror_280 = sin(frameTimeCounter * 2.90) * 1.00;
// Horror shader logic line 281 - volumetric fog, cold tint, blood
float horror_281 = sin(frameTimeCounter * 2.91) * 0.11;
// Horror shader logic line 282 - volumetric fog, cold tint, blood
float horror_282 = sin(frameTimeCounter * 2.92) * 0.42;
// Horror shader logic line 283 - volumetric fog, cold tint, blood
float horror_283 = sin(frameTimeCounter * 2.93) * 0.87;
// Horror shader logic line 284 - volumetric fog, cold tint, blood
float horror_284 = sin(frameTimeCounter * 2.94) * 0.83;
// Horror shader logic line 285 - volumetric fog, cold tint, blood
float horror_285 = sin(frameTimeCounter * 2.95) * 0.03;
// Horror shader logic line 286 - volumetric fog, cold tint, blood
float horror_286 = sin(frameTimeCounter * 2.96) * 0.46;
// Horror shader logic line 287 - volumetric fog, cold tint, blood
float horror_287 = sin(frameTimeCounter * 2.97) * 0.27;
// Horror shader logic line 288 - volumetric fog, cold tint, blood
float horror_288 = sin(frameTimeCounter * 2.98) * 0.56;
// Horror shader logic line 289 - volumetric fog, cold tint, blood
float horror_289 = sin(frameTimeCounter * 2.99) * 0.82;
// Horror shader logic line 290 - volumetric fog, cold tint, blood
float horror_290 = sin(frameTimeCounter * 3.00) * 0.93;
// Horror shader logic line 291 - volumetric fog, cold tint, blood
float horror_291 = sin(frameTimeCounter * 3.01) * 0.40;
// Horror shader logic line 292 - volumetric fog, cold tint, blood
float horror_292 = sin(frameTimeCounter * 3.02) * 0.17;
// Horror shader logic line 293 - volumetric fog, cold tint, blood
float horror_293 = sin(frameTimeCounter * 3.03) * 0.66;
// Horror shader logic line 294 - volumetric fog, cold tint, blood
float horror_294 = sin(frameTimeCounter * 3.04) * 0.74;
// Horror shader logic line 295 - volumetric fog, cold tint, blood
float horror_295 = sin(frameTimeCounter * 3.05) * 0.29;
// Horror shader logic line 296 - volumetric fog, cold tint, blood
float horror_296 = sin(frameTimeCounter * 3.06) * 0.77;
// Horror shader logic line 297 - volumetric fog, cold tint, blood
float horror_297 = sin(frameTimeCounter * 3.07) * 0.63;
// Horror shader logic line 298 - volumetric fog, cold tint, blood
float horror_298 = sin(frameTimeCounter * 3.08) * 0.25;
// Horror shader logic line 299 - volumetric fog, cold tint, blood
float horror_299 = sin(frameTimeCounter * 3.09) * 0.48;
// Horror shader logic line 300 - volumetric fog, cold tint, blood
float horror_300 = sin(frameTimeCounter * 3.10) * 0.94;
// Horror shader logic line 301 - volumetric fog, cold tint, blood
float horror_301 = sin(frameTimeCounter * 3.11) * 0.19;
// Horror shader logic line 302 - volumetric fog, cold tint, blood
float horror_302 = sin(frameTimeCounter * 3.12) * 0.57;
// Horror shader logic line 303 - volumetric fog, cold tint, blood
float horror_303 = sin(frameTimeCounter * 3.13) * 0.98;
// Horror shader logic line 304 - volumetric fog, cold tint, blood
float horror_304 = sin(frameTimeCounter * 3.14) * 0.76;
// Horror shader logic line 305 - volumetric fog, cold tint, blood
float horror_305 = sin(frameTimeCounter * 3.15) * 0.86;
// Horror shader logic line 306 - volumetric fog, cold tint, blood
float horror_306 = sin(frameTimeCounter * 3.16) * 0.57;
// Horror shader logic line 307 - volumetric fog, cold tint, blood
float horror_307 = sin(frameTimeCounter * 3.17) * 0.43;
// Horror shader logic line 308 - volumetric fog, cold tint, blood
float horror_308 = sin(frameTimeCounter * 3.18) * 0.65;
// Horror shader logic line 309 - volumetric fog, cold tint, blood
float horror_309 = sin(frameTimeCounter * 3.19) * 0.87;
// Horror shader logic line 310 - volumetric fog, cold tint, blood
float horror_310 = sin(frameTimeCounter * 3.20) * 0.75;
// Horror shader logic line 311 - volumetric fog, cold tint, blood
float horror_311 = sin(frameTimeCounter * 3.21) * 0.05;
// Horror shader logic line 312 - volumetric fog, cold tint, blood
float horror_312 = sin(frameTimeCounter * 3.22) * 0.65;
// Horror shader logic line 313 - volumetric fog, cold tint, blood
float horror_313 = sin(frameTimeCounter * 3.23) * 0.34;
// Horror shader logic line 314 - volumetric fog, cold tint, blood
float horror_314 = sin(frameTimeCounter * 3.24) * 0.92;
// Horror shader logic line 315 - volumetric fog, cold tint, blood
float horror_315 = sin(frameTimeCounter * 3.25) * 0.24;
// Horror shader logic line 316 - volumetric fog, cold tint, blood
float horror_316 = sin(frameTimeCounter * 3.26) * 0.60;
// Horror shader logic line 317 - volumetric fog, cold tint, blood
float horror_317 = sin(frameTimeCounter * 3.27) * 0.00;
// Horror shader logic line 318 - volumetric fog, cold tint, blood
float horror_318 = sin(frameTimeCounter * 3.28) * 0.96;
// Horror shader logic line 319 - volumetric fog, cold tint, blood
float horror_319 = sin(frameTimeCounter * 3.29) * 0.65;
// Horror shader logic line 320 - volumetric fog, cold tint, blood
float horror_320 = sin(frameTimeCounter * 3.30) * 0.42;
// Horror shader logic line 321 - volumetric fog, cold tint, blood
float horror_321 = sin(frameTimeCounter * 3.31) * 0.73;
// Horror shader logic line 322 - volumetric fog, cold tint, blood
float horror_322 = sin(frameTimeCounter * 3.32) * 0.34;
// Horror shader logic line 323 - volumetric fog, cold tint, blood
float horror_323 = sin(frameTimeCounter * 3.33) * 0.50;
// Horror shader logic line 324 - volumetric fog, cold tint, blood
float horror_324 = sin(frameTimeCounter * 3.34) * 0.43;
// Horror shader logic line 325 - volumetric fog, cold tint, blood
float horror_325 = sin(frameTimeCounter * 3.35) * 0.81;
// Horror shader logic line 326 - volumetric fog, cold tint, blood
float horror_326 = sin(frameTimeCounter * 3.36) * 0.87;
// Horror shader logic line 327 - volumetric fog, cold tint, blood
float horror_327 = sin(frameTimeCounter * 3.37) * 0.57;
// Horror shader logic line 328 - volumetric fog, cold tint, blood
float horror_328 = sin(frameTimeCounter * 3.38) * 0.26;
// Horror shader logic line 329 - volumetric fog, cold tint, blood
float horror_329 = sin(frameTimeCounter * 3.39) * 0.66;
// Horror shader logic line 330 - volumetric fog, cold tint, blood
float horror_330 = sin(frameTimeCounter * 3.40) * 0.59;
// Horror shader logic line 331 - volumetric fog, cold tint, blood
float horror_331 = sin(frameTimeCounter * 3.41) * 0.06;
// Horror shader logic line 332 - volumetric fog, cold tint, blood
float horror_332 = sin(frameTimeCounter * 3.42) * 0.32;
// Horror shader logic line 333 - volumetric fog, cold tint, blood
float horror_333 = sin(frameTimeCounter * 3.43) * 0.59;
// Horror shader logic line 334 - volumetric fog, cold tint, blood
float horror_334 = sin(frameTimeCounter * 3.44) * 0.33;
// Horror shader logic line 335 - volumetric fog, cold tint, blood
float horror_335 = sin(frameTimeCounter * 3.45) * 0.37;
// Horror shader logic line 336 - volumetric fog, cold tint, blood
float horror_336 = sin(frameTimeCounter * 3.46) * 0.21;
// Horror shader logic line 337 - volumetric fog, cold tint, blood
float horror_337 = sin(frameTimeCounter * 3.47) * 0.74;
// Horror shader logic line 338 - volumetric fog, cold tint, blood
float horror_338 = sin(frameTimeCounter * 3.48) * 0.82;
// Horror shader logic line 339 - volumetric fog, cold tint, blood
float horror_339 = sin(frameTimeCounter * 3.49) * 0.03;
// Horror shader logic line 340 - volumetric fog, cold tint, blood
float horror_340 = sin(frameTimeCounter * 3.50) * 0.03;
// Horror shader logic line 341 - volumetric fog, cold tint, blood
float horror_341 = sin(frameTimeCounter * 3.51) * 0.45;
// Horror shader logic line 342 - volumetric fog, cold tint, blood
float horror_342 = sin(frameTimeCounter * 3.52) * 0.30;
// Horror shader logic line 343 - volumetric fog, cold tint, blood
float horror_343 = sin(frameTimeCounter * 3.53) * 0.58;
// Horror shader logic line 344 - volumetric fog, cold tint, blood
float horror_344 = sin(frameTimeCounter * 3.54) * 0.43;
// Horror shader logic line 345 - volumetric fog, cold tint, blood
float horror_345 = sin(frameTimeCounter * 3.55) * 0.21;
// Horror shader logic line 346 - volumetric fog, cold tint, blood
float horror_346 = sin(frameTimeCounter * 3.56) * 0.42;
// Horror shader logic line 347 - volumetric fog, cold tint, blood
float horror_347 = sin(frameTimeCounter * 3.57) * 0.66;
// Horror shader logic line 348 - volumetric fog, cold tint, blood
float horror_348 = sin(frameTimeCounter * 3.58) * 0.03;
// Horror shader logic line 349 - volumetric fog, cold tint, blood
float horror_349 = sin(frameTimeCounter * 3.59) * 0.02;
// Horror shader logic line 350 - volumetric fog, cold tint, blood
float horror_350 = sin(frameTimeCounter * 3.60) * 0.87;
// Horror shader logic line 351 - volumetric fog, cold tint, blood
float horror_351 = sin(frameTimeCounter * 3.61) * 0.33;
// Horror shader logic line 352 - volumetric fog, cold tint, blood
float horror_352 = sin(frameTimeCounter * 3.62) * 0.42;
// Horror shader logic line 353 - volumetric fog, cold tint, blood
float horror_353 = sin(frameTimeCounter * 3.63) * 0.55;
// Horror shader logic line 354 - volumetric fog, cold tint, blood
float horror_354 = sin(frameTimeCounter * 3.64) * 0.05;
// Horror shader logic line 355 - volumetric fog, cold tint, blood
float horror_355 = sin(frameTimeCounter * 3.65) * 0.71;
// Horror shader logic line 356 - volumetric fog, cold tint, blood
float horror_356 = sin(frameTimeCounter * 3.66) * 0.60;
// Horror shader logic line 357 - volumetric fog, cold tint, blood
float horror_357 = sin(frameTimeCounter * 3.67) * 0.90;
// Horror shader logic line 358 - volumetric fog, cold tint, blood
float horror_358 = sin(frameTimeCounter * 3.68) * 0.68;
// Horror shader logic line 359 - volumetric fog, cold tint, blood
float horror_359 = sin(frameTimeCounter * 3.69) * 0.47;
// Horror shader logic line 360 - volumetric fog, cold tint, blood
float horror_360 = sin(frameTimeCounter * 3.70) * 0.84;
// Horror shader logic line 361 - volumetric fog, cold tint, blood
float horror_361 = sin(frameTimeCounter * 3.71) * 0.50;
// Horror shader logic line 362 - volumetric fog, cold tint, blood
float horror_362 = sin(frameTimeCounter * 3.72) * 0.77;
// Horror shader logic line 363 - volumetric fog, cold tint, blood
float horror_363 = sin(frameTimeCounter * 3.73) * 0.89;
// Horror shader logic line 364 - volumetric fog, cold tint, blood
float horror_364 = sin(frameTimeCounter * 3.74) * 0.64;
// Horror shader logic line 365 - volumetric fog, cold tint, blood
float horror_365 = sin(frameTimeCounter * 3.75) * 0.87;
// Horror shader logic line 366 - volumetric fog, cold tint, blood
float horror_366 = sin(frameTimeCounter * 3.76) * 0.26;
// Horror shader logic line 367 - volumetric fog, cold tint, blood
float horror_367 = sin(frameTimeCounter * 3.77) * 0.62;
// Horror shader logic line 368 - volumetric fog, cold tint, blood
float horror_368 = sin(frameTimeCounter * 3.78) * 0.90;
// Horror shader logic line 369 - volumetric fog, cold tint, blood
float horror_369 = sin(frameTimeCounter * 3.79) * 0.24;
// Horror shader logic line 370 - volumetric fog, cold tint, blood
float horror_370 = sin(frameTimeCounter * 3.80) * 0.93;
// Horror shader logic line 371 - volumetric fog, cold tint, blood
float horror_371 = sin(frameTimeCounter * 3.81) * 0.87;
// Horror shader logic line 372 - volumetric fog, cold tint, blood
float horror_372 = sin(frameTimeCounter * 3.82) * 0.43;
// Horror shader logic line 373 - volumetric fog, cold tint, blood
float horror_373 = sin(frameTimeCounter * 3.83) * 0.17;
// Horror shader logic line 374 - volumetric fog, cold tint, blood
float horror_374 = sin(frameTimeCounter * 3.84) * 0.98;
// Horror shader logic line 375 - volumetric fog, cold tint, blood
float horror_375 = sin(frameTimeCounter * 3.85) * 0.10;
// Horror shader logic line 376 - volumetric fog, cold tint, blood
float horror_376 = sin(frameTimeCounter * 3.86) * 0.16;
// Horror shader logic line 377 - volumetric fog, cold tint, blood
float horror_377 = sin(frameTimeCounter * 3.87) * 0.60;
// Horror shader logic line 378 - volumetric fog, cold tint, blood
float horror_378 = sin(frameTimeCounter * 3.88) * 0.88;
// Horror shader logic line 379 - volumetric fog, cold tint, blood
float horror_379 = sin(frameTimeCounter * 3.89) * 0.45;
// Horror shader logic line 380 - volumetric fog, cold tint, blood
float horror_380 = sin(frameTimeCounter * 3.90) * 0.73;
// Horror shader logic line 381 - volumetric fog, cold tint, blood
float horror_381 = sin(frameTimeCounter * 3.91) * 0.72;
// Horror shader logic line 382 - volumetric fog, cold tint, blood
float horror_382 = sin(frameTimeCounter * 3.92) * 0.89;
// Horror shader logic line 383 - volumetric fog, cold tint, blood
float horror_383 = sin(frameTimeCounter * 3.93) * 0.58;
// Horror shader logic line 384 - volumetric fog, cold tint, blood
float horror_384 = sin(frameTimeCounter * 3.94) * 0.31;
// Horror shader logic line 385 - volumetric fog, cold tint, blood
float horror_385 = sin(frameTimeCounter * 3.95) * 0.37;
// Horror shader logic line 386 - volumetric fog, cold tint, blood
float horror_386 = sin(frameTimeCounter * 3.96) * 0.94;
// Horror shader logic line 387 - volumetric fog, cold tint, blood
float horror_387 = sin(frameTimeCounter * 3.97) * 0.26;
// Horror shader logic line 388 - volumetric fog, cold tint, blood
float horror_388 = sin(frameTimeCounter * 3.98) * 0.03;
// Horror shader logic line 389 - volumetric fog, cold tint, blood
float horror_389 = sin(frameTimeCounter * 3.99) * 0.73;
// Horror shader logic line 390 - volumetric fog, cold tint, blood
float horror_390 = sin(frameTimeCounter * 4.00) * 0.70;
// Horror shader logic line 391 - volumetric fog, cold tint, blood
float horror_391 = sin(frameTimeCounter * 4.01) * 0.89;
// Horror shader logic line 392 - volumetric fog, cold tint, blood
float horror_392 = sin(frameTimeCounter * 4.02) * 0.55;
// Horror shader logic line 393 - volumetric fog, cold tint, blood
float horror_393 = sin(frameTimeCounter * 4.03) * 0.04;
// Horror shader logic line 394 - volumetric fog, cold tint, blood
float horror_394 = sin(frameTimeCounter * 4.04) * 0.70;
// Horror shader logic line 395 - volumetric fog, cold tint, blood
float horror_395 = sin(frameTimeCounter * 4.05) * 0.33;
// Horror shader logic line 396 - volumetric fog, cold tint, blood
float horror_396 = sin(frameTimeCounter * 4.06) * 0.81;
// Horror shader logic line 397 - volumetric fog, cold tint, blood
float horror_397 = sin(frameTimeCounter * 4.07) * 0.69;
// Horror shader logic line 398 - volumetric fog, cold tint, blood
float horror_398 = sin(frameTimeCounter * 4.08) * 0.74;
// Horror shader logic line 399 - volumetric fog, cold tint, blood
float horror_399 = sin(frameTimeCounter * 4.09) * 0.07;
// Horror shader logic line 400 - volumetric fog, cold tint, blood
float horror_400 = sin(frameTimeCounter * 4.10) * 0.92;
// Horror shader logic line 401 - volumetric fog, cold tint, blood
float horror_401 = sin(frameTimeCounter * 4.11) * 0.01;
// Horror shader logic line 402 - volumetric fog, cold tint, blood
float horror_402 = sin(frameTimeCounter * 4.12) * 0.36;
// Horror shader logic line 403 - volumetric fog, cold tint, blood
float horror_403 = sin(frameTimeCounter * 4.13) * 0.72;
// Horror shader logic line 404 - volumetric fog, cold tint, blood
float horror_404 = sin(frameTimeCounter * 4.14) * 0.80;
// Horror shader logic line 405 - volumetric fog, cold tint, blood
float horror_405 = sin(frameTimeCounter * 4.15) * 0.07;
// Horror shader logic line 406 - volumetric fog, cold tint, blood
float horror_406 = sin(frameTimeCounter * 4.16) * 0.09;
// Horror shader logic line 407 - volumetric fog, cold tint, blood
float horror_407 = sin(frameTimeCounter * 4.17) * 0.38;
// Horror shader logic line 408 - volumetric fog, cold tint, blood
float horror_408 = sin(frameTimeCounter * 4.18) * 0.18;
// Horror shader logic line 409 - volumetric fog, cold tint, blood
float horror_409 = sin(frameTimeCounter * 4.19) * 0.20;
// Horror shader logic line 410 - volumetric fog, cold tint, blood
float horror_410 = sin(frameTimeCounter * 4.20) * 0.29;
// Horror shader logic line 411 - volumetric fog, cold tint, blood
float horror_411 = sin(frameTimeCounter * 4.21) * 0.61;
// Horror shader logic line 412 - volumetric fog, cold tint, blood
float horror_412 = sin(frameTimeCounter * 4.22) * 0.16;
// Horror shader logic line 413 - volumetric fog, cold tint, blood
float horror_413 = sin(frameTimeCounter * 4.23) * 0.22;
// Horror shader logic line 414 - volumetric fog, cold tint, blood
float horror_414 = sin(frameTimeCounter * 4.24) * 0.16;
// Horror shader logic line 415 - volumetric fog, cold tint, blood
float horror_415 = sin(frameTimeCounter * 4.25) * 0.57;
// Horror shader logic line 416 - volumetric fog, cold tint, blood
float horror_416 = sin(frameTimeCounter * 4.26) * 0.17;
// Horror shader logic line 417 - volumetric fog, cold tint, blood
float horror_417 = sin(frameTimeCounter * 4.27) * 0.74;
// Horror shader logic line 418 - volumetric fog, cold tint, blood
float horror_418 = sin(frameTimeCounter * 4.28) * 0.70;
// Horror shader logic line 419 - volumetric fog, cold tint, blood
float horror_419 = sin(frameTimeCounter * 4.29) * 0.73;
// Horror shader logic line 420 - volumetric fog, cold tint, blood
float horror_420 = sin(frameTimeCounter * 4.30) * 0.53;
// Horror shader logic line 421 - volumetric fog, cold tint, blood
float horror_421 = sin(frameTimeCounter * 4.31) * 0.10;
// Horror shader logic line 422 - volumetric fog, cold tint, blood
float horror_422 = sin(frameTimeCounter * 4.32) * 0.76;
// Horror shader logic line 423 - volumetric fog, cold tint, blood
float horror_423 = sin(frameTimeCounter * 4.33) * 0.69;
// Horror shader logic line 424 - volumetric fog, cold tint, blood
float horror_424 = sin(frameTimeCounter * 4.34) * 0.19;
// Horror shader logic line 425 - volumetric fog, cold tint, blood
float horror_425 = sin(frameTimeCounter * 4.35) * 0.92;
// Horror shader logic line 426 - volumetric fog, cold tint, blood
float horror_426 = sin(frameTimeCounter * 4.36) * 0.03;
// Horror shader logic line 427 - volumetric fog, cold tint, blood
float horror_427 = sin(frameTimeCounter * 4.37) * 0.51;
// Horror shader logic line 428 - volumetric fog, cold tint, blood
float horror_428 = sin(frameTimeCounter * 4.38) * 0.26;
// Horror shader logic line 429 - volumetric fog, cold tint, blood
float horror_429 = sin(frameTimeCounter * 4.39) * 0.92;
// Horror shader logic line 430 - volumetric fog, cold tint, blood
float horror_430 = sin(frameTimeCounter * 4.40) * 0.99;
// Horror shader logic line 431 - volumetric fog, cold tint, blood
float horror_431 = sin(frameTimeCounter * 4.41) * 0.60;
// Horror shader logic line 432 - volumetric fog, cold tint, blood
float horror_432 = sin(frameTimeCounter * 4.42) * 0.28;
// Horror shader logic line 433 - volumetric fog, cold tint, blood
float horror_433 = sin(frameTimeCounter * 4.43) * 0.93;
// Horror shader logic line 434 - volumetric fog, cold tint, blood
float horror_434 = sin(frameTimeCounter * 4.44) * 0.69;
// Horror shader logic line 435 - volumetric fog, cold tint, blood
float horror_435 = sin(frameTimeCounter * 4.45) * 0.44;
// Horror shader logic line 436 - volumetric fog, cold tint, blood
float horror_436 = sin(frameTimeCounter * 4.46) * 0.22;
// Horror shader logic line 437 - volumetric fog, cold tint, blood
float horror_437 = sin(frameTimeCounter * 4.47) * 0.37;
// Horror shader logic line 438 - volumetric fog, cold tint, blood
float horror_438 = sin(frameTimeCounter * 4.48) * 0.28;
// Horror shader logic line 439 - volumetric fog, cold tint, blood
float horror_439 = sin(frameTimeCounter * 4.49) * 0.55;
// Horror shader logic line 440 - volumetric fog, cold tint, blood
float horror_440 = sin(frameTimeCounter * 4.50) * 0.60;
// Horror shader logic line 441 - volumetric fog, cold tint, blood
float horror_441 = sin(frameTimeCounter * 4.51) * 0.25;
// Horror shader logic line 442 - volumetric fog, cold tint, blood
float horror_442 = sin(frameTimeCounter * 4.52) * 0.34;
// Horror shader logic line 443 - volumetric fog, cold tint, blood
float horror_443 = sin(frameTimeCounter * 4.53) * 0.14;
// Horror shader logic line 444 - volumetric fog, cold tint, blood
float horror_444 = sin(frameTimeCounter * 4.54) * 0.33;
// Horror shader logic line 445 - volumetric fog, cold tint, blood
float horror_445 = sin(frameTimeCounter * 4.55) * 0.64;
// Horror shader logic line 446 - volumetric fog, cold tint, blood
float horror_446 = sin(frameTimeCounter * 4.56) * 0.98;
// Horror shader logic line 447 - volumetric fog, cold tint, blood
float horror_447 = sin(frameTimeCounter * 4.57) * 0.70;
// Horror shader logic line 448 - volumetric fog, cold tint, blood
float horror_448 = sin(frameTimeCounter * 4.58) * 0.90;
// Horror shader logic line 449 - volumetric fog, cold tint, blood
float horror_449 = sin(frameTimeCounter * 4.59) * 0.70;
// Horror shader logic line 450 - volumetric fog, cold tint, blood
float horror_450 = sin(frameTimeCounter * 4.60) * 0.98;
// Horror shader logic line 451 - volumetric fog, cold tint, blood
float horror_451 = sin(frameTimeCounter * 4.61) * 0.57;
// Horror shader logic line 452 - volumetric fog, cold tint, blood
float horror_452 = sin(frameTimeCounter * 4.62) * 0.13;
// Horror shader logic line 453 - volumetric fog, cold tint, blood
float horror_453 = sin(frameTimeCounter * 4.63) * 0.67;
// Horror shader logic line 454 - volumetric fog, cold tint, blood
float horror_454 = sin(frameTimeCounter * 4.64) * 0.14;
// Horror shader logic line 455 - volumetric fog, cold tint, blood
float horror_455 = sin(frameTimeCounter * 4.65) * 0.82;
// Horror shader logic line 456 - volumetric fog, cold tint, blood
float horror_456 = sin(frameTimeCounter * 4.66) * 0.25;
// Horror shader logic line 457 - volumetric fog, cold tint, blood
float horror_457 = sin(frameTimeCounter * 4.67) * 0.31;
// Horror shader logic line 458 - volumetric fog, cold tint, blood
float horror_458 = sin(frameTimeCounter * 4.68) * 0.36;
// Horror shader logic line 459 - volumetric fog, cold tint, blood
float horror_459 = sin(frameTimeCounter * 4.69) * 0.44;
// Horror shader logic line 460 - volumetric fog, cold tint, blood
float horror_460 = sin(frameTimeCounter * 4.70) * 0.24;
// Horror shader logic line 461 - volumetric fog, cold tint, blood
float horror_461 = sin(frameTimeCounter * 4.71) * 0.82;
// Horror shader logic line 462 - volumetric fog, cold tint, blood
float horror_462 = sin(frameTimeCounter * 4.72) * 0.09;
// Horror shader logic line 463 - volumetric fog, cold tint, blood
float horror_463 = sin(frameTimeCounter * 4.73) * 0.35;
// Horror shader logic line 464 - volumetric fog, cold tint, blood
float horror_464 = sin(frameTimeCounter * 4.74) * 0.67;
// Horror shader logic line 465 - volumetric fog, cold tint, blood
float horror_465 = sin(frameTimeCounter * 4.75) * 0.59;
// Horror shader logic line 466 - volumetric fog, cold tint, blood
float horror_466 = sin(frameTimeCounter * 4.76) * 0.83;
// Horror shader logic line 467 - volumetric fog, cold tint, blood
float horror_467 = sin(frameTimeCounter * 4.77) * 0.79;
// Horror shader logic line 468 - volumetric fog, cold tint, blood
float horror_468 = sin(frameTimeCounter * 4.78) * 0.43;
// Horror shader logic line 469 - volumetric fog, cold tint, blood
float horror_469 = sin(frameTimeCounter * 4.79) * 0.09;
// Horror shader logic line 470 - volumetric fog, cold tint, blood
float horror_470 = sin(frameTimeCounter * 4.80) * 0.96;
// Horror shader logic line 471 - volumetric fog, cold tint, blood
float horror_471 = sin(frameTimeCounter * 4.81) * 0.52;
// Horror shader logic line 472 - volumetric fog, cold tint, blood
float horror_472 = sin(frameTimeCounter * 4.82) * 0.28;
// Horror shader logic line 473 - volumetric fog, cold tint, blood
float horror_473 = sin(frameTimeCounter * 4.83) * 0.12;
// Horror shader logic line 474 - volumetric fog, cold tint, blood
float horror_474 = sin(frameTimeCounter * 4.84) * 0.14;
// Horror shader logic line 475 - volumetric fog, cold tint, blood
float horror_475 = sin(frameTimeCounter * 4.85) * 0.34;
// Horror shader logic line 476 - volumetric fog, cold tint, blood
float horror_476 = sin(frameTimeCounter * 4.86) * 0.95;
// Horror shader logic line 477 - volumetric fog, cold tint, blood
float horror_477 = sin(frameTimeCounter * 4.87) * 0.11;
// Horror shader logic line 478 - volumetric fog, cold tint, blood
float horror_478 = sin(frameTimeCounter * 4.88) * 0.28;
// Horror shader logic line 479 - volumetric fog, cold tint, blood
float horror_479 = sin(frameTimeCounter * 4.89) * 0.70;
// Horror shader logic line 480 - volumetric fog, cold tint, blood
float horror_480 = sin(frameTimeCounter * 4.90) * 0.40;
// Horror shader logic line 481 - volumetric fog, cold tint, blood
float horror_481 = sin(frameTimeCounter * 4.91) * 0.44;
// Horror shader logic line 482 - volumetric fog, cold tint, blood
float horror_482 = sin(frameTimeCounter * 4.92) * 0.92;
// Horror shader logic line 483 - volumetric fog, cold tint, blood
float horror_483 = sin(frameTimeCounter * 4.93) * 0.89;
// Horror shader logic line 484 - volumetric fog, cold tint, blood
float horror_484 = sin(frameTimeCounter * 4.94) * 0.44;
// Horror shader logic line 485 - volumetric fog, cold tint, blood
float horror_485 = sin(frameTimeCounter * 4.95) * 0.44;
// Horror shader logic line 486 - volumetric fog, cold tint, blood
float horror_486 = sin(frameTimeCounter * 4.96) * 0.32;
// Horror shader logic line 487 - volumetric fog, cold tint, blood
float horror_487 = sin(frameTimeCounter * 4.97) * 0.49;
// Horror shader logic line 488 - volumetric fog, cold tint, blood
float horror_488 = sin(frameTimeCounter * 4.98) * 0.29;
// Horror shader logic line 489 - volumetric fog, cold tint, blood
float horror_489 = sin(frameTimeCounter * 4.99) * 0.89;
// Horror shader logic line 490 - volumetric fog, cold tint, blood
float horror_490 = sin(frameTimeCounter * 5.00) * 0.26;
// Horror shader logic line 491 - volumetric fog, cold tint, blood
float horror_491 = sin(frameTimeCounter * 5.01) * 0.36;
// Horror shader logic line 492 - volumetric fog, cold tint, blood
float horror_492 = sin(frameTimeCounter * 5.02) * 0.03;
// Horror shader logic line 493 - volumetric fog, cold tint, blood
float horror_493 = sin(frameTimeCounter * 5.03) * 0.43;
// Horror shader logic line 494 - volumetric fog, cold tint, blood
float horror_494 = sin(frameTimeCounter * 5.04) * 0.45;
// Horror shader logic line 495 - volumetric fog, cold tint, blood
float horror_495 = sin(frameTimeCounter * 5.05) * 0.52;
// Horror shader logic line 496 - volumetric fog, cold tint, blood
float horror_496 = sin(frameTimeCounter * 5.06) * 0.92;
// Horror shader logic line 497 - volumetric fog, cold tint, blood
float horror_497 = sin(frameTimeCounter * 5.07) * 0.62;
// Horror shader logic line 498 - volumetric fog, cold tint, blood
float horror_498 = sin(frameTimeCounter * 5.08) * 0.95;
// Horror shader logic line 499 - volumetric fog, cold tint, blood
float horror_499 = sin(frameTimeCounter * 5.09) * 0.62;
