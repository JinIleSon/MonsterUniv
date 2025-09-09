package util;

import java.security.SecureRandom;

public class TokenUtil {
    private static final String PW_CHARS = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnpqrstuvwxyz23456789!@#$%^&*";
    private static final SecureRandom RND = new SecureRandom();

    public static String generateTemporaryPassword(int len) {
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++) {
            sb.append(PW_CHARS.charAt(RND.nextInt(PW_CHARS.length())));
        }
        return sb.toString();
    }
}
