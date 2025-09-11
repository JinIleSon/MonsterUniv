package dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 마이페이지 표시용 DTO
 * - 사용자 기본 정보
 * - 활동 카운트
 * - 최근 게시글/즐겨찾기 요약 리스트
 */
public class MypageDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    // ===== 사용자 기본 정보 (UserDTO 필드와 맵핑) =====
    private String identification;
    private String nickname;
    private String email;
    private String phone;
    private String address;
    private String role;
    private Date joinedAt; // (선택) 가입일을 보여줄 때 사용

    // ===== 마이페이지 통계 =====
    private Integer favCount;     // 즐겨찾기 수
    private Integer postCount;    // 내 게시글 수
    private Integer commentCount; // 댓글 수

    // ===== 최근 목록 =====
    private List<PostSummary> myPosts;         // 최근 게시글 목록
    private List<FavoriteSummary> myFavorites; // 즐겨찾기 목록

    // 기본 생성자
    public MypageDTO() {}

    // UserDTO에서 필요한 필드만 복사하는 생성자 (원하면 사용)
    public MypageDTO(UserDTO u) {
        if (u != null) {
            this.identification = u.getIdentification();
            this.nickname = u.getNickname();
            this.email = u.getEmail();
            this.phone = u.getPhone();
            this.address = u.getAddress();
            this.role = u.getRole();
            // joinedAt 필드가 UserDTO에 없다면 서비스/DAO에서 따로 세팅
        }
    }

    // ===== Getter / Setter =====
    public String getIdentification() { return identification; }
    public void setIdentification(String identification) { this.identification = identification; }

    public String getNickname() { return nickname; }
    public void setNickname(String nickname) { this.nickname = nickname; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public Date getJoinedAt() { return joinedAt; }
    public void setJoinedAt(Date joinedAt) { this.joinedAt = joinedAt; }

    public Integer getFavCount() { return favCount; }
    public void setFavCount(Integer favCount) { this.favCount = favCount; }

    public Integer getPostCount() { return postCount; }
    public void setPostCount(Integer postCount) { this.postCount = postCount; }

    public Integer getCommentCount() { return commentCount; }
    public void setCommentCount(Integer commentCount) { this.commentCount = commentCount; }

    public List<PostSummary> getMyPosts() { return myPosts; }
    public void setMyPosts(List<PostSummary> myPosts) { this.myPosts = myPosts; }

    public List<FavoriteSummary> getMyFavorites() { return myFavorites; }
    public void setMyFavorites(List<FavoriteSummary> myFavorites) { this.myFavorites = myFavorites; }

    // ===== 내부 요약 클래스들 =====
    public static class PostSummary implements Serializable {
        private static final long serialVersionUID = 1L;
        private Long id;
        private String title;
        private Date createdAt;

        public PostSummary() {}
        public PostSummary(Long id, String title, Date createdAt) {
            this.id = id; this.title = title; this.createdAt = createdAt;
        }

        public Long getId() { return id; }
        public void setId(Long id) { this.id = id; }

        public String getTitle() { return title; }
        public void setTitle(String title) { this.title = title; }

        public Date getCreatedAt() { return createdAt; }
        public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
    }

    public static class FavoriteSummary implements Serializable {
        private static final long serialVersionUID = 1L;
        private Long id;
        private String title;
        private String link;

        public FavoriteSummary() {}
        public FavoriteSummary(Long id, String title, String link) {
            this.id = id; this.title = title; this.link = link;
        }

        public Long getId() { return id; }
        public void setId(Long id) { this.id = id; }

        public String getTitle() { return title; }
        public void setTitle(String title) { this.title = title; }

        public String getLink() { return link; }
        public void setLink(String link) { this.link = link; }
    }
}
