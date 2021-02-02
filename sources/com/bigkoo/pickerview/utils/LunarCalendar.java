package com.bigkoo.pickerview.utils;

import android.util.Log;
import com.avos.avoscloud.AVException;
import com.kantv.flt_tencent_im.modules.message.MessageInfo;
import com.tencent.openqq.protocol.imsdk.im_common;
import java.util.GregorianCalendar;
import javax.jmdns.impl.constants.DNSConstants;

public class LunarCalendar {
    private static final int[] DAYS_BEFORE_MONTH = {0, 31, 59, 90, 120, 151, 181, AVException.USER_MOBILEPHONE_MISSING, 243, MessageInfo.MSG_STATUS_READ, 304, 334, 365};
    private static final int[] LUNAR_INFO = {8697535, 306771, 677704, 5580477, 861776, 890180, 4631225, 354893, 634178, 2404022, 306762, 6966718, 675154, 861510, 6116026, 742478, 879171, 2714935, 613195, 7642049, 300884, 674632, 5973436, 435536, 447557, 4905656, 177741, 612162, 2398135, 300874, 6703934, 870993, 959814, 5690554, 372046, 177732, 3749688, 601675, 8165055, 824659, 870984, 7185723, 742735, 354885, 4894137, 154957, 601410, 2921910, 693578, 8080061, 445009, 742726, 5593787, 318030, 678723, 3484600, 338764, 9082175, 955730, 436808, 7001404, 701775, 308805, 4871993, 677709, 337474, 4100917, 890185, 7711422, 354897, 617798, 5549755, 306511, 675139, 5056183, 861515, 9261759, 742482, 748103, 6909244, 613200, 301893, 4869049, 674637, 11216322, 435540, 447561, 7002685, 702033, 612166, 5543867, 300879, 412484, 3581239, 959818, 8827583, 371795, 702023, 5846716, 601680, 824901, 5065400, 870988, 894273, 2468534, 354889, 8039869, 154962, 601415, 6067642, 693582, 739907, 4937015, 709962, 9788095, 309843, 678728, 6630332, 338768, 693061, 4672185, 436812, 709953, 2415286, 308810, 6969149, 675409, 861766, 6198074, 873293, 371267, 3585335, 617803, 11841215, 306515, 675144, 7153084, 861519, 873028, 6138424, 744012, 355649, 2403766, 301898, 8014782, 674641, 697670, 5984954, 447054, 711234, 3496759, 603979, 8689601, 300883, 412488, 6726972, 959823, 436804, 4896312, 699980, 601666, 3970869, 824905, 8211133, 870993, 894277, 5614266, 354894, 683331, 4533943, 339275, 9082303, 693587, 739911, 7034171, 709967, 350789, 4873528, 678732, 338754, 3838902, 430921, 7809469, 436817, 709958, 5561018, 308814, 677699, 4532024, 861770, 9343806, 873042, 895559, 6731067, 355663, 306757, 4869817, 675148, 857409, 2986677};
    public static final int MAX_YEAR = 2099;
    public static final int MIN_YEAR = 1900;
    private static int[] lunar_month_days;
    private static int[] solar_1_1;

    private static int getBitInt(int i, int i2, int i3) {
        return (i & (((1 << i2) - 1) << i3)) >> i3;
    }

