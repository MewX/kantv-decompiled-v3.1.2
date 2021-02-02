package com.bigkoo.pickerview.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

public class ChinaDate {
    private static final String[] Animals = {"鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪"};
    private static final String[] Gan = {"甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸"};
    private static final String[] Zhi = {"子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"};
    private static final long[] lunarInfo = {19416, 19168, 42352, 21717, 53856, 55632, 91476, 22176, 39632, 21970, 19168, 42422, 42192, 53840, 119381, 46400, 54944, 44450, 38320, 84343, 18800, 42160, 46261, 27216, 27968, 109396, 11104, 38256, 21234, 18800, 25958, 54432, 59984, 28309, 23248, 11104, 100067, 37600, 116951, 51536, 54432, 120998, 46416, 22176, 107956, 9680, 37584, 53938, 43344, 46423, 27808, 46416, 86869, 19872, 42416, 83315, 21168, 43432, 59728, 27296, 44710, 43856, 19296, 43748, 42352, 21088, 62051, 55632, 23383, 22176, 38608, 19925, 19152, 42192, 54484, 53840, 54616, 46400, 46752, 103846, 38320, 18864, 43380, 42160, 45690, 27216, 27968, 44870, 43872, 38256, 19189, 18800, 25776, 29859, 59984, 27480, 21952, 43872, 38613, 37600, 51552, 55636, 54432, 55888, 30034, 22176, 43959, 9680, 37584, 51893, 43344, 46240, 47780, 44368, 21977, 19360, 42416, 86390, 21168, 43312, 31060, 27296, 44368, 23378, 19296, 42726, 42208, 53856, 60005, 54576, 23200, 30371, 38608, 19195, 19152, 42192, 118966, 53840, 54560, 56645, 46496, 22224, 21938, 18864, 42359, 42160, 43600, 111189, 27936, 44448, 84835, 37744, 18936, 18800, 25776, 92326, 59984, 27424, 108228, 43744, 41696, 53987, 51552, 54615, 54432, 55888, 23893, 22176, 42704, 21972, 21200, 43448, 43344, 46240, 46758, 44368, 21920, 43940, 42416, 21168, 45683, 26928, 29495, 27296, 44368, 84821, 19296, 42352, 21732, 53600, 59752, 54560, 55968, 92838, 22224, 19168, 43476, 41680, 53584, 62034, 54560};
    private static final String[] nStr1 = {"", "正", "二", "三", "四", "五", "六", "七", "八", "九", "十", "冬", "腊"};
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy年M月d日 EEEEE");

    private static final int lYearDays(int i) {
        int i2 = 348;
        for (int i3 = 32768; i3 > 8; i3 >>= 1) {
            if ((lunarInfo[i - 1900] & ((long) i3)) != 0) {
                i2++;
            }
        }
        return i2 + leapDays(i);
    }

    public static final int leapDays(int i) {
        if (leapMonth(i) != 0) {
            return (lunarInfo[i + -1900] & 65536) != 0 ? 30 : 29;
        }
        return 0;
    }

    public static final int leapMonth(int i) {
        return (int) (lunarInfo[i - 1900] & 15);
    }

    public static final int monthDays(int i, int i2) {
        return (((long) (65536 >> i2)) & lunarInfo[i + -1900]) == 0 ? 29 : 30;
    }

    public static final String AnimalsYear(int i) {
        return Animals[(i - 4) % 12];
    }

    private static final String cyclicalm(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(Gan[i % 10]);
        sb.append(Zhi[i % 12]);
        return sb.toString();
    }

    public static final String cyclical(int i) {
        return cyclicalm((i - 1900) + 36);
    }

    public static final long[] calElement(int i, int i2, int i3) {
        long[] jArr = new long[7];
        int i4 = 1900;
        char c = 0;
        int i5 = i;
        long time = (new GregorianCalendar(i5, i2 - 1, i3).getTime().getTime() - new GregorianCalendar(1900, 0, 31).getTime().getTime()) / 86400000;
        jArr[5] = 40 + time;
        jArr[4] = 14;
        int i6 = 0;
        while (i4 < 2100 && time > 0) {
            i6 = lYearDays(i4);
            time -= (long) i6;
            jArr[4] = jArr[4] + 12;
            i4++;
        }
        if (time < 0) {
            time += (long) i6;
            i4--;
            jArr[4] = jArr[4] - 12;
        }
        jArr[0] = (long) i4;
        jArr[3] = (long) (i4 - 1864);
        int leapMonth = leapMonth(i4);
        jArr[6] = 0;
        int i7 = i6;
        int i8 = 1;
        while (i8 < 13 && time > 0) {
            if (leapMonth > 0 && i8 == leapMonth + 1 && jArr[6] == 0) {
                i8--;
                jArr[6] = 1;
                i7 = leapDays((int) jArr[c]);
            } else {
                i7 = monthDays((int) jArr[c], i8);
            }
            if (jArr[6] == 1 && i8 == leapMonth + 1) {
                jArr[6] = 0;
            }
            int i9 = i8;
            time -= (long) i7;
            if (jArr[6] == 0) {
                jArr[4] = jArr[4] + 1;
            }
            i8 = i9 + 1;
            c = 0;
        }
        if (time == 0 && leapMonth > 0 && i8 == leapMonth + 1) {
            if (jArr[6] == 1) {
                jArr[6] = 0;
            } else {
                jArr[6] = 1;
                i8--;
                jArr[4] = jArr[4] - 1;
            }
        }
        if (time < 0) {
            time += (long) i7;
            i8--;
            jArr[4] = jArr[4] - 1;
        }
        jArr[1] = (long) i8;
        jArr[2] = time + 1;
        return jArr;
    }

