\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  z0 + z1 + z2 + z3 + z4 + z5
Subject To
 R0: x0,1_7 + x0,1_26 + x0,1_29 + x0,1_48 + x0,1_55 - z1 <= 0
 R1: x0,2_7 + x0,2_26 + x0,2_29 + x0,2_48 + x0,2_55 - z2 <= 0
 R2: x0,3_7 + x0,3_26 + x0,3_29 + x0,3_48 + x0,3_55 - z3 <= 0
 R3: x0,4_7 + x0,4_26 + x0,4_29 + x0,4_48 + x0,4_55 - z4 <= 0
 R4: x0,5_7 + x0,5_26 + x0,5_29 + x0,5_48 + x0,5_55 - z5 <= 0
 R5: x1,2_7 + x1,2_26 + x1,2_29 + x1,2_48 + x1,2_55 - z2 <= 0
 R6: x1,3_7 + x1,3_26 + x1,3_29 + x1,3_48 + x1,3_55 - z3 <= 0
 R7: x1,4_7 + x1,4_26 + x1,4_29 + x1,4_48 + x1,4_55 - z4 <= 0
 R8: x1,5_7 + x1,5_26 + x1,5_29 + x1,5_48 + x1,5_55 - z5 <= 0
 R9: x2,3_7 + x2,3_26 + x2,3_29 + x2,3_48 + x2,3_55 - z3 <= 0
 R10: x2,4_7 + x2,4_26 + x2,4_29 + x2,4_48 + x2,4_55 - z4 <= 0
 R11: x2,5_7 + x2,5_26 + x2,5_29 + x2,5_48 + x2,5_55 - z5 <= 0
 R12: x3,4_7 + x3,4_26 + x3,4_29 + x3,4_48 + x3,4_55 - z4 <= 0
 R13: x3,5_7 + x3,5_26 + x3,5_29 + x3,5_48 + x3,5_55 - z5 <= 0
 R14: x4,5_7 + x4,5_26 + x4,5_29 + x4,5_48 + x4,5_55 - z5 <= 0
 R15: x0,1_7 + x0,2_7 + x0,3_7 + x0,4_7 + x0,5_7 + x1,2_7 + x1,3_7 + x1,4_7
   + x1,5_7 + x2,3_7 + x2,4_7 + x2,5_7 + x3,4_7 + x3,5_7 + x4,5_7 = 1
 R16: x0,1_26 + x0,2_26 + x0,3_26 + x0,4_26 + x0,5_26 + x1,2_26 + x1,3_26
   + x1,4_26 + x1,5_26 + x2,3_26 + x2,4_26 + x2,5_26 + x3,4_26 + x3,5_26
   + x4,5_26 = 1
 R17: x0,1_29 + x0,2_29 + x0,3_29 + x0,4_29 + x0,5_29 + x1,2_29 + x1,3_29
   + x1,4_29 + x1,5_29 + x2,3_29 + x2,4_29 + x2,5_29 + x3,4_29 + x3,5_29
   + x4,5_29 = 1
 R18: x0,1_48 + x0,2_48 + x0,3_48 + x0,4_48 + x0,5_48 + x1,2_48 + x1,3_48
   + x1,4_48 + x1,5_48 + x2,3_48 + x2,4_48 + x2,5_48 + x3,4_48 + x3,5_48
   + x4,5_48 = 1
 R19: x0,1_55 + x0,2_55 + x0,3_55 + x0,4_55 + x0,5_55 + x1,2_55 + x1,3_55
   + x1,4_55 + x1,5_55 + x2,3_55 + x2,4_55 + x2,5_55 + x3,4_55 + x3,5_55
   + x4,5_55 = 1
 R20: p0 - p1 <= -1
 R21: - 7 x0,1_7 - p0 + p1 >= 0
 R22: 165 x0,1_7 - p0 + p1 <= 172
 R23: - 26 x0,1_26 - p0 + p1 >= 0
 R24: 165 x0,1_26 - p0 + p1 <= 191
 R25: - 29 x0,1_29 - p0 + p1 >= 0
 R26: 165 x0,1_29 - p0 + p1 <= 194
 R27: - 48 x0,1_48 - p0 + p1 >= 0
 R28: 165 x0,1_48 - p0 + p1 <= 213
 R29: - 55 x0,1_55 - p0 + p1 >= 0
 R30: 165 x0,1_55 - p0 + p1 <= 220
 R31: p0 - p2 <= -1
 R32: - 7 x0,2_7 - p0 + p2 >= 0
 R33: 165 x0,2_7 - p0 + p2 <= 172
 R34: - 26 x0,2_26 - p0 + p2 >= 0
 R35: 165 x0,2_26 - p0 + p2 <= 191
 R36: - 29 x0,2_29 - p0 + p2 >= 0
 R37: 165 x0,2_29 - p0 + p2 <= 194
 R38: - 48 x0,2_48 - p0 + p2 >= 0
 R39: 165 x0,2_48 - p0 + p2 <= 213
 R40: - 55 x0,2_55 - p0 + p2 >= 0
 R41: 165 x0,2_55 - p0 + p2 <= 220
 R42: p0 - p3 <= -1
 R43: - 7 x0,3_7 - p0 + p3 >= 0
 R44: 165 x0,3_7 - p0 + p3 <= 172
 R45: - 26 x0,3_26 - p0 + p3 >= 0
 R46: 165 x0,3_26 - p0 + p3 <= 191
 R47: - 29 x0,3_29 - p0 + p3 >= 0
 R48: 165 x0,3_29 - p0 + p3 <= 194
 R49: - 48 x0,3_48 - p0 + p3 >= 0
 R50: 165 x0,3_48 - p0 + p3 <= 213
 R51: - 55 x0,3_55 - p0 + p3 >= 0
 R52: 165 x0,3_55 - p0 + p3 <= 220
 R53: p0 - p4 <= -1
 R54: - 7 x0,4_7 - p0 + p4 >= 0
 R55: 165 x0,4_7 - p0 + p4 <= 172
 R56: - 26 x0,4_26 - p0 + p4 >= 0
 R57: 165 x0,4_26 - p0 + p4 <= 191
 R58: - 29 x0,4_29 - p0 + p4 >= 0
 R59: 165 x0,4_29 - p0 + p4 <= 194
 R60: - 48 x0,4_48 - p0 + p4 >= 0
 R61: 165 x0,4_48 - p0 + p4 <= 213
 R62: - 55 x0,4_55 - p0 + p4 >= 0
 R63: 165 x0,4_55 - p0 + p4 <= 220
 R64: p0 - p5 <= -1
 R65: - 7 x0,5_7 - p0 + p5 >= 0
 R66: 165 x0,5_7 - p0 + p5 <= 172
 R67: - 26 x0,5_26 - p0 + p5 >= 0
 R68: 165 x0,5_26 - p0 + p5 <= 191
 R69: - 29 x0,5_29 - p0 + p5 >= 0
 R70: 165 x0,5_29 - p0 + p5 <= 194
 R71: - 48 x0,5_48 - p0 + p5 >= 0
 R72: 165 x0,5_48 - p0 + p5 <= 213
 R73: - 55 x0,5_55 - p0 + p5 >= 0
 R74: 165 x0,5_55 - p0 + p5 <= 220
 R75: p1 - p2 <= -1
 R76: - 7 x1,2_7 - p1 + p2 >= 0
 R77: 165 x1,2_7 - p1 + p2 <= 172
 R78: - 26 x1,2_26 - p1 + p2 >= 0
 R79: 165 x1,2_26 - p1 + p2 <= 191
 R80: - 29 x1,2_29 - p1 + p2 >= 0
 R81: 165 x1,2_29 - p1 + p2 <= 194
 R82: - 48 x1,2_48 - p1 + p2 >= 0
 R83: 165 x1,2_48 - p1 + p2 <= 213
 R84: - 55 x1,2_55 - p1 + p2 >= 0
 R85: 165 x1,2_55 - p1 + p2 <= 220
 R86: p1 - p3 <= -1
 R87: - 7 x1,3_7 - p1 + p3 >= 0
 R88: 165 x1,3_7 - p1 + p3 <= 172
 R89: - 26 x1,3_26 - p1 + p3 >= 0
 R90: 165 x1,3_26 - p1 + p3 <= 191
 R91: - 29 x1,3_29 - p1 + p3 >= 0
 R92: 165 x1,3_29 - p1 + p3 <= 194
 R93: - 48 x1,3_48 - p1 + p3 >= 0
 R94: 165 x1,3_48 - p1 + p3 <= 213
 R95: - 55 x1,3_55 - p1 + p3 >= 0
 R96: 165 x1,3_55 - p1 + p3 <= 220
 R97: p1 - p4 <= -1
 R98: - 7 x1,4_7 - p1 + p4 >= 0
 R99: 165 x1,4_7 - p1 + p4 <= 172
 R100: - 26 x1,4_26 - p1 + p4 >= 0
 R101: 165 x1,4_26 - p1 + p4 <= 191
 R102: - 29 x1,4_29 - p1 + p4 >= 0
 R103: 165 x1,4_29 - p1 + p4 <= 194
 R104: - 48 x1,4_48 - p1 + p4 >= 0
 R105: 165 x1,4_48 - p1 + p4 <= 213
 R106: - 55 x1,4_55 - p1 + p4 >= 0
 R107: 165 x1,4_55 - p1 + p4 <= 220
 R108: p1 - p5 <= -1
 R109: - 7 x1,5_7 - p1 + p5 >= 0
 R110: 165 x1,5_7 - p1 + p5 <= 172
 R111: - 26 x1,5_26 - p1 + p5 >= 0
 R112: 165 x1,5_26 - p1 + p5 <= 191
 R113: - 29 x1,5_29 - p1 + p5 >= 0
 R114: 165 x1,5_29 - p1 + p5 <= 194
 R115: - 48 x1,5_48 - p1 + p5 >= 0
 R116: 165 x1,5_48 - p1 + p5 <= 213
 R117: - 55 x1,5_55 - p1 + p5 >= 0
 R118: 165 x1,5_55 - p1 + p5 <= 220
 R119: p2 - p3 <= -1
 R120: - 7 x2,3_7 - p2 + p3 >= 0
 R121: 165 x2,3_7 - p2 + p3 <= 172
 R122: - 26 x2,3_26 - p2 + p3 >= 0
 R123: 165 x2,3_26 - p2 + p3 <= 191
 R124: - 29 x2,3_29 - p2 + p3 >= 0
 R125: 165 x2,3_29 - p2 + p3 <= 194
 R126: - 48 x2,3_48 - p2 + p3 >= 0
 R127: 165 x2,3_48 - p2 + p3 <= 213
 R128: - 55 x2,3_55 - p2 + p3 >= 0
 R129: 165 x2,3_55 - p2 + p3 <= 220
 R130: p2 - p4 <= -1
 R131: - 7 x2,4_7 - p2 + p4 >= 0
 R132: 165 x2,4_7 - p2 + p4 <= 172
 R133: - 26 x2,4_26 - p2 + p4 >= 0
 R134: 165 x2,4_26 - p2 + p4 <= 191
 R135: - 29 x2,4_29 - p2 + p4 >= 0
 R136: 165 x2,4_29 - p2 + p4 <= 194
 R137: - 48 x2,4_48 - p2 + p4 >= 0
 R138: 165 x2,4_48 - p2 + p4 <= 213
 R139: - 55 x2,4_55 - p2 + p4 >= 0
 R140: 165 x2,4_55 - p2 + p4 <= 220
 R141: p2 - p5 <= -1
 R142: - 7 x2,5_7 - p2 + p5 >= 0
 R143: 165 x2,5_7 - p2 + p5 <= 172
 R144: - 26 x2,5_26 - p2 + p5 >= 0
 R145: 165 x2,5_26 - p2 + p5 <= 191
 R146: - 29 x2,5_29 - p2 + p5 >= 0
 R147: 165 x2,5_29 - p2 + p5 <= 194
 R148: - 48 x2,5_48 - p2 + p5 >= 0
 R149: 165 x2,5_48 - p2 + p5 <= 213
 R150: - 55 x2,5_55 - p2 + p5 >= 0
 R151: 165 x2,5_55 - p2 + p5 <= 220
 R152: p3 - p4 <= -1
 R153: - 7 x3,4_7 - p3 + p4 >= 0
 R154: 165 x3,4_7 - p3 + p4 <= 172
 R155: - 26 x3,4_26 - p3 + p4 >= 0
 R156: 165 x3,4_26 - p3 + p4 <= 191
 R157: - 29 x3,4_29 - p3 + p4 >= 0
 R158: 165 x3,4_29 - p3 + p4 <= 194
 R159: - 48 x3,4_48 - p3 + p4 >= 0
 R160: 165 x3,4_48 - p3 + p4 <= 213
 R161: - 55 x3,4_55 - p3 + p4 >= 0
 R162: 165 x3,4_55 - p3 + p4 <= 220
 R163: p3 - p5 <= -1
 R164: - 7 x3,5_7 - p3 + p5 >= 0
 R165: 165 x3,5_7 - p3 + p5 <= 172
 R166: - 26 x3,5_26 - p3 + p5 >= 0
 R167: 165 x3,5_26 - p3 + p5 <= 191
 R168: - 29 x3,5_29 - p3 + p5 >= 0
 R169: 165 x3,5_29 - p3 + p5 <= 194
 R170: - 48 x3,5_48 - p3 + p5 >= 0
 R171: 165 x3,5_48 - p3 + p5 <= 213
 R172: - 55 x3,5_55 - p3 + p5 >= 0
 R173: 165 x3,5_55 - p3 + p5 <= 220
 R174: p4 - p5 <= -1
 R175: - 7 x4,5_7 - p4 + p5 >= 0
 R176: 165 x4,5_7 - p4 + p5 <= 172
 R177: - 26 x4,5_26 - p4 + p5 >= 0
 R178: 165 x4,5_26 - p4 + p5 <= 191
 R179: - 29 x4,5_29 - p4 + p5 >= 0
 R180: 165 x4,5_29 - p4 + p5 <= 194
 R181: - 48 x4,5_48 - p4 + p5 >= 0
 R182: 165 x4,5_48 - p4 + p5 <= 213
 R183: - 55 x4,5_55 - p4 + p5 >= 0
 R184: 165 x4,5_55 - p4 + p5 <= 220
 R185: z0 - z1 >= 0
 R186: z1 - z2 >= 0
 R187: z2 - z3 >= 0
 R188: z3 - z4 >= 0
 R189: z4 - z5 >= 0