    static {
        int[] iArr = new int[DNSConstants.QUERY_WAIT_INTERVAL];
        // fill-array-data instruction
        iArr[0] = 1887;
        iArr[1] = 966732;
        iArr[2] = 967231;
        iArr[3] = 967733;
        iArr[4] = 968265;
        iArr[5] = 968766;
        iArr[6] = 969297;
        iArr[7] = 969798;
        iArr[8] = 970298;
        iArr[9] = 970829;
        iArr[10] = 971330;
        iArr[11] = 971830;
        iArr[12] = 972362;
        iArr[13] = 972863;
        iArr[14] = 973395;
        iArr[15] = 973896;
        iArr[16] = 974397;
        iArr[17] = 974928;
        iArr[18] = 975428;
        iArr[19] = 975929;
        iArr[20] = 976461;
        iArr[21] = 976962;
        iArr[22] = 977462;
        iArr[23] = 977994;
        iArr[24] = 978494;
        iArr[25] = 979026;
        iArr[26] = 979526;
        iArr[27] = 980026;
        iArr[28] = 980558;
        iArr[29] = 981059;
        iArr[30] = 981559;
        iArr[31] = 982091;
        iArr[32] = 982593;
        iArr[33] = 983124;
        iArr[34] = 983624;
        iArr[35] = 984124;
        iArr[36] = 984656;
        iArr[37] = 985157;
        iArr[38] = 985656;
        iArr[39] = 986189;
        iArr[40] = 986690;
        iArr[41] = 987191;
        iArr[42] = 987722;
        iArr[43] = 988222;
        iArr[44] = 988753;
        iArr[45] = 989254;
        iArr[46] = 989754;
        iArr[47] = 990286;
        iArr[48] = 990788;
        iArr[49] = 991288;
        iArr[50] = 991819;
        iArr[51] = 992319;
        iArr[52] = 992851;
        iArr[53] = 993352;
        iArr[54] = 993851;
        iArr[55] = 994383;
        iArr[56] = 994885;
        iArr[57] = 995385;
        iArr[58] = 995917;
        iArr[59] = 996418;
        iArr[60] = 996918;
        iArr[61] = 997450;
        iArr[62] = 997949;
        iArr[63] = 998481;
        iArr[64] = 998982;
        iArr[65] = 999483;
        iArr[66] = 1000014;
        iArr[67] = 1000515;
        iArr[68] = 1001016;
        iArr[69] = 1001548;
        iArr[70] = 1002047;
        iArr[71] = 1002578;
        iArr[72] = 1003080;
        iArr[73] = 1003580;
        iArr[74] = 1004111;
        iArr[75] = 1004613;
        iArr[76] = 1005113;
        iArr[77] = 1005645;
        iArr[78] = 1006146;
        iArr[79] = 1006645;
        iArr[80] = 1007177;
        iArr[81] = 1007678;
        iArr[82] = 1008209;
        iArr[83] = 1008710;
        iArr[84] = 1009211;
        iArr[85] = 1009743;
        iArr[86] = 1010243;
        iArr[87] = 1010743;
        iArr[88] = 1011275;
        iArr[89] = 1011775;
        iArr[90] = 1012306;
        iArr[91] = 1012807;
        iArr[92] = 1013308;
        iArr[93] = 1013840;
        iArr[94] = 1014341;
        iArr[95] = 1014841;
        iArr[96] = 1015373;
        iArr[97] = 1015874;
        iArr[98] = 1016404;
        iArr[99] = 1016905;
        iArr[100] = 1017405;
        iArr[101] = 1017937;
        iArr[102] = 1018438;
        iArr[103] = 1018939;
        iArr[104] = 1019471;
        iArr[105] = 1019972;
        iArr[106] = 1020471;
        iArr[107] = 1021002;
        iArr[108] = 1021503;
        iArr[109] = 1022035;
        iArr[110] = 1022535;
        iArr[111] = 1023036;
        iArr[112] = 1023568;
        iArr[113] = 1024069;
        iArr[114] = 1024568;
        iArr[115] = 1025100;
        iArr[116] = 1025601;
        iArr[117] = 1026102;
        iArr[118] = 1026633;
        iArr[119] = 1027133;
        iArr[120] = 1027666;
        iArr[121] = 1028167;
        iArr[122] = 1028666;
        iArr[123] = 1029198;
        iArr[124] = 1029699;
        iArr[125] = 1030199;
        iArr[126] = 1030730;
        iArr[127] = 1031231;
        iArr[128] = 1031763;
        iArr[129] = 1032264;
        iArr[130] = 1032764;
        iArr[131] = 1033296;
        iArr[132] = 1033797;
        iArr[133] = 1034297;
        iArr[134] = 1034828;
        iArr[135] = 1035329;
        iArr[136] = 1035830;
        iArr[137] = 1036362;
        iArr[138] = 1036861;
        iArr[139] = 1037393;
        iArr[140] = 1037894;
        iArr[141] = 1038394;
        iArr[142] = 1038925;
        iArr[143] = 1039427;
        iArr[144] = 1039927;
        iArr[145] = 1040459;
        iArr[146] = 1040959;
        iArr[147] = 1041491;
        iArr[148] = 1041992;
        iArr[149] = 1042492;
        iArr[150] = 1043023;
        iArr[151] = 1043524;
        iArr[152] = 1044024;
        iArr[153] = 1044556;
        iArr[154] = 1045057;
        iArr[155] = 1045558;
        iArr[156] = 1046090;
        iArr[157] = 1046590;
        iArr[158] = 1047121;
        iArr[159] = 1047622;
        iArr[160] = 1048122;
        iArr[161] = 1048654;
        iArr[162] = 1049154;
        iArr[163] = 1049655;
        iArr[164] = 1050187;
        iArr[165] = 1050689;
        iArr[166] = 1051219;
        iArr[167] = 1051720;
        iArr[168] = 1052220;
        iArr[169] = 1052751;
        iArr[170] = 1053252;
        iArr[171] = 1053752;
        iArr[172] = 1054284;
        iArr[173] = 1054786;
        iArr[174] = 1055285;
        iArr[175] = 1055817;
        iArr[176] = 1056317;
        iArr[177] = 1056849;
        iArr[178] = 1057349;
        iArr[179] = 1057850;
        iArr[180] = 1058382;
        iArr[181] = 1058883;
        iArr[182] = 1059383;
        iArr[183] = 1059915;
        iArr[184] = 1060415;
        iArr[185] = 1060947;
        iArr[186] = 1061447;
        iArr[187] = 1061947;
        iArr[188] = 1062479;
        iArr[189] = 1062981;
        iArr[190] = 1063480;
        iArr[191] = 1064012;
        iArr[192] = 1064514;
        iArr[193] = 1065014;
        iArr[194] = 1065545;
        iArr[195] = 1066045;
        iArr[196] = 1066577;
        iArr[197] = 1067078;
        iArr[198] = 1067578;
        iArr[199] = 1068110;
        iArr[200] = 1068611;
        iArr[201] = 1069112;
        iArr[202] = 1069642;
        iArr[203] = 1070142;
        iArr[204] = 1070674;
        iArr[205] = 1071175;
        iArr[206] = 1071675;
        iArr[207] = 1072207;
        iArr[208] = 1072709;
        iArr[209] = 1073209;
        iArr[210] = 1073740;
        iArr[211] = 1074241;
        iArr[212] = 1074741;
        iArr[213] = 1075273;
        iArr[214] = 1075773;
        iArr[215] = 1076305;
        iArr[216] = 1076807;
        iArr[217] = 1077308;
        iArr[218] = 1077839;
        iArr[219] = 1078340;
        iArr[220] = 1078840;
        iArr[221] = 1079372;
        iArr[222] = 1079871;
        iArr[223] = 1080403;
        iArr[224] = 1080904;
        solar_1_1 = iArr;
        int[] iArr2 = new int[DNSConstants.QUERY_WAIT_INTERVAL];
        // fill-array-data instruction
        iArr2[0] = 1887;
        iArr2[1] = 5780;
        iArr2[2] = 5802;
        iArr2[3] = 19157;
        iArr2[4] = 2742;
        iArr2[5] = 50359;
        iArr2[6] = 1198;
        iArr2[7] = 2646;
        iArr2[8] = 46378;
        iArr2[9] = 7466;
        iArr2[10] = 3412;
        iArr2[11] = 30122;
        iArr2[12] = 5482;
        iArr2[13] = 67949;
        iArr2[14] = 2396;
        iArr2[15] = 5294;
        iArr2[16] = 43597;
        iArr2[17] = 6732;
        iArr2[18] = 6954;
        iArr2[19] = 36181;
        iArr2[20] = 2772;
        iArr2[21] = 4954;
        iArr2[22] = 18781;
        iArr2[23] = 2396;
        iArr2[24] = 54427;
        iArr2[25] = 5274;
        iArr2[26] = 6730;
        iArr2[27] = 47781;
        iArr2[28] = 5800;
        iArr2[29] = 6868;
        iArr2[30] = 21210;
        iArr2[31] = 4790;
        iArr2[32] = 59703;
        iArr2[33] = 2350;
        iArr2[34] = 5270;
        iArr2[35] = 46667;
        iArr2[36] = 3402;
        iArr2[37] = 3496;
        iArr2[38] = 38325;
        iArr2[39] = 1388;
        iArr2[40] = 4782;
        iArr2[41] = 18735;
        iArr2[42] = 2350;
        iArr2[43] = 52374;
        iArr2[44] = 6804;
        iArr2[45] = 7498;
        iArr2[46] = 44457;
        iArr2[47] = 2906;
        iArr2[48] = 1388;
        iArr2[49] = 29294;
        iArr2[50] = 4700;
        iArr2[51] = 63789;
        iArr2[52] = 6442;
        iArr2[53] = 6804;
        iArr2[54] = 56138;
        iArr2[55] = 5802;
        iArr2[56] = 2772;
        iArr2[57] = 38235;
        iArr2[58] = 1210;
        iArr2[59] = 4698;
        iArr2[60] = 22827;
        iArr2[61] = 5418;
        iArr2[62] = 63125;
        iArr2[63] = 3476;
        iArr2[64] = 5802;
        iArr2[65] = 43701;
        iArr2[66] = 2484;
        iArr2[67] = 5302;
        iArr2[68] = 27223;
        iArr2[69] = 2646;
        iArr2[70] = 70954;
        iArr2[71] = 7466;
        iArr2[72] = 3412;
        iArr2[73] = 54698;
        iArr2[74] = 5482;
        iArr2[75] = 2412;
        iArr2[76] = 38062;
        iArr2[77] = 5294;
        iArr2[78] = 2636;
        iArr2[79] = 32038;
        iArr2[80] = 6954;
        iArr2[81] = 60245;
        iArr2[82] = 2772;
        iArr2[83] = 4826;
        iArr2[84] = 43357;
        iArr2[85] = 2394;
        iArr2[86] = 5274;
        iArr2[87] = 39501;
        iArr2[88] = 6730;
        iArr2[89] = 72357;
        iArr2[90] = 5800;
        iArr2[91] = 5844;
        iArr2[92] = 53978;
        iArr2[93] = 4790;
        iArr2[94] = 2358;
        iArr2[95] = 38039;
        iArr2[96] = 5270;
        iArr2[97] = 87627;
        iArr2[98] = 3402;
        iArr2[99] = 3496;
        iArr2[100] = 54708;
        iArr2[101] = 5484;
        iArr2[102] = 4782;
        iArr2[103] = 43311;
        iArr2[104] = 2350;
        iArr2[105] = 3222;
        iArr2[106] = 27978;
        iArr2[107] = 7498;
        iArr2[108] = 68965;
        iArr2[109] = 2904;
        iArr2[110] = 5484;
        iArr2[111] = 45677;
        iArr2[112] = 4700;
        iArr2[113] = 6444;
        iArr2[114] = 39573;
        iArr2[115] = 6804;
        iArr2[116] = 6986;
        iArr2[117] = 19285;
        iArr2[118] = 2772;
        iArr2[119] = 62811;
        iArr2[120] = 1210;
        iArr2[121] = 4698;
        iArr2[122] = 47403;
        iArr2[123] = 5418;
        iArr2[124] = 5780;
        iArr2[125] = 38570;
        iArr2[126] = 5546;
        iArr2[127] = 76469;
        iArr2[128] = 2420;
        iArr2[129] = 5302;
        iArr2[130] = 51799;
        iArr2[131] = 2646;
        iArr2[132] = 5414;
        iArr2[133] = 36501;
        iArr2[134] = 3412;
        iArr2[135] = 5546;
        iArr2[136] = 18869;
        iArr2[137] = 2412;
        iArr2[138] = 54446;
        iArr2[139] = 5276;
        iArr2[140] = 6732;
        iArr2[141] = 48422;
        iArr2[142] = 6822;
        iArr2[143] = 2900;
        iArr2[144] = 28010;
        iArr2[145] = 4826;
        iArr2[146] = 92509;
        iArr2[147] = 2394;
        iArr2[148] = 5274;
        iArr2[149] = 55883;
        iArr2[150] = 6730;
        iArr2[151] = 6820;
        iArr2[152] = 47956;
        iArr2[153] = 5812;
        iArr2[154] = 2778;
        iArr2[155] = 18779;
        iArr2[156] = 2358;
        iArr2[157] = 62615;
        iArr2[158] = 5270;
        iArr2[159] = 5450;
        iArr2[160] = 46757;
        iArr2[161] = 3492;
        iArr2[162] = 5556;
        iArr2[163] = 27318;
        iArr2[164] = 4718;
        iArr2[165] = 67887;
        iArr2[166] = 2350;
        iArr2[167] = 3222;
        iArr2[168] = 52554;
        iArr2[169] = 7498;
        iArr2[170] = 3428;
        iArr2[171] = 38252;
        iArr2[172] = 5468;
        iArr2[173] = 4700;
        iArr2[174] = 31022;
        iArr2[175] = 6444;
        iArr2[176] = 64149;
        iArr2[177] = 6804;
        iArr2[178] = 6986;
        iArr2[179] = 43861;
        iArr2[180] = 2772;
        iArr2[181] = 5338;
        iArr2[182] = 35421;
        iArr2[183] = 2650;
        iArr2[184] = 70955;
        iArr2[185] = 5418;
        iArr2[186] = 5780;
        iArr2[187] = 54954;
        iArr2[188] = 5546;
        iArr2[189] = 2740;
        iArr2[190] = 38074;
        iArr2[191] = 5302;
        iArr2[192] = 2646;
        iArr2[193] = 29991;
        iArr2[194] = 3366;
        iArr2[195] = 61011;
        iArr2[196] = 3412;
        iArr2[197] = 5546;
        iArr2[198] = 43445;
        iArr2[199] = 2412;
        iArr2[200] = 5294;
        iArr2[201] = 35406;
        iArr2[202] = 6732;
        iArr2[203] = 72998;
        iArr2[204] = 6820;
        iArr2[205] = 6996;
        iArr2[206] = 52586;
        iArr2[207] = 2778;
        iArr2[208] = 2396;
        iArr2[209] = 38045;
        iArr2[210] = 5274;
        iArr2[211] = 6698;
        iArr2[212] = 23333;
        iArr2[213] = 6820;
        iArr2[214] = 64338;
        iArr2[215] = 5812;
        iArr2[216] = 2746;
        iArr2[217] = 43355;
        iArr2[218] = 2358;
        iArr2[219] = 5270;
        iArr2[220] = 39499;
        iArr2[221] = 5450;
        iArr2[222] = 79525;
        iArr2[223] = 3492;
        iArr2[224] = 5548;
        lunar_month_days = iArr2;
    }