    public static final String getChinaDate(int i) {
        if (i == 10) {
            return "初十";
        }
        if (i == 20) {
            return "二十";
        }
        if (i == 30) {
            return "三十";
        }
        int i2 = i / 10;
        String str = i2 == 0 ? "初" : "";
        if (i2 == 1) {
            str = "十";
        }
        if (i2 == 2) {
            str = "廿";
        }
        String str2 = "三";
        if (i2 == 3) {
            str = str2;
        }
        switch (i % 10) {
            case 1:
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("一");
                str = sb.toString();
                break;
            case 2:
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("二");
                str = sb2.toString();
                break;
            case 3:
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append(str2);
                str = sb3.toString();
                break;
            case 4:
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str);
                sb4.append("四");
                str = sb4.toString();
                break;
            case 5:
                StringBuilder sb5 = new StringBuilder();
                sb5.append(str);
                sb5.append("五");
                str = sb5.toString();
                break;
            case 6:
                StringBuilder sb6 = new StringBuilder();
                sb6.append(str);
                sb6.append("六");
                str = sb6.toString();
                break;
            case 7:
                StringBuilder sb7 = new StringBuilder();
                sb7.append(str);
                sb7.append("七");
                str = sb7.toString();
                break;
            case 8:
                StringBuilder sb8 = new StringBuilder();
                sb8.append(str);
                sb8.append("八");
                str = sb8.toString();
                break;
            case 9:
                StringBuilder sb9 = new StringBuilder();
                sb9.append(str);
                sb9.append("九");
                str = sb9.toString();
                break;
        }
        return str;
    }

    public static String getCurrentLunarDate() {
        Calendar instance = Calendar.getInstance(Locale.SIMPLIFIED_CHINESE);
        int i = instance.get(1);
        long[] calElement = calElement(i, instance.get(2) + 1, instance.get(5));
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(sdf.format(instance.getTime()));
        stringBuffer.append(" 农历");
        stringBuffer.append(cyclical(i));
        stringBuffer.append('(');
        stringBuffer.append(AnimalsYear(i));
        stringBuffer.append(")年");
        stringBuffer.append(nStr1[(int) calElement[1]]);
        stringBuffer.append("月");
        stringBuffer.append(getChinaDate((int) calElement[2]));
        return stringBuffer.toString();
    }

    public static String oneDay(int i, int i2, int i3) {
        long[] calElement = calElement(i, i2, i3);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" 农历");
        stringBuffer.append(cyclical(i));
        stringBuffer.append('(');
        stringBuffer.append(AnimalsYear(i));
        stringBuffer.append(")年");
        stringBuffer.append(nStr1[(int) calElement[1]]);
        stringBuffer.append("月");
        stringBuffer.append(getChinaDate((int) calElement[2]));
        return stringBuffer.toString();
    }

    public static String getLunarYearText(int i) {
        StringBuilder sb = new StringBuilder();
        int i2 = i - 4;
        sb.append(Gan[i2 % 10]);
        sb.append(Zhi[i2 % 12]);
        sb.append("年");
        return sb.toString();
    }

    public static ArrayList<String> getYears(int i, int i2) {
        ArrayList<String> arrayList = new ArrayList<>();
        while (i < i2) {
            arrayList.add(String.format("%s(%d)", new Object[]{getLunarYearText(i), Integer.valueOf(i)}));
            i++;
        }
        return arrayList;
    }

    public static ArrayList<String> getMonths(int i) {
        String str;
        ArrayList<String> arrayList = new ArrayList<>();
        int i2 = 1;
        while (true) {
            str = "月";
            if (i2 >= nStr1.length) {
                break;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(nStr1[i2]);
            sb.append(str);
            arrayList.add(sb.toString());
            i2++;
        }
        if (leapMonth(i) != 0) {
            int leapMonth = leapMonth(i);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("闰");
            sb2.append(nStr1[leapMonth(i)]);
            sb2.append(str);
            arrayList.add(leapMonth, sb2.toString());
        }
        return arrayList;
    }

    public static ArrayList<String> getLunarDays(int i) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i2 = 1; i2 <= i; i2++) {
            arrayList.add(getChinaDate(i2));
        }
        return arrayList;
    }
}
