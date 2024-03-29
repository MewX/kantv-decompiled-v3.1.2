package org.seamless.util;

public class OS {
    public static boolean checkForLinux() {
        return checkForPresence("os.name", "linux");
    }

    public static boolean checkForHp() {
        return checkForPresence("os.name", "hp");
    }

    public static boolean checkForSolaris() {
        return checkForPresence("os.name", "sun");
    }

    public static boolean checkForWindows() {
        return checkForPresence("os.name", "win");
    }

    public static boolean checkForMac() {
        return checkForPresence("os.name", "mac");
    }

    private static boolean checkForPresence(String str, String str2) {
        try {
            String property = System.getProperty(str);
            if (property == null || !property.trim().toLowerCase().startsWith(str2)) {
                return false;
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