    public static final int[] lunarToSolar(int i, int i2, int i3, boolean z) {
        int i4;
        if (i < 1900 || i > 2099 || i2 < 1 || i2 > 12 || i3 < 1 || i3 > 30) {
            throw new IllegalArgumentException("Illegal lunar date, must be like that:\n\tyear : 1900~2099\n\tmonth : 1~12\n\tday : 1~30");
        }
        int[] iArr = LUNAR_INFO;
        int i5 = i - 1900;
        int i6 = (iArr[i5] & 31) - 1;
        if (((iArr[i5] & 96) >> 5) == 2) {
            i6 += 31;
        }
        for (int i7 = 1; i7 < i2; i7++) {
            i4 = ((524288 >> (i7 + -1)) & LUNAR_INFO[i5]) == 0 ? i4 + 29 : i4 + 30;
        }
        int i8 = i4 + i3;
        int i9 = (LUNAR_INFO[i5] & 15728640) >> 20;
        if (i9 != 0 && (i2 > i9 || (i2 == i9 && z))) {
            i8 = ((524288 >> (i2 - 1)) & LUNAR_INFO[i5]) == 0 ? i8 + 29 : i8 + 30;
        }
        if (i8 > 366 || (i % 4 != 0 && i8 > 365)) {
            i++;
            i8 = i % 4 == 1 ? i8 - 366 : i8 - 365;
        }
        int[] iArr2 = new int[3];
        int i10 = 1;
        while (true) {
            if (i10 >= 13) {
                break;
            }
            int i11 = DAYS_BEFORE_MONTH[i10];
            int i12 = i % 4;
            if (i12 == 0 && i10 > 2) {
                i11++;
            }
            if (i12 == 0 && i10 == 2 && i11 + 1 == i8) {
                iArr2[1] = i10;
                iArr2[2] = i8 - 31;
                break;
            } else if (i11 >= i8) {
                iArr2[1] = i10;
                int i13 = i10 - 1;
                int i14 = DAYS_BEFORE_MONTH[i13];
                if (i12 == 0 && i10 > 2) {
                    i14++;
                }
                if (i8 > i14) {
                    iArr2[2] = i8 - i14;
                } else if (i8 != i14) {
                    iArr2[2] = i8;
                } else if (i12 == 0 && i10 == 2) {
                    int[] iArr3 = DAYS_BEFORE_MONTH;
                    iArr2[2] = (iArr3[i10] - iArr3[i13]) + 1;
                } else {
                    int[] iArr4 = DAYS_BEFORE_MONTH;
                    iArr2[2] = iArr4[i10] - iArr4[i13];
                }
            } else {
                i10++;
            }
        }
        iArr2[0] = i;
        return iArr2;
    }

