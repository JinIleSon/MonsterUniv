package util;

public class MailUtil {
    public static boolean sendResetMail(String toEmail, String identification, String tempPassword) {
        // TODO: JavaMail / SMTP 설정 후 실제 발송
        // 개발 환경에서는 콘솔로 확인
        System.out.printf("[MAIL] to=%s, subject=%s, body=%s%n",
                toEmail,
                "[몬스터대] 임시 비밀번호 안내",
                "아이디: " + identification + "\n임시 비밀번호: " + tempPassword + "\n로그인 후 반드시 변경해 주세요."
        );
        return true; // 실제 발송 성공 여부에 맞춰 반환
    }
}
