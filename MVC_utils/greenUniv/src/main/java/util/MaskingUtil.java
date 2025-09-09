package util;

public class MaskingUtil {
    /** abcd12 -> ab***12 형태 */
    public static String maskId(String id) {
        if (id == null || id.length() < 4) return "****";
        int head = Math.min(2, id.length() / 2);
        int tail = Math.min(2, id.length() - head);
        StringBuilder sb = new StringBuilder();
        sb.append(id, 0, head);
        for (int i = 0; i < Math.max(3, id.length() - head - tail); i++) sb.append('*');
        sb.append(id, id.length() - tail, id.length());
        return sb.toString();
    }
}