    public static final int[] solarToLunar(int i, int i2, int i3) {
        int[] iArr = new int[4];
        int[] iArr2 = solar_1_1;
        int i4 = 0;
        int i5 = i - iArr2[0];
        if (iArr2[i5] > ((i << 9) | (i2 << 5) | i3)) {
            i5--;
        }
        int i6 = solar_1_1[i5];
        long solarToInt = solarToInt(i, i2, i3) - solarToInt(getBitInt(i6, 12, 9), getBitInt(i6, 4, 5), getBitInt(i6, 5, 0));
        int i7 = lunar_month_days[i5];
        int bitInt = getBitInt(i7, 4, 13);
        int i8 = i5 + solar_1_1[0];
        long j = solarToInt + 1;
        int i9 = 1;
        for (int i10 = 0; i10 < 13; i10++) {
            long j2 = (long) (getBitInt(i7, 1, 12 - i10) == 1 ? 30 : 29);
            if (j <= j2) {
                break;
            }
            i9++;
            j -= j2;
        }
        int i11 = (int) j;
        iArr[0] = i8;
        iArr[1] = i9;
        if (bitInt != 0 && i9 > bitInt) {
            iArr[1] = i9 - 1;
            if (i9 == bitInt + 1) {
                i4 = 1;
            }
        }
        iArr[2] = i11;
        iArr[3] = i4;
        return iArr;
    }