Bounds
Binaries
 x0,1_7 x0,1_26 x0,1_29 x0,1_48 x0,1_55 x0,2_7 x0,2_26 x0,2_29 x0,2_48
 x0,2_55 x0,3_7 x0,3_26 x0,3_29 x0,3_48 x0,3_55 x0,4_7 x0,4_26 x0,4_29
 x0,4_48 x0,4_55 x0,5_7 x0,5_26 x0,5_29 x0,5_48 x0,5_55 x1,2_7 x1,2_26
 x1,2_29 x1,2_48 x1,2_55 x1,3_7 x1,3_26 x1,3_29 x1,3_48 x1,3_55 x1,4_7
 x1,4_26 x1,4_29 x1,4_48 x1,4_55 x1,5_7 x1,5_26 x1,5_29 x1,5_48 x1,5_55
 x2,3_7 x2,3_26 x2,3_29 x2,3_48 x2,3_55 x2,4_7 x2,4_26 x2,4_29 x2,4_48
 x2,4_55 x2,5_7 x2,5_26 x2,5_29 x2,5_48 x2,5_55 x3,4_7 x3,4_26 x3,4_29
 x3,4_48 x3,4_55 x3,5_7 x3,5_26 x3,5_29 x3,5_48 x3,5_55 x4,5_7 x4,5_26
 x4,5_29 x4,5_48 x4,5_55 z0 z1 z2 z3 z4 z5
Generals
 p0 p1 p2 p3 p4 p5
End
