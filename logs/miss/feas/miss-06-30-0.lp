\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  p0 + p1 + p2 + p3 + p4 + p5
Subject To
 R0: x0,1_2 + x0,2_2 + x0,3_2 + x0,4_2 + x0,5_2 + x1,2_2 + x1,3_2 + x1,4_2
   + x1,5_2 + x2,3_2 + x2,4_2 + x2,5_2 + x3,4_2 + x3,5_2 + x4,5_2 = 1
 R1: x0,1_10 + x0,2_10 + x0,3_10 + x0,4_10 + x0,5_10 + x1,2_10 + x1,3_10
   + x1,4_10 + x1,5_10 + x2,3_10 + x2,4_10 + x2,5_10 + x3,4_10 + x3,5_10
   + x4,5_10 = 1
 R2: x0,1_16 + x0,2_16 + x0,3_16 + x0,4_16 + x0,5_16 + x1,2_16 + x1,3_16
   + x1,4_16 + x1,5_16 + x2,3_16 + x2,4_16 + x2,5_16 + x3,4_16 + x3,5_16
   + x4,5_16 = 1
 R3: x0,1_17 + x0,2_17 + x0,3_17 + x0,4_17 + x0,5_17 + x1,2_17 + x1,3_17
   + x1,4_17 + x1,5_17 + x2,3_17 + x2,4_17 + x2,5_17 + x3,4_17 + x3,5_17
   + x4,5_17 = 1
 R4: x0,1_27 + x0,2_27 + x0,3_27 + x0,4_27 + x0,5_27 + x1,2_27 + x1,3_27
   + x1,4_27 + x1,5_27 + x2,3_27 + x2,4_27 + x2,5_27 + x3,4_27 + x3,5_27
   + x4,5_27 = 1
 R5: x0,1_34 + x0,2_34 + x0,3_34 + x0,4_34 + x0,5_34 + x1,2_34 + x1,3_34
   + x1,4_34 + x1,5_34 + x2,3_34 + x2,4_34 + x2,5_34 + x3,4_34 + x3,5_34
   + x4,5_34 = 1
 R6: x0,1_35 + x0,2_35 + x0,3_35 + x0,4_35 + x0,5_35 + x1,2_35 + x1,3_35
   + x1,4_35 + x1,5_35 + x2,3_35 + x2,4_35 + x2,5_35 + x3,4_35 + x3,5_35
   + x4,5_35 = 1
 R7: x0,1_49 + x0,2_49 + x0,3_49 + x0,4_49 + x0,5_49 + x1,2_49 + x1,3_49
   + x1,4_49 + x1,5_49 + x2,3_49 + x2,4_49 + x2,5_49 + x3,4_49 + x3,5_49
   + x4,5_49 = 1
 R8: x0,1_51 + x0,2_51 + x0,3_51 + x0,4_51 + x0,5_51 + x1,2_51 + x1,3_51
   + x1,4_51 + x1,5_51 + x2,3_51 + x2,4_51 + x2,5_51 + x3,4_51 + x3,5_51
   + x4,5_51 = 1
 R9: x0,1_2 + x0,1_10 + x0,1_16 + x0,1_17 + x0,1_27 + x0,1_34 + x0,1_35
   + x0,1_49 + x0,1_51 <= 1
 R10: x0,2_2 + x0,2_10 + x0,2_16 + x0,2_17 + x0,2_27 + x0,2_34 + x0,2_35
   + x0,2_49 + x0,2_51 <= 1
 R11: x0,3_2 + x0,3_10 + x0,3_16 + x0,3_17 + x0,3_27 + x0,3_34 + x0,3_35
   + x0,3_49 + x0,3_51 <= 1
 R12: x0,4_2 + x0,4_10 + x0,4_16 + x0,4_17 + x0,4_27 + x0,4_34 + x0,4_35
   + x0,4_49 + x0,4_51 <= 1
 R13: x0,5_2 + x0,5_10 + x0,5_16 + x0,5_17 + x0,5_27 + x0,5_34 + x0,5_35
   + x0,5_49 + x0,5_51 <= 1
 R14: x1,2_2 + x1,2_10 + x1,2_16 + x1,2_17 + x1,2_27 + x1,2_34 + x1,2_35
   + x1,2_49 + x1,2_51 <= 1
 R15: x1,3_2 + x1,3_10 + x1,3_16 + x1,3_17 + x1,3_27 + x1,3_34 + x1,3_35
   + x1,3_49 + x1,3_51 <= 1
 R16: x1,4_2 + x1,4_10 + x1,4_16 + x1,4_17 + x1,4_27 + x1,4_34 + x1,4_35
   + x1,4_49 + x1,4_51 <= 1
 R17: x1,5_2 + x1,5_10 + x1,5_16 + x1,5_17 + x1,5_27 + x1,5_34 + x1,5_35
   + x1,5_49 + x1,5_51 <= 1
 R18: x2,3_2 + x2,3_10 + x2,3_16 + x2,3_17 + x2,3_27 + x2,3_34 + x2,3_35
   + x2,3_49 + x2,3_51 <= 1
 R19: x2,4_2 + x2,4_10 + x2,4_16 + x2,4_17 + x2,4_27 + x2,4_34 + x2,4_35
   + x2,4_49 + x2,4_51 <= 1
 R20: x2,5_2 + x2,5_10 + x2,5_16 + x2,5_17 + x2,5_27 + x2,5_34 + x2,5_35
   + x2,5_49 + x2,5_51 <= 1
 R21: x3,4_2 + x3,4_10 + x3,4_16 + x3,4_17 + x3,4_27 + x3,4_34 + x3,4_35
   + x3,4_49 + x3,4_51 <= 1
 R22: x3,5_2 + x3,5_10 + x3,5_16 + x3,5_17 + x3,5_27 + x3,5_34 + x3,5_35
   + x3,5_49 + x3,5_51 <= 1
 R23: x4,5_2 + x4,5_10 + x4,5_16 + x4,5_17 + x4,5_27 + x4,5_34 + x4,5_35
   + x4,5_49 + x4,5_51 <= 1
 R24: p0 - p1 <= -1
 R25: - 2 x0,1_2 - p0 + p1 >= 0
 R26: 241 x0,1_2 - p0 + p1 <= 243
 R27: - 10 x0,1_10 - p0 + p1 >= 0
 R28: 241 x0,1_10 - p0 + p1 <= 251
 R29: - 16 x0,1_16 - p0 + p1 >= 0
 R30: 241 x0,1_16 - p0 + p1 <= 257
 R31: - 17 x0,1_17 - p0 + p1 >= 0
 R32: 241 x0,1_17 - p0 + p1 <= 258
 R33: - 27 x0,1_27 - p0 + p1 >= 0
 R34: 241 x0,1_27 - p0 + p1 <= 268
 R35: - 34 x0,1_34 - p0 + p1 >= 0
 R36: 241 x0,1_34 - p0 + p1 <= 275
 R37: - 35 x0,1_35 - p0 + p1 >= 0
 R38: 241 x0,1_35 - p0 + p1 <= 276
 R39: - 49 x0,1_49 - p0 + p1 >= 0
 R40: 241 x0,1_49 - p0 + p1 <= 290
 R41: - 51 x0,1_51 - p0 + p1 >= 0
 R42: 241 x0,1_51 - p0 + p1 <= 292
 R43: p0 - p2 <= -1
 R44: - 2 x0,2_2 - p0 + p2 >= 0
 R45: 241 x0,2_2 - p0 + p2 <= 243
 R46: - 10 x0,2_10 - p0 + p2 >= 0
 R47: 241 x0,2_10 - p0 + p2 <= 251
 R48: - 16 x0,2_16 - p0 + p2 >= 0
 R49: 241 x0,2_16 - p0 + p2 <= 257
 R50: - 17 x0,2_17 - p0 + p2 >= 0
 R51: 241 x0,2_17 - p0 + p2 <= 258
 R52: - 27 x0,2_27 - p0 + p2 >= 0
 R53: 241 x0,2_27 - p0 + p2 <= 268
 R54: - 34 x0,2_34 - p0 + p2 >= 0
 R55: 241 x0,2_34 - p0 + p2 <= 275
 R56: - 35 x0,2_35 - p0 + p2 >= 0
 R57: 241 x0,2_35 - p0 + p2 <= 276
 R58: - 49 x0,2_49 - p0 + p2 >= 0
 R59: 241 x0,2_49 - p0 + p2 <= 290
 R60: - 51 x0,2_51 - p0 + p2 >= 0
 R61: 241 x0,2_51 - p0 + p2 <= 292
 R62: p0 - p3 <= -1
 R63: - 2 x0,3_2 - p0 + p3 >= 0
 R64: 241 x0,3_2 - p0 + p3 <= 243
 R65: - 10 x0,3_10 - p0 + p3 >= 0
 R66: 241 x0,3_10 - p0 + p3 <= 251
 R67: - 16 x0,3_16 - p0 + p3 >= 0
 R68: 241 x0,3_16 - p0 + p3 <= 257
 R69: - 17 x0,3_17 - p0 + p3 >= 0
 R70: 241 x0,3_17 - p0 + p3 <= 258
 R71: - 27 x0,3_27 - p0 + p3 >= 0
 R72: 241 x0,3_27 - p0 + p3 <= 268
 R73: - 34 x0,3_34 - p0 + p3 >= 0
 R74: 241 x0,3_34 - p0 + p3 <= 275
 R75: - 35 x0,3_35 - p0 + p3 >= 0
 R76: 241 x0,3_35 - p0 + p3 <= 276
 R77: - 49 x0,3_49 - p0 + p3 >= 0
 R78: 241 x0,3_49 - p0 + p3 <= 290
 R79: - 51 x0,3_51 - p0 + p3 >= 0
 R80: 241 x0,3_51 - p0 + p3 <= 292
 R81: p0 - p4 <= -1
 R82: - 2 x0,4_2 - p0 + p4 >= 0
 R83: 241 x0,4_2 - p0 + p4 <= 243
 R84: - 10 x0,4_10 - p0 + p4 >= 0
 R85: 241 x0,4_10 - p0 + p4 <= 251
 R86: - 16 x0,4_16 - p0 + p4 >= 0
 R87: 241 x0,4_16 - p0 + p4 <= 257
 R88: - 17 x0,4_17 - p0 + p4 >= 0
 R89: 241 x0,4_17 - p0 + p4 <= 258
 R90: - 27 x0,4_27 - p0 + p4 >= 0
 R91: 241 x0,4_27 - p0 + p4 <= 268
 R92: - 34 x0,4_34 - p0 + p4 >= 0
 R93: 241 x0,4_34 - p0 + p4 <= 275
 R94: - 35 x0,4_35 - p0 + p4 >= 0
 R95: 241 x0,4_35 - p0 + p4 <= 276
 R96: - 49 x0,4_49 - p0 + p4 >= 0
 R97: 241 x0,4_49 - p0 + p4 <= 290
 R98: - 51 x0,4_51 - p0 + p4 >= 0
 R99: 241 x0,4_51 - p0 + p4 <= 292
 R100: p0 - p5 <= -1
 R101: - 2 x0,5_2 - p0 + p5 >= 0
 R102: 241 x0,5_2 - p0 + p5 <= 243
 R103: - 10 x0,5_10 - p0 + p5 >= 0
 R104: 241 x0,5_10 - p0 + p5 <= 251
 R105: - 16 x0,5_16 - p0 + p5 >= 0
 R106: 241 x0,5_16 - p0 + p5 <= 257
 R107: - 17 x0,5_17 - p0 + p5 >= 0
 R108: 241 x0,5_17 - p0 + p5 <= 258
 R109: - 27 x0,5_27 - p0 + p5 >= 0
 R110: 241 x0,5_27 - p0 + p5 <= 268
 R111: - 34 x0,5_34 - p0 + p5 >= 0
 R112: 241 x0,5_34 - p0 + p5 <= 275
 R113: - 35 x0,5_35 - p0 + p5 >= 0
 R114: 241 x0,5_35 - p0 + p5 <= 276
 R115: - 49 x0,5_49 - p0 + p5 >= 0
 R116: 241 x0,5_49 - p0 + p5 <= 290
 R117: - 51 x0,5_51 - p0 + p5 >= 0
 R118: 241 x0,5_51 - p0 + p5 <= 292
 R119: p1 - p2 <= -1
 R120: - 2 x1,2_2 - p1 + p2 >= 0
 R121: 241 x1,2_2 - p1 + p2 <= 243
 R122: - 10 x1,2_10 - p1 + p2 >= 0
 R123: 241 x1,2_10 - p1 + p2 <= 251
 R124: - 16 x1,2_16 - p1 + p2 >= 0
 R125: 241 x1,2_16 - p1 + p2 <= 257
 R126: - 17 x1,2_17 - p1 + p2 >= 0
 R127: 241 x1,2_17 - p1 + p2 <= 258
 R128: - 27 x1,2_27 - p1 + p2 >= 0
 R129: 241 x1,2_27 - p1 + p2 <= 268
 R130: - 34 x1,2_34 - p1 + p2 >= 0
 R131: 241 x1,2_34 - p1 + p2 <= 275
 R132: - 35 x1,2_35 - p1 + p2 >= 0
 R133: 241 x1,2_35 - p1 + p2 <= 276
 R134: - 49 x1,2_49 - p1 + p2 >= 0
 R135: 241 x1,2_49 - p1 + p2 <= 290
 R136: - 51 x1,2_51 - p1 + p2 >= 0
 R137: 241 x1,2_51 - p1 + p2 <= 292
 R138: p1 - p3 <= -1
 R139: - 2 x1,3_2 - p1 + p3 >= 0
 R140: 241 x1,3_2 - p1 + p3 <= 243
 R141: - 10 x1,3_10 - p1 + p3 >= 0
 R142: 241 x1,3_10 - p1 + p3 <= 251
 R143: - 16 x1,3_16 - p1 + p3 >= 0
 R144: 241 x1,3_16 - p1 + p3 <= 257
 R145: - 17 x1,3_17 - p1 + p3 >= 0
 R146: 241 x1,3_17 - p1 + p3 <= 258
 R147: - 27 x1,3_27 - p1 + p3 >= 0
 R148: 241 x1,3_27 - p1 + p3 <= 268
 R149: - 34 x1,3_34 - p1 + p3 >= 0
 R150: 241 x1,3_34 - p1 + p3 <= 275
 R151: - 35 x1,3_35 - p1 + p3 >= 0
 R152: 241 x1,3_35 - p1 + p3 <= 276
 R153: - 49 x1,3_49 - p1 + p3 >= 0
 R154: 241 x1,3_49 - p1 + p3 <= 290
 R155: - 51 x1,3_51 - p1 + p3 >= 0
 R156: 241 x1,3_51 - p1 + p3 <= 292
 R157: p1 - p4 <= -1
 R158: - 2 x1,4_2 - p1 + p4 >= 0
 R159: 241 x1,4_2 - p1 + p4 <= 243
 R160: - 10 x1,4_10 - p1 + p4 >= 0
 R161: 241 x1,4_10 - p1 + p4 <= 251
 R162: - 16 x1,4_16 - p1 + p4 >= 0
 R163: 241 x1,4_16 - p1 + p4 <= 257
 R164: - 17 x1,4_17 - p1 + p4 >= 0
 R165: 241 x1,4_17 - p1 + p4 <= 258
 R166: - 27 x1,4_27 - p1 + p4 >= 0
 R167: 241 x1,4_27 - p1 + p4 <= 268
 R168: - 34 x1,4_34 - p1 + p4 >= 0
 R169: 241 x1,4_34 - p1 + p4 <= 275
 R170: - 35 x1,4_35 - p1 + p4 >= 0
 R171: 241 x1,4_35 - p1 + p4 <= 276
 R172: - 49 x1,4_49 - p1 + p4 >= 0
 R173: 241 x1,4_49 - p1 + p4 <= 290
 R174: - 51 x1,4_51 - p1 + p4 >= 0
 R175: 241 x1,4_51 - p1 + p4 <= 292
 R176: p1 - p5 <= -1
 R177: - 2 x1,5_2 - p1 + p5 >= 0
 R178: 241 x1,5_2 - p1 + p5 <= 243
 R179: - 10 x1,5_10 - p1 + p5 >= 0
 R180: 241 x1,5_10 - p1 + p5 <= 251
 R181: - 16 x1,5_16 - p1 + p5 >= 0
 R182: 241 x1,5_16 - p1 + p5 <= 257
 R183: - 17 x1,5_17 - p1 + p5 >= 0
 R184: 241 x1,5_17 - p1 + p5 <= 258
 R185: - 27 x1,5_27 - p1 + p5 >= 0
 R186: 241 x1,5_27 - p1 + p5 <= 268
 R187: - 34 x1,5_34 - p1 + p5 >= 0
 R188: 241 x1,5_34 - p1 + p5 <= 275
 R189: - 35 x1,5_35 - p1 + p5 >= 0
 R190: 241 x1,5_35 - p1 + p5 <= 276
 R191: - 49 x1,5_49 - p1 + p5 >= 0
 R192: 241 x1,5_49 - p1 + p5 <= 290
 R193: - 51 x1,5_51 - p1 + p5 >= 0
 R194: 241 x1,5_51 - p1 + p5 <= 292
 R195: p2 - p3 <= -1
 R196: - 2 x2,3_2 - p2 + p3 >= 0
 R197: 241 x2,3_2 - p2 + p3 <= 243
 R198: - 10 x2,3_10 - p2 + p3 >= 0
 R199: 241 x2,3_10 - p2 + p3 <= 251
 R200: - 16 x2,3_16 - p2 + p3 >= 0
 R201: 241 x2,3_16 - p2 + p3 <= 257
 R202: - 17 x2,3_17 - p2 + p3 >= 0
 R203: 241 x2,3_17 - p2 + p3 <= 258
 R204: - 27 x2,3_27 - p2 + p3 >= 0
 R205: 241 x2,3_27 - p2 + p3 <= 268
 R206: - 34 x2,3_34 - p2 + p3 >= 0
 R207: 241 x2,3_34 - p2 + p3 <= 275
 R208: - 35 x2,3_35 - p2 + p3 >= 0
 R209: 241 x2,3_35 - p2 + p3 <= 276
 R210: - 49 x2,3_49 - p2 + p3 >= 0
 R211: 241 x2,3_49 - p2 + p3 <= 290
 R212: - 51 x2,3_51 - p2 + p3 >= 0
 R213: 241 x2,3_51 - p2 + p3 <= 292
 R214: p2 - p4 <= -1
 R215: - 2 x2,4_2 - p2 + p4 >= 0
 R216: 241 x2,4_2 - p2 + p4 <= 243
 R217: - 10 x2,4_10 - p2 + p4 >= 0
 R218: 241 x2,4_10 - p2 + p4 <= 251
 R219: - 16 x2,4_16 - p2 + p4 >= 0
 R220: 241 x2,4_16 - p2 + p4 <= 257
 R221: - 17 x2,4_17 - p2 + p4 >= 0
 R222: 241 x2,4_17 - p2 + p4 <= 258
 R223: - 27 x2,4_27 - p2 + p4 >= 0
 R224: 241 x2,4_27 - p2 + p4 <= 268
 R225: - 34 x2,4_34 - p2 + p4 >= 0
 R226: 241 x2,4_34 - p2 + p4 <= 275
 R227: - 35 x2,4_35 - p2 + p4 >= 0
 R228: 241 x2,4_35 - p2 + p4 <= 276
 R229: - 49 x2,4_49 - p2 + p4 >= 0
 R230: 241 x2,4_49 - p2 + p4 <= 290
 R231: - 51 x2,4_51 - p2 + p4 >= 0
 R232: 241 x2,4_51 - p2 + p4 <= 292
 R233: p2 - p5 <= -1
 R234: - 2 x2,5_2 - p2 + p5 >= 0
 R235: 241 x2,5_2 - p2 + p5 <= 243
 R236: - 10 x2,5_10 - p2 + p5 >= 0
 R237: 241 x2,5_10 - p2 + p5 <= 251
 R238: - 16 x2,5_16 - p2 + p5 >= 0
 R239: 241 x2,5_16 - p2 + p5 <= 257
 R240: - 17 x2,5_17 - p2 + p5 >= 0
 R241: 241 x2,5_17 - p2 + p5 <= 258
 R242: - 27 x2,5_27 - p2 + p5 >= 0
 R243: 241 x2,5_27 - p2 + p5 <= 268
 R244: - 34 x2,5_34 - p2 + p5 >= 0
 R245: 241 x2,5_34 - p2 + p5 <= 275
 R246: - 35 x2,5_35 - p2 + p5 >= 0
 R247: 241 x2,5_35 - p2 + p5 <= 276
 R248: - 49 x2,5_49 - p2 + p5 >= 0
 R249: 241 x2,5_49 - p2 + p5 <= 290
 R250: - 51 x2,5_51 - p2 + p5 >= 0
 R251: 241 x2,5_51 - p2 + p5 <= 292
 R252: p3 - p4 <= -1
 R253: - 2 x3,4_2 - p3 + p4 >= 0
 R254: 241 x3,4_2 - p3 + p4 <= 243
 R255: - 10 x3,4_10 - p3 + p4 >= 0
 R256: 241 x3,4_10 - p3 + p4 <= 251
 R257: - 16 x3,4_16 - p3 + p4 >= 0
 R258: 241 x3,4_16 - p3 + p4 <= 257
 R259: - 17 x3,4_17 - p3 + p4 >= 0
 R260: 241 x3,4_17 - p3 + p4 <= 258
 R261: - 27 x3,4_27 - p3 + p4 >= 0
 R262: 241 x3,4_27 - p3 + p4 <= 268
 R263: - 34 x3,4_34 - p3 + p4 >= 0
 R264: 241 x3,4_34 - p3 + p4 <= 275
 R265: - 35 x3,4_35 - p3 + p4 >= 0
 R266: 241 x3,4_35 - p3 + p4 <= 276
 R267: - 49 x3,4_49 - p3 + p4 >= 0
 R268: 241 x3,4_49 - p3 + p4 <= 290
 R269: - 51 x3,4_51 - p3 + p4 >= 0
 R270: 241 x3,4_51 - p3 + p4 <= 292
 R271: p3 - p5 <= -1
 R272: - 2 x3,5_2 - p3 + p5 >= 0
 R273: 241 x3,5_2 - p3 + p5 <= 243
 R274: - 10 x3,5_10 - p3 + p5 >= 0
 R275: 241 x3,5_10 - p3 + p5 <= 251
 R276: - 16 x3,5_16 - p3 + p5 >= 0
 R277: 241 x3,5_16 - p3 + p5 <= 257
 R278: - 17 x3,5_17 - p3 + p5 >= 0
 R279: 241 x3,5_17 - p3 + p5 <= 258
 R280: - 27 x3,5_27 - p3 + p5 >= 0
 R281: 241 x3,5_27 - p3 + p5 <= 268
 R282: - 34 x3,5_34 - p3 + p5 >= 0
 R283: 241 x3,5_34 - p3 + p5 <= 275
 R284: - 35 x3,5_35 - p3 + p5 >= 0
 R285: 241 x3,5_35 - p3 + p5 <= 276
 R286: - 49 x3,5_49 - p3 + p5 >= 0
 R287: 241 x3,5_49 - p3 + p5 <= 290
 R288: - 51 x3,5_51 - p3 + p5 >= 0
 R289: 241 x3,5_51 - p3 + p5 <= 292
 R290: p4 - p5 <= -1
 R291: - 2 x4,5_2 - p4 + p5 >= 0
 R292: 241 x4,5_2 - p4 + p5 <= 243
 R293: - 10 x4,5_10 - p4 + p5 >= 0
 R294: 241 x4,5_10 - p4 + p5 <= 251
 R295: - 16 x4,5_16 - p4 + p5 >= 0
 R296: 241 x4,5_16 - p4 + p5 <= 257
 R297: - 17 x4,5_17 - p4 + p5 >= 0
 R298: 241 x4,5_17 - p4 + p5 <= 258
 R299: - 27 x4,5_27 - p4 + p5 >= 0
 R300: 241 x4,5_27 - p4 + p5 <= 268
 R301: - 34 x4,5_34 - p4 + p5 >= 0
 R302: 241 x4,5_34 - p4 + p5 <= 275
 R303: - 35 x4,5_35 - p4 + p5 >= 0
 R304: 241 x4,5_35 - p4 + p5 <= 276
 R305: - 49 x4,5_49 - p4 + p5 >= 0
 R306: 241 x4,5_49 - p4 + p5 <= 290
 R307: - 51 x4,5_51 - p4 + p5 >= 0
 R308: 241 x4,5_51 - p4 + p5 <= 292