    @Deprecated
    public static final int[] solarToLunarDeprecated(int i, int i2, int i3) {
        int[] iArr = new int[4];
        int i4 = 1900;
        int i5 = 0;
        int time = (int) ((new GregorianCalendar(i, i2 - 1, i3).getTime().getTime() - new GregorianCalendar(1900, 0, 31).getTime().getTime()) / 86400000);
        int i6 = 0;
        while (i4 <= 2099 && time > 0) {
            i6 = daysInLunarYear(i4);
            time -= i6;
            i4++;
        }
        if (time < 0) {
            time += i6;
            i4--;
        }
        iArr[0] = i4;
        int leapMonth = leapMonth(i4);
        int i7 = time;
        int i8 = 1;
        int i9 = 0;
        while (i8 <= 13 && i7 > 0) {
            i9 = daysInLunarMonth(i4, i8);
            i7 -= i9;
            i8++;
        }
        if (leapMonth != 0 && i8 > leapMonth) {
            i8--;
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            String str = "-";
            sb.append(str);
            sb.append(i2);
            sb.append(str);
            sb.append(i3);
            sb.append("====>");
            sb.append(i8);
            sb.append(str);
            sb.append(leapMonth);
            Log.i("----------->", sb.toString());
            if (i8 == leapMonth) {
                i5 = 1;
            }
        }
        if (i7 < 0) {
            i7 += i9;
            i8--;
        }
        iArr[1] = i8;
        iArr[2] = i7 + 1;
        iArr[3] = i5;
        return iArr;
    }

