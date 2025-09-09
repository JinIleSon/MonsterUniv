package util;

public class PasswordUtil {
    // 지금 DB가 평문이면 아래처럼 저장/검증이 일치합니다.
    // 추후 BCrypt로 전환 시:
    //   - hash: BCrypt.hashpw(plain, BCrypt.gensalt())
    //   - matches: BCrypt.checkpw(plain, hashed)

    public static String hash(String plain) {
        return plain; // TODO: BCrypt로 교체 권장
    }
}
