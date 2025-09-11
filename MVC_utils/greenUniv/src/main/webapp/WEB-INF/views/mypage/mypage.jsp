<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<c:set var="user" value="${requestScope.user}" />
<c:set var="displayName" value="${empty user.nickname ? user.identification : user.nickname}" />
<c:set var="initial" value="${fn:substring(displayName, 0, 1)}" />
<c:if test="${empty user}">
  <p>로그인이 필요합니다. <a href="<c:url value='/login/login.do'/>">로그인</a></p>
</c:if>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>마이페이지</title>
  <style>
    :root {
      --brand: #3b82f6;      /* 포인트 색상 */
      --bg: #f5f7fb;
      --text: #111827;
      --muted: #6b7280;
      --card: #ffffff;
      --border: #e5e7eb;
      --radius: 16px;
      --shadow: 0 6px 18px rgba(0,0,0,.06);
    }
    * { box-sizing: border-box; }
    body {
      margin: 0; padding: 0; background: var(--bg); color: var(--text);
      font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, "Noto Sans KR", Apple SD Gothic Neo, sans-serif;
    }
    .container {
      max-width: 1080px; margin: 40px auto; padding: 0 20px;
    }
    .page-title {
      display: flex; align-items: center; gap: 10px;
      font-size: 28px; font-weight: 800; letter-spacing: -.2px;
      margin: 6px 0 22px;
    }
    .page-sub { color: var(--muted); font-size: 14px; }
    .grid {
      display: grid; gap: 18px;
      grid-template-columns: 320px 1fr;
    }
    .card {
      background: var(--card); border: 1px solid var(--border);
      border-radius: var(--radius); box-shadow: var(--shadow);
    }
    .card .hd { padding: 16px 18px; border-bottom: 1px solid var(--border); font-weight: 700; }
    .card .bd { padding: 18px; }
    .profile {
      display: flex; align-items: center; gap: 14px;
    }
    .avatar {
      width: 64px; height: 64px; border-radius: 50%;
      display: grid; place-items: center; font-weight: 800; font-size: 26px;
      color: #fff; background: var(--brand);
      box-shadow: inset 0 -6px 14px rgba(0,0,0,.12);
    }
    .name { font-size: 20px; font-weight: 800; }
    .role {
      display: inline-block; padding: 2px 10px; font-size: 12px; border-radius: 999px;
      background: rgba(59,130,246,.1); color: var(--brand); border: 1px solid rgba(59,130,246,.2);
      margin-left: 6px;
    }
    .kv { margin-top: 14px; display: grid; gap: 8px; }
    .kv .row { display: flex; justify-content: space-between; gap: 10px; }
    .kv .key { color: var(--muted); }
    .btns { display: flex; gap: 8px; margin-top: 16px; flex-wrap: wrap; }
    .btn {
      padding: 10px 14px; border-radius: 10px; border: 1px solid var(--border);
      background: #fff; cursor: pointer; text-decoration: none; color: var(--text); font-weight: 600;
      transition: transform .04s ease, box-shadow .2s ease, border-color .2s ease;
    }
    .btn:hover { border-color: #cfd3da; box-shadow: 0 4px 12px rgba(0,0,0,.06); transform: translateY(-1px); }
    .btn.primary { background: var(--brand); color:#fff; border-color: var(--brand); }
    .stats { display: grid; grid-template-columns: repeat(3, 1fr); gap: 12px; }
    .stat {
      padding: 18px; border: 1px solid var(--border); border-radius: 14px; background: #fff; text-align: center;
    }
    .stat .num { font-weight: 800; font-size: 22px; margin-top: 6px; }
    .list { display: grid; gap: 10px; }
    .item {
      display: grid; grid-template-columns: 1fr auto; gap: 12px; align-items: center;
      padding: 12px 14px; border: 1px solid var(--border); border-radius: 12px; background: #fff;
    }
    .empty {
      padding: 32px; text-align: center; color: var(--muted); border: 1px dashed var(--border);
      border-radius: 12px; background: #fff;
    }
    
    
     /* Modal base */
      .modal { position: fixed; inset: 0; display: block; opacity: 0; pointer-events: none; transition: opacity .2s ease; z-index: 1000; }
	  .modal.open { opacity: 1; pointer-events: auto; }
	  .modal-backdrop { position: absolute; inset: 0; background: rgba(0,0,0,.45); }
	  .modal-panel {
	    position: relative; max-width: 560px; margin: 8vh auto; background: var(--card);
	    border: 1px solid var(--border); border-radius: 16px; box-shadow: var(--shadow); padding: 20px;
	  }
	  .modal-hd { display:flex; align-items:center; justify-content:space-between; gap:8px; padding-bottom:10px; border-bottom:1px solid var(--border); }
	  .modal-tt { font-size:18px; font-weight:800; }
	  .close-btn { border:none; background:transparent; font-size:22px; line-height:1; cursor:pointer; }
	  .modal-bd { padding-top:14px; display:grid; gap:12px; }
	  .fm-row { display:grid; gap:6px; }
	  .fm-row label { font-weight:600; font-size:14px; color: var(--text); }
	  .fm-row input, .fm-row textarea {
	    width:100%; padding:10px 12px; border:1px solid var(--border); border-radius:10px; background:#fff;
	  }
	  .modal-ft { display:flex; justify-content:flex-end; gap:8px; margin-top:16px; }
	  .btn.ghost { background:#fff; }
	  .btn.primary { background: var(--brand); color: #fff; border-color: var(--brand); }
    
    /* 반응형 */
    @media (max-width: 860px) {
      .grid { grid-template-columns: 1fr; }
    }
  </style>
  
  
</head>
<body>
  <div class="container">
    <div class="page-title">
      마이페이지
    </div>

    <div class="grid">
      <!-- 좌측: 프로필 카드 -->
      <section class="card">
        <div class="hd">프로필</div>
        <div class="bd">
          <div class="profile">
            <div class="avatar">${initial}</div>
            <div>
              <div class="name">
                <c:out value="${displayName}" />
                <c:if test="${not empty user.role}">
                  <span class="role"><c:out value="${user.role}" /></span>
                </c:if>
              </div>
              <div class="page-sub">아이디: <c:out value="${user.identification}" /></div>
            </div>
          </div>

          <div class="kv">
            <div class="row"><span class="key">이메일</span><span><c:out value="${user.email}" default="-"/></span></div>
            <div class="row"><span class="key">전화번호</span><span><c:out value="${user.phone}" default="-"/></span></div>
            <div class="row"><span class="key">주소</span><span><c:out value="${user.address}" default="-"/></span></div>
            <c:if test="${not empty mypage and not empty mypage.joinedAt}">
			  <div class="row"><span class="key">가입일</span>
			    <span><fmt:formatDate value="${mypage.joinedAt}" pattern="yyyy.MM.dd"/></span>
			  </div>
			</c:if>
          </div>

          <div class="btns">
            <a class="btn primary" href="#" id="openProfileModal">프로필 수정</a>
            <a class="btn" href="<c:url value='/login/logout.do'/>">로그아웃</a>
          </div>
        </div>
      </section>         
    </div>
  </div>
	<!-- Modal -->
	<div id="profileModal" class="modal" aria-hidden="true">
	  <div class="modal-backdrop" data-close></div>
	  <div class="modal-panel" role="dialog" aria-modal="true" aria-labelledby="profileModalTitle">
	    <div class="modal-hd">
	      <div id="profileModalTitle" class="modal-tt">프로필 수정</div>
	      <button type="button" class="close-btn" title="닫기" data-close>&times;</button>
	    </div>
	
	    <!-- ⚠️ 서버 반영형: POST로 업데이트 (컨트롤러는 /mypage/profile/update.do에 구현) -->
	    <form method="post" action="${pageContext.request.contextPath}/mypage/profile/update.do">
	      <div class="modal-bd">
	        <!-- 아이디는 보통 수정 불가 -->
	        <div class="fm-row">
	          <label>아이디</label>
	          <input type="text" name="identification" value="<c:out value='${user.identification}'/>" readonly />
	        </div>
	
	        <div class="fm-row">
	          <label>닉네임</label>
	          <input type="text" name="nickname" value="<c:out value='${user.nickname}'/>" required />
	        </div>
	
	        <div class="fm-row">
	          <label>이메일</label>
	          <input type="email" name="email" value="<c:out value='${user.email}'/>" />
	        </div>
	
	        <div class="fm-row">
	          <label>전화번호</label>
	          <input type="text" name="phone" value="<c:out value='${user.phone}'/>" />
	        </div>
	
	        <div class="fm-row">
	          <label>주소</label>
	          <input type="text" name="address" value="<c:out value='${user.address}'/>" />
	        </div>
	      </div>
	
	      <div class="modal-ft">
	        <button type="button" class="btn ghost" data-close>취소</button>
	        <button type="submit" class="btn primary">저장</button>
	      </div>
	    </form>
	
	    <!-- (선택) AJAX로 저장하고 싶으면 위 form 대신 버튼+fetch로 구현해도 됨 -->
	  </div>
	</div>
  
  <script>
window.addEventListener('DOMContentLoaded', function () {
  const openBtn = document.getElementById('openProfileModal');
  const modal   = document.getElementById('profileModal');
  if (!openBtn || !modal) return;  // 안전장치

  const firstFieldSelector = "input[name='nickname']";

  function openModal() {
    modal.classList.add('open');
    modal.setAttribute('aria-hidden', 'false');
    document.body.style.overflow = 'hidden';
    const firstField = modal.querySelector(firstFieldSelector);
    if (firstField) setTimeout(() => firstField.focus(), 10);
  }

  function closeModal() {
    modal.classList.remove('open');
    modal.setAttribute('aria-hidden', 'true');
    document.body.style.overflow = '';
  }

  openBtn.addEventListener('click', function (e) {
    e.preventDefault();
    openModal();
  });

  // 닫기: X 버튼, 백드롭
  modal.addEventListener('click', function (e) {
    if (e.target.matches('[data-close]') || e.target.closest('[data-close]')) {
      closeModal();
    }
  });

  // ESC로 닫기
  document.addEventListener('keydown', function (e) {
    if (e.key === 'Escape' && modal.classList.contains('open')) closeModal();
  });
});
</script>
  
</body>
</html>