Bounds
Binaries
 x0,1_2 x0,1_10 x0,1_16 x0,1_17 x0,1_27 x0,1_34 x0,1_35 x0,1_49 x0,1_51
 x0,2_2 x0,2_10 x0,2_16 x0,2_17 x0,2_27 x0,2_34 x0,2_35 x0,2_49 x0,2_51
 x0,3_2 x0,3_10 x0,3_16 x0,3_17 x0,3_27 x0,3_34 x0,3_35 x0,3_49 x0,3_51
 x0,4_2 x0,4_10 x0,4_16 x0,4_17 x0,4_27 x0,4_34 x0,4_35 x0,4_49 x0,4_51
 x0,5_2 x0,5_10 x0,5_16 x0,5_17 x0,5_27 x0,5_34 x0,5_35 x0,5_49 x0,5_51
 x1,2_2 x1,2_10 x1,2_16 x1,2_17 x1,2_27 x1,2_34 x1,2_35 x1,2_49 x1,2_51
 x1,3_2 x1,3_10 x1,3_16 x1,3_17 x1,3_27 x1,3_34 x1,3_35 x1,3_49 x1,3_51
 x1,4_2 x1,4_10 x1,4_16 x1,4_17 x1,4_27 x1,4_34 x1,4_35 x1,4_49 x1,4_51
 x1,5_2 x1,5_10 x1,5_16 x1,5_17 x1,5_27 x1,5_34 x1,5_35 x1,5_49 x1,5_51
 x2,3_2 x2,3_10 x2,3_16 x2,3_17 x2,3_27 x2,3_34 x2,3_35 x2,3_49 x2,3_51
 x2,4_2 x2,4_10 x2,4_16 x2,4_17 x2,4_27 x2,4_34 x2,4_35 x2,4_49 x2,4_51
 x2,5_2 x2,5_10 x2,5_16 x2,5_17 x2,5_27 x2,5_34 x2,5_35 x2,5_49 x2,5_51
 x3,4_2 x3,4_10 x3,4_16 x3,4_17 x3,4_27 x3,4_34 x3,4_35 x3,4_49 x3,4_51
 x3,5_2 x3,5_10 x3,5_16 x3,5_17 x3,5_27 x3,5_34 x3,5_35 x3,5_49 x3,5_51
 x4,5_2 x4,5_10 x4,5_16 x4,5_17 x4,5_27 x4,5_34 x4,5_35 x4,5_49 x4,5_51
Generals
 p0 p1 p2 p3 p4 p5
End
