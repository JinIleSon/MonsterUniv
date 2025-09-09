<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>아이디 찾기</title>
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
        <h1 class="h3 fw-bold text-primary mb-1">아이디 찾기</h1>
        <p class="text-secondary mb-0">이름과 <span class="fw-semibold">휴대폰</span> 또는 <span class="fw-semibold">이메일</span> 중 하나를 입력하세요.</p>
      </div>

      <!-- 카드 -->
      <div class="card shadow-sm border-0">
        <div class="card-body p-4">

          <!-- 서버 에러 -->
          <c:if test="${not empty error}">
            <div class="alert alert-danger d-flex align-items-center" role="alert">
              <div>${error}</div>
            </div>
          </c:if>

          <!-- 결과 알림 -->
          <c:if test="${done}">
            <c:choose>
              <c:when test="${not empty maskedId}">
                <div class="alert alert-success d-flex align-items-center" role="alert">
                  <div>
                    회원님의 아이디는 <span class="fw-bold">${maskedId}</span> 입니다.
                  </div>
                </div>
              </c:when>
              <c:otherwise>
                <div class="alert alert-warning d-flex align-items-center" role="alert">
                  <div>입력하신 정보와 일치하는 계정을 찾을 수 없습니다.</div>
                </div>
              </c:otherwise>
            </c:choose>
          </c:if>

          <!-- 클라이언트 사이드 알림 (휴대폰/이메일 둘 다 비었을 때) -->
          <div id="oneOfAlert" class="alert alert-danger d-none" role="alert">
            휴대폰 또는 이메일 중 하나는 반드시 입력해 주세요.
          </div>

          <!-- 폼 -->
          <form id="findIdForm" action="${pageContext.request.contextPath}/login/findId.do" method="post" autocomplete="off" novalidate>
            <div class="mb-3">
              <label for="name" class="form-label">이름 <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="name" name="name" value="${param.name}" required>
            </div>

            <div class="mb-3">
              <label class="form-label mb-1">휴대폰</label>
              <div class="input-group">
                <span class="input-group-text">📱</span>
                <input type="text"
                       class="form-control"
                       id="phone"
                       name="phone"
                       value="${param.phone}"
                       placeholder="010-1234-5678"
                       pattern="^01[0-9]-\\d{3,4}-\\d{4}$"
                       inputmode="numeric">
              </div>
              <div class="form-text">예: 010-1234-5678 (하이픈 포함)</div>
            </div>

            <div class="text-center text-muted small mb-3">— 또는 —</div>

            <div class="mb-4">
              <label class="form-label mb-1">이메일</label>
              <div class="input-group">
                <span class="input-group-text">✉️</span>
                <input type="email"
                       class="form-control"
                       id="email"
                       name="email"
                       value="${param.email}"
                       placeholder="example@domain.com">
              </div>
              <div class="form-text">휴대폰을 입력하지 않았다면 이메일을 입력하세요.</div>
            </div>

            <div class="d-grid gap-2">
              <button type="submit" class="btn btn-primary btn-lg">아이디 찾기</button>
              <a class="btn btn-outline-secondary" href="${pageContext.request.contextPath}/login/login.do">로그인으로</a>
            </div>
          </form>

        </div>
      </div>

      <!-- 하단 도움말 -->
      <p class="text-center text-muted mt-3 mb-0" style="font-size:.9rem;">
        개인정보 보호를 위해 아이디는 마스킹되어 표시됩니다.
      </p>

    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  // 휴대폰/이메일 중 하나는 반드시 입력하도록 간단 검증
  const form  = document.getElementById('findIdForm');
  const phone = document.getElementById('phone');
  const email = document.getElementById('email');
  const oneOf = document.getElementById('oneOfAlert');

  form.addEventListener('submit', function (e) {
    const phoneVal = (phone.value || '').trim();
    const emailVal = (email.value || '').trim();

    if (!phoneVal && !emailVal) {
      e.preventDefault();
      oneOf.classList.remove('d-none');
      oneOf.scrollIntoView({behavior:'smooth', block:'center'});
    } else {
      oneOf.classList.add('d-none');
    }
  });
</script>
</body>
</html>