    public static final int daysInMonth(int i, int i2) {
        return daysInMonth(i, i2, false);
    }

    public static final int daysInMonth(int i, int i2, boolean z) {
        int leapMonth = leapMonth(i);
        int i3 = (leapMonth == 0 || i2 <= leapMonth) ? 0 : 1;
        if (!z) {
            return daysInLunarMonth(i, i2 + i3);
        }
        if (leapMonth == 0 || leapMonth != i2) {
            return 0;
        }
        return daysInLunarMonth(i, i2 + 1);
    }

    private static int daysInLunarYear(int i) {
        int i2 = leapMonth(i) != 0 ? 377 : 348;
        int i3 = LUNAR_INFO[i - 1900] & 1048448;
        for (int i4 = 524288; i4 > 7; i4 >>= 1) {
            if ((i3 & i4) != 0) {
                i2++;
            }
        }
        return i2;
    }

    private static int daysInLunarMonth(int i, int i2) {
        return (LUNAR_INFO[i + -1900] & (1048576 >> i2)) == 0 ? 29 : 30;
    }

    public static int leapMonth(int i) {
        return (LUNAR_INFO[i - 1900] & 15728640) >> 20;
    }

    private static long solarToInt(int i, int i2, int i3) {
        int i4 = (i2 + 9) % 12;
        int i5 = i - (i4 / 10);
        return (long) ((((i5 * 365) + (i5 / 4)) - (i5 / 100)) + (i5 / 400) + (((i4 * im_common.BUSINESS_MB_WPA_C2C_TMP_MSG) + 5) / 10) + (i3 - 1));
    }
}
