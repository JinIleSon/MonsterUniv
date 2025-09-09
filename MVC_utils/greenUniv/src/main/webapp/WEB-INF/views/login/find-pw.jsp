<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>비밀번호 재설정</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body { background-color:#f8fafc; }
  </style>
</head>
<body>

<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-12 col-md-8 col-lg-6">

      <!-- 제목 -->
      <div class="text-center mb-4">
        <h1 class="h3 fw-bold text-primary mb-1">비밀번호 재설정</h1>
        <p class="text-secondary mb-0">아이디와 가입하신 이메일 주소를 입력하세요.</p>
      </div>

      <!-- 카드 -->
      <div class="card shadow-sm border-0">
        <div class="card-body p-4">

          <!-- 서버 알림 -->
          <c:if test="${not empty error}">
            <div class="alert alert-danger" role="alert">
              ${error}
            </div>
          </c:if>
          <c:if test="${not empty info}">
            <div class="alert alert-success" role="alert">
              ${info}
            </div>
          </c:if>

          <!-- 완료 안내 -->
          <c:if test="${done}">
            <div class="alert alert-info" role="alert">
              입력하신 이메일로 안내를 발송했습니다. 메일함(스팸함 포함)을 확인해 주세요.
            </div>
          </c:if>

          <!-- 폼 -->
          <form id="pwResetForm"
                action="${pageContext.request.contextPath}/login/findPw.do"
                method="post" autocomplete="off" novalidate>

            <!-- (선택) 컨트롤러가 mode 사용 시: 임시비번 발급 고정 -->
            <input type="hidden" name="mode" value="temp"/>

            <div class="mb-3">
              <label for="identification" class="form-label">아이디 <span class="text-danger">*</span></label>
              <div class="input-group">
                <span class="input-group-text">👤</span>
                <input type="text" class="form-control" id="identification" name="identification" required>
              </div>
            </div>

            <div class="mb-4">
              <label for="email" class="form-label">이메일 <span class="text-danger">*</span></label>
              <div class="input-group">
                <span class="input-group-text">✉️</span>
                <input type="email" class="form-control" id="email" name="email" placeholder="example@domain.com" required>
              </div>
              <div class="form-text">가입 시 등록한 이메일 주소를 입력해 주세요.</div>
            </div>

            <div class="d-grid gap-2">
              <button type="submit" class="btn btn-primary btn-lg">임시 비밀번호 발급</button>
              <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/login/login.do">로그인으로</a>
            </div>
          </form>

        </div>
      </div>

      <!-- 하단 도움말 -->
      <p class="text-center text-muted mt-3 mb-0" style="font-size:.9rem;">
        메일이 오지 않으면 스팸함을 확인하거나, 관리자에게 문의해 주세요.
      </p>

    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  // UX: 제출 시 중복 클릭 방지
  const form = document.getElementById('pwResetForm');
  form.addEventListener('submit', function(e) {
    if (!form.checkValidity()) {
      e.preventDefault();
      e.stopPropagation();
    }
    form.classList.add('was-validated');
  });
</script>
</body>
</html>
