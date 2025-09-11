package dao;

import dto.MypageDTO;
import dto.UserDTO;
import util.DBHelper;
import util.Sql_mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 마이페이지용 DAO
 * - 활동 카운트(즐겨찾기/게시글/댓글)
 * - 최근 게시글 / 즐겨찾기 목록
 * - (선택) 가입일
 *
 * 테이블/컬럼명은 util.Sql_mypage 에서만 수정하세요.
 */
public class MypageDAO extends DBHelper {

    /** 메인 조립 함수: 한 번에 필요한 것들 조회해서 DTO로 반환 */
    public MypageDTO loadForUser(UserDTO user, int postLimit, int favLimit) {
        if (user == null || user.getIdentification() == null) return null;
        final String uid = user.getIdentification();

        MypageDTO dto = new MypageDTO(user);
        dto.setFavCount(count(Sql_mypage.COUNT_FAVORITES, uid));
        dto.setPostCount(count(Sql_mypage.COUNT_POSTS, uid));
        dto.setCommentCount(count(Sql_mypage.COUNT_COMMENTS, uid));
        dto.setMyPosts(findRecentPosts(uid, postLimit));
        dto.setMyFavorites(findFavorites(uid, favLimit));

        Date joinedAt = findJoinedAt(uid);
        if (joinedAt != null) dto.setJoinedAt(joinedAt);

        return dto;
    }

    /* ========== counts ========== */

    public int countFavorites(String identification) {
        return count(Sql_mypage.COUNT_FAVORITES, identification);
    }

    public int countPosts(String identification) {
        return count(Sql_mypage.COUNT_POSTS, identification);
    }

    public int countComments(String identification) {
        return count(Sql_mypage.COUNT_COMMENTS, identification);
    }

    private int count(String sql, String identification) {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, identification);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    /* ========== lists ========== */

    public List<MypageDTO.PostSummary> findRecentPosts(String identification, int limit) {
        List<MypageDTO.PostSummary> list = new ArrayList<>();
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(Sql_mypage.LIST_RECENT_POSTS)) {
            ps.setString(1, identification);
            ps.setInt(2, Math.max(1, limit));
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    MypageDTO.PostSummary p = new MypageDTO.PostSummary(
                            rs.getLong("id"),
                            rs.getString("title"),
                            rs.getTimestamp("created_at")
                    );
                    list.add(p);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<MypageDTO.FavoriteSummary> findFavorites(String identification, int limit) {
        List<MypageDTO.FavoriteSummary> list = new ArrayList<>();
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(Sql_mypage.LIST_FAVORITES)) {
            ps.setString(1, identification);
            ps.setInt(2, Math.max(1, limit));
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    MypageDTO.FavoriteSummary f = new MypageDTO.FavoriteSummary(
                            rs.getLong("id"),
                            rs.getString("title"),
                            rs.getString("link")
                    );
                    list.add(f);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /* ========== optional: joinedAt ========== */

    public Date findJoinedAt(String identification) {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(Sql_mypage.FIND_JOINED_AT)) {
            ps.setString(1, identification);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) return rs.getTimestamp(1);
            }
        } catch (Exception e) {
            // 컬럼이 없거나 조회 실패해도 치명적이지 않으니 로그만
            // e.printStackTrace();
        }
        return null;
    }
}
