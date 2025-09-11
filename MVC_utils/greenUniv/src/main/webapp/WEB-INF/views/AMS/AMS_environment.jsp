<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ page isELIgnored="true" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>기본환경정보 | 대학 관리자</title>
<style>
  :root{
    --bg:#0b1020; --card:#121831; --muted:#9aa3b2; --txt:#eef3ff; --accent:#6aa6ff;
    --ok:#34c759; --warn:#ffcc00; --danger:#ff4d4f; --line:#1e2544;
  }
  *{box-sizing:border-box}
  body{margin:0;font-family:system-ui,-apple-system,Segoe UI,Roboto,Pretendard,Apple SD Gothic Neo,Malgun Gothic,sans-serif;background:var(--bg);color:var(--txt)}
  a{color:var(--accent);text-decoration:none}
  header{position:sticky;top:0;z-index:5;backdrop-filter:blur(8px);background:#0b1020cc;border-bottom:1px solid var(--line)}
  header .bar{max-width:1200px;margin:0 auto;display:flex;align-items:center;gap:16px;padding:14px 20px}
  header .brand{font-weight:700}
  header .brand small{display:block;color:var(--muted);font-weight:500;font-size:12px}
  .wrap{max-width:1200px;margin:24px auto;padding:0 20px;display:grid;grid-template-columns:260px 1fr;gap:20px}
  nav{position:sticky;top:72px;align-self:start;background:var(--card);border:1px solid var(--line);border-radius:14px;padding:8px}
  nav h3{margin:10px 12px;color:var(--muted);font-size:12px;letter-spacing:.04em}
  .nav-btn{width:100%;text-align:left;border:0;background:transparent;color:var(--txt);padding:10px 12px;border-radius:10px;display:flex;gap:10px;align-items:center}
  .nav-btn:hover{background:#1a2142}
  .nav-btn.active{background:#1f2954;outline:1px solid #2c3a72}
  main{display:flex;flex-direction:column;gap:20px}
  .card{background:var(--card);border:1px solid var(--line);border-radius:14px;overflow:hidden}
  .card header{position:static;background:transparent;border:0}
  .card .hd{display:flex;justify-content:space-between;align-items:center;padding:16px 18px;border-bottom:1px solid var(--line)}
  .card .hd h2{margin:0;font-size:16px}
  .card .hd p{margin:0;color:var(--muted);font-size:12px}
  .body{padding:18px}
  .grid{display:grid;grid-template-columns:repeat(12,1fr);gap:14px}
  .col-4{grid-column:span 4} .col-6{grid-column:span 6} .col-8{grid-column:span 8} .col-12{grid-column:span 12}
  @media (max-width:900px){.wrap{grid-template-columns:1fr}.col-4,.col-6,.col-8{grid-column:span 12}}
  label{display:block;font-size:12px;color:var(--muted);margin:6px 2px}
  input,select,textarea{width:100%;padding:10px 12px;border-radius:10px;border:1px solid var(--line);background:#0e1530;color:var(--txt)}
  textarea{min-height:96px;resize:vertical}
  .row{display:flex;gap:10px;flex-wrap:wrap}
  .btn{border:0;border-radius:10px;padding:10px 14px;color:#fff;background:#273566;cursor:pointer}
  .btn:hover{filter:brightness(1.1)}
  .btn.primary{background:var(--accent);color:#081225;font-weight:700}
  .btn.ghost{background:transparent;border:1px solid var(--line);color:var(--txt)}
  .help{font-size:12px;color:var(--muted)}
  .kvs{display:grid;grid-template-columns:1fr auto;gap:8px;align-items:center}
  .kvs input{font-family:ui-monospace,Menlo,Consolas,monospace}
  .section-title{margin:8px 0 2px;color:var(--muted);font-size:11px;letter-spacing:.08em;text-transform:uppercase}
  .badge{display:inline-flex;align-items:center;gap:6px;padding:4px 8px;border-radius:999px;border:1px solid var(--line);font-size:12px;color:var(--muted)}
  .hr{border-top:1px dashed var(--line);margin:14px 0}
  .table{width:100%;border-collapse:collapse;font-size:13px}
  .table th,.table td{border-bottom:1px solid var(--line);padding:8px 10px;text-align:left}
  .table th{color:var(--muted);font-weight:600}
  .toast{position:fixed;right:16px;bottom:16px;background:#0f1a3a;border:1px solid #1f2a55;color:#e8f0ff;padding:12px 14px;border-radius:12px;opacity:0;transform:translateY(8px);transition:.25s}
  .toast.show{opacity:1;transform:none}
  .danger{color:#ff9d9f}
  .ok{color:#7dffb0}
</style>
</head>
<body>
<header>
  <div class="bar">
    <div class="brand">기본환경정보 <small>University Admin • System Settings</small></div>
    <span class="badge">학사연도 <strong id="badge-year">2025</strong></span>
    <span class="badge">학기 <strong id="badge-term">1</strong></span>
    <span class="badge">평점스케일 <strong id="badge-scale">4.5</strong></span>
    <div style="margin-left:auto" class="row">
      <button class="btn ghost" id="btn-export">내보내기(.json)</button>
      <label for="fileImport" class="btn">불러오기</label>
      <input type="file" id="fileImport" accept="application/json" hidden />
      <button class="btn primary" id="btn-save-top">저장</button>
    </div>
  </div>
</header>

<div class="wrap">
  <nav id="side">
    <h3>카테고리</h3>
    <button class="nav-btn active" data-target="org">학교/조직</button>
    <button class="nav-btn" data-target="academic">학사 기본값</button>
    <button class="nav-btn" data-target="codes">코드/규정</button>
    <button class="nav-btn" data-target="user">사용자/권한</button>
    <button class="nav-btn" data-target="policy">보안/개인정보</button>
    <button class="nav-btn" data-target="integrations">연동/API</button>
    <button class="nav-btn" data-target="notice">알림/메일·SMS</button>
    <button class="nav-btn" data-target="ui">UI/브랜딩</button>
    <button class="nav-btn" data-target="storage">파일/백업</button>
    <button class="nav-btn" data-target="numbers">번호 규칙</button>
  </nav>

  <main id="content">
    <!-- 1. 학교/조직 -->
    <section class="card" data-section="org">
      <div class="hd">
        <h2>학교/조직 기본정보</h2>
        <p>학교명·주소·연락처 및 기관 표준코드를 관리합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-6">
            <label>학교명</label>
            <input name="org.name" placeholder="예) 몬스터대학교">
          </div>
          <div class="col-3">
            <label>표준학교코드(행안부/교육부)</label>
            <input name="org.code" placeholder="예) 120001">
          </div>
          <div class="col-3">
            <label>사업자등록번호</label>
            <input name="org.bizno" placeholder="000-00-00000">
          </div>
          <div class="col-6">
            <label>대표 이메일</label>
            <input name="org.email" placeholder="info@univ.ac.kr">
          </div>
          <div class="col-6">
            <label>대표 전화</label>
            <input name="org.phone" placeholder="02-000-0000">
          </div>
          <div class="col-8">
            <label>주소</label>
            <input name="org.addr" placeholder="(우)00000 서울시 ○○구 ○○로 00">
          </div>
          <div class="col-4">
            <label>타임존/로케일</label>
            <div class="row">
              <select name="org.tz" style="flex:1">
                <option value="Asia/Seoul">Asia/Seoul</option>
                <option value="UTC">UTC</option>
              </select>
              <select name="org.locale" style="flex:1">
                <option value="ko-KR">ko-KR</option>
                <option value="en-US">en-US</option>
              </select>
            </div>
            <div class="help">로케일은 날짜/숫자 포맷에 영향을 줍니다.</div>
          </div>
        </div>

        <div class="hr"></div>
        <div class="grid">
          <div class="col-6">
            <span class="section-title">캠퍼스/단과대</span>
            <table class="table" id="tbl-campus">
              <thead><tr><th>코드</th><th>명칭</th><th></th></tr></thead>
              <tbody></tbody>
            </table>
            <div class="row">
              <input id="campusCode" placeholder="코드">
              <input id="campusName" placeholder="명칭" style="flex:1">
              <button class="btn" id="addCampus">추가</button>
            </div>
          </div>
          <div class="col-6">
            <span class="section-title">부속기관</span>
            <table class="table" id="tbl-unit">
              <thead><tr><th>코드</th><th>명칭</th><th></th></tr></thead>
              <tbody></tbody>
            </table>
            <div class="row">
              <input id="unitCode" placeholder="코드">
              <input id="unitName" placeholder="명칭" style="flex:1">
              <button class="btn" id="addUnit">추가</button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 2. 학사 기본값 -->
    <section class="card" data-section="academic" hidden>
      <div class="hd">
        <h2>학사 기본값</h2>
        <p>학사연도/학기, 수업·성적·졸업 기준 등을 정의합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-3">
            <label>학사연도</label>
            <input type="number" name="aca.year" min="2000" max="2100" value="2025">
          </div>
          <div class="col-3">
            <label>학기</label>
            <select name="aca.term">
              <option value="1">1학기</option><option value="2">2학기</option><option value="여름">여름</option><option value="겨울">겨울</option>
            </select>
          </div>
          <div class="col-3">
            <label>평점 스케일</label>
            <select name="aca.scale">
              <option>4.5</option><option>4.3</option><option>4.0</option>
            </select>
          </div>
          <div class="col-3">
            <label>최소 수강학점/최대</label>
            <div class="row">
              <input type="number" name="aca.minCredits" placeholder="최소">
              <input type="number" name="aca.maxCredits" placeholder="최대">
            </div>
          </div>
          <div class="col-6">
            <label>학번 규칙(템플릿)</label>
            <input name="aca.sidPattern" placeholder="예) {YY}{COL}{SEQ4}">
            <div class="help">{YY}=입학년도, {COL}=단과대코드, {SEQ4}=4자리 일련번호</div>
          </div>
          <div class="col-6">
            <label>수업시간표 기본(교시)</label>
            <input name="aca.periods" placeholder="예) 09:00-09:50, 10:00-10:50, ...">
          </div>
          <div class="col-12">
            <label>학사 일정(요약)</label>
            <textarea name="aca.calendar" placeholder="개강: 03-02 / 중간: 04-22~04-26 / 기말: 06-17~06-21 ..."></textarea>
          </div>
        </div>

        <div class="hr"></div>
        <div class="grid">
          <div class="col-4">
            <label>성적 등급표</label>
            <table class="table" id="tbl-grade">
              <thead><tr><th>등급</th><th>경계(이상)</th><th>평점</th><th></th></tr></thead>
              <tbody></tbody>
            </table>
            <div class="row">
              <input id="gLetter" placeholder="A+, A0 ...">
              <input id="gMin" type="number" step="0.1" placeholder="점수">
              <input id="gPoint" type="number" step="0.01" placeholder="평점">
              <button class="btn" id="addGrade">추가</button>
            </div>
          </div>
          <div class="col-4">
            <label>출결 규정</label>
            <textarea name="aca.attendance" placeholder="출석 80% 미만 F, 지각 3회=결석 1회, 공결 사유: ..."></textarea>
          </div>
          <div class="col-4">
            <label>졸업 요건 템플릿</label>
            <textarea name="aca.graduation" placeholder="총 130학점 / 전공 60 / 교양 30 / 평균평점 2.0 이상 / 의무 교과: ..."></textarea>
          </div>
        </div>
      </div>
    </section>

    <!-- 3. 코드/규정 -->
    <section class="card" data-section="codes" hidden>
      <div class="hd">
        <h2>코드/규정 관리</h2>
        <p>학과·전공·과정유형·휴복학 사유 등 공통코드를 관리합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-6">
            <span class="section-title">학과 코드</span>
            <table class="table" id="tbl-dept"><thead><tr><th>코드</th><th>학과명</th><th></th></tr></thead><tbody></tbody></table>
            <div class="row">
              <input id="deptCode" placeholder="코드"><input id="deptName" placeholder="학과명" style="flex:1"><button class="btn" id="addDept">추가</button>
            </div>
          </div>
          <div class="col-6">
            <span class="section-title">휴·복학 코드</span>
            <table class="table" id="tbl-leave"><thead><tr><th>코드</th><th>사유</th><th>유형</th><th></th></tr></thead><tbody></tbody></table>
            <div class="row">
              <input id="lvCode" placeholder="코드"><input id="lvName" placeholder="사유" style="flex:1">
              <select id="lvType"><option>휴학</option><option>복학</option></select>
              <button class="btn" id="addLeave">추가</button>
            </div>
          </div>
          <div class="col-12">
            <span class="section-title">교과구분 코드</span>
            <table class="table" id="tbl-courseType"><thead><tr><th>코드</th><th>명칭</th><th></th></tr></thead><tbody></tbody></table>
            <div class="row">
              <input id="ctCode" placeholder="코드"><input id="ctName" placeholder="명칭" style="flex:1"><button class="btn" id="addCt">추가</button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 4. 사용자/권한 -->
    <section class="card" data-section="user" hidden>
      <div class="hd">
        <h2>사용자/권한</h2>
        <p>역할(Role)과 메뉴 접근제어를 관리합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-6">
            <label>역할 정의</label>
            <table class="table" id="tbl-role"><thead><tr><th>역할코드</th><th>설명</th><th></th></tr></thead><tbody></tbody></table>
            <div class="row">
              <input id="roleCode" placeholder="예) ADMIN, DEPT, PROF"><input id="roleDesc" placeholder="설명" style="flex:1"><button class="btn" id="addRole">추가</button>
            </div>
          </div>
          <div class="col-6">
            <label>권한 정책 (요약)</label>
            <textarea name="user.policy" placeholder="예) ADMIN: 전체 / DEPT: 소속학과 한정 / PROF: 본인 강의 한정 ..."></textarea>
            <div class="help">세부 권한은 RBAC/ABAC 규칙으로 백엔드에서 해석</div>
          </div>
        </div>
      </div>
    </section>

    <!-- 5. 보안/개인정보 -->
    <section class="card" data-section="policy" hidden>
      <div class="hd">
        <h2>보안/개인정보</h2>
        <p>접근제어, 비밀번호·2FA 정책, 로그보관 및 개인정보 파기 기준을 정의합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-4">
            <label>비밀번호 정책</label>
            <div class="kvs"><input name="sec.pass" placeholder="예) 10자 이상, 대소문자/숫자/특수문자 포함"><span class="help">정규식 가능</span></div>
            <label>2단계 인증</label>
            <select name="sec.mfa"><option value="off">사용 안 함</option><option value="opt">선택</option><option value="req">필수</option></select>
          </div>
          <div class="col-4">
            <label>허용 IP/대역</label>
            <textarea name="sec.ip" placeholder="예) 123.123.0.0/16, 10.0.0.0/8"></textarea>
          </div>
          <div class="col-4">
            <label>로그 보관 기간(일)</label>
            <input type="number" name="sec.logDays" value="365">
            <label>개인정보 파기 주기(일)</label>
            <input type="number" name="sec.piiDays" value="1095">
          </div>
          <div class="col-12">
            <label>법정 고지문/약관</label>
            <textarea name="sec.notice" placeholder="개인정보 처리방침, 제3자 제공, 위탁 안내 등"></textarea>
          </div>
        </div>
      </div>
    </section>

    <!-- 6. 연동/API -->
    <section class="card" data-section="integrations" hidden>
      <div class="hd">
        <h2>연동/API</h2>
        <p>Single Sign-On, 웹훅, 외부 시스템 API 키를 등록합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-6">
            <label>SSO 방식</label>
            <select name="int.sso"><option>SAML2</option><option>OIDC</option><option>CAS</option><option>없음</option></select>
            <label>SSO 메타데이터/엔드포인트</label>
            <textarea name="int.ssoMeta" placeholder="IdP 엔드포인트/메타데이터 XML 또는 OIDC 설정"></textarea>
          </div>
          <div class="col-6">
            <label>웹훅(이벤트→URL)</label>
            <table class="table" id="tbl-webhook"><thead><tr><th>이벤트</th><th>URL</th><th></th></tr></thead><tbody></tbody></table>
            <div class="row">
              <input id="whEvent" placeholder="예) student.created">
              <input id="whUrl" placeholder="https://example.com/hook" style="flex:1">
              <button class="btn" id="addWebhook">추가</button>
            </div>
          </div>
          <div class="col-12">
            <label>외부 API 키(이름=값)</label>
            <table class="table" id="tbl-apikey"><thead><tr><th>이름</th><th>키</th><th></th></tr></thead><tbody></tbody></table>
            <div class="row">
              <input id="akName" placeholder="EXAM_SYS">
              <input id="akKey" placeholder="************" style="flex:1">
              <button class="btn" id="addApiKey">추가</button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 7. 알림 -->
    <section class="card" data-section="notice" hidden>
      <div class="hd">
        <h2>알림/메일·SMS</h2>
        <p>SMTP·SMS 게이트웨이와 기본 알림 템플릿을 관리합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-6">
            <label>SMTP 설정</label>
            <input name="nt.smtpHost" placeholder="smtp.univ.ac.kr">
            <div class="row"><input name="nt.smtpUser" placeholder="계정"><input name="nt.smtpPass" placeholder="비밀번호"></div>
            <div class="row">
              <input name="nt.smtpPort" type="number" placeholder="포트" value="587">
              <select name="nt.smtpTLS"><option value="starttls">STARTTLS</option><option value="ssl">SSL</option><option value="none">없음</option></select>
            </div>
            <label>발신 이메일</label>
            <input name="nt.fromEmail" placeholder="no-reply@univ.ac.kr">
          </div>
          <div class="col-6">
            <label>SMS 게이트웨이</label>
            <div class="row">
              <select name="nt.smsVendor"><option>사내</option><option>NCP</option><option>TWILIO</option></select>
              <input name="nt.smsKey" placeholder="Access Key" style="flex:1">
            </div>
            <label>기본 템플릿</label>
            <textarea name="nt.template" placeholder="[몬스터대학교] {name}님, {title} 안내드립니다."></textarea>
          </div>
        </div>
      </div>
    </section>

    <!-- 8. UI/브랜딩 -->
    <section class="card" data-section="ui" hidden>
      <div class="hd">
        <h2>UI/브랜딩</h2>
        <p>로고/파비콘/테마 컬러와 로그인 문구를 설정합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-6">
            <label>로고 URL</label>
            <input name="ui.logo" placeholder="/assets/logo.png">
            <label>파비콘 URL</label>
            <input name="ui.favicon" placeholder="/favicon.ico">
            <label>로그인 페이지 문구</label>
            <textarea name="ui.loginMsg" placeholder="학생과 교수의 더 나은 하루를 만듭니다."></textarea>
          </div>
          <div class="col-6">
            <label>테마 색상(HEX)</label>
            <div class="row"><input name="ui.primary" placeholder="#6AA6FF"><input name="ui.secondary" placeholder="#121831"></div>
            <label>접근성 체크</label>
            <div id="a11y" class="help">명도비: -</div>
          </div>
        </div>
      </div>
    </section>

    <!-- 9. 파일/백업 -->
    <section class="card" data-section="storage" hidden>
      <div class="hd">
        <h2>파일/백업</h2>
        <p>업로드 제한, 보존정책, 자동 백업을 설정합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-4">
            <label>최대 업로드 크기(MB)</label>
            <input type="number" name="st.maxUpload" value="50">
            <label>허용 확장자(쉼표)</label>
            <input name="st.ext" placeholder="pdf,docx,xlsx,png,jpg">
          </div>
          <div class="col-4">
            <label>백업 주기</label>
            <select name="st.backupCycle"><option>매일</option><option>매주</option><option>매월</option></select>
            <label>보존 기간(일)</label>
            <input type="number" name="st.retention" value="180">
          </div>
          <div class="col-4">
            <label>백업 위치</label>
            <input name="st.dst" placeholder="/mnt/backup or s3://bucket/prefix">
            <label>무결성 검증</label>
            <select name="st.verify"><option>SHA256</option><option>MD5</option><option>없음</option></select>
          </div>
        </div>
      </div>
    </section>

    <!-- 10. 번호 규칙 -->
    <section class="card" data-section="numbers" hidden>
      <div class="hd">
        <h2>번호 규칙</h2>
        <p>학번·교번·과목코드 등 일련번호 규칙을 정의합니다.</p>
      </div>
      <div class="body">
        <div class="grid">
          <div class="col-6">
            <label>교번 규칙</label>
            <input name="num.staff" placeholder="예) T{YY}{SEQ4}">
          </div>
          <div class="col-6">
            <label>과목코드 규칙</label>
            <input name="num.course" placeholder="예) {DEPT}{LV}{SEQ3}">
          </div>
          <div class="col-12">
            <label>시퀀스 초기값</label>
            <div class="row"><input type="number" name="num.seqStudent" placeholder="학생" value="1"><input type="number" name="num.seqStaff" placeholder="교직원" value="1"><input type="number" name="num.seqCourse" placeholder="과목" value="1"></div>
          </div>
        </div>
      </div>
    </section>

    <!-- 저장 바 -->
    <section class="card">
      <div class="body" style="display:flex;justify-content:flex-end;gap:10px">
        <button class="btn ghost" id="btn-reset">초기화</button>
        <button class="btn primary" id="btn-save">저장</button>
      </div>
    </section>
  </main>
</div>

<div id="toast" class="toast">저장되었습니다.</div>

<script>
  // --------- 데이터 스키마(키) ----------
  const SCHEMA = {
    "org": {name:"",code:"",bizno:"",email:"",phone:"",addr:"",tz:"Asia/Seoul",locale:"ko-KR",
            campus:[], units:[]},
    "aca": {year:2025,term:"1",scale:"4.5",minCredits:0,maxCredits:24,sidPattern:"{YY}{COL}{SEQ4}",
            periods:"",calendar:"",attendance:"",graduation:"",grades:[]},
    "codes": {dept:[], leave:[], courseType:[]},
    "user": {policy:"", roles:[]},
    "sec": {pass:"", mfa:"off", ip:"", logDays:365, piiDays:1095, notice:""},
    "int": {sso:"없음", ssoMeta:"", webhooks:[], apikeys:[]},
    "nt": {smtpHost:"",smtpUser:"",smtpPass:"",smtpPort:587,smtpTLS:"starttls",fromEmail:"",smsVendor:"사내",smsKey:"",template:""},
    "ui": {logo:"",favicon:"",loginMsg:"",primary:"#6AA6FF",secondary:"#121831"},
    "st": {maxUpload:50,ext:"pdf,docx,xlsx,png,jpg",backupCycle:"매주",retention:180,dst:"",verify:"SHA256"},
    "num": {staff:"T{YY}{SEQ4}",course:"{DEPT}{LV}{SEQ3}",seqStudent:1,seqStaff:1,seqCourse:1}
  };

  // --------- 상태 로드/저장 ----------
  const KEY="univ.base.settings.v1";
  const state = load();

  function load(){
    const raw = localStorage.getItem(KEY);
    return raw ? JSON.parse(raw) : structuredClone(SCHEMA);
  }
  function save(){
    localStorage.setItem(KEY, JSON.stringify(state));
    badgeUpdate(); toast("저장되었습니다.");
  }
  function resetAll(){
    if(!confirm("모든 값을 초기화할까요?")) return;
    Object.assign(state, structuredClone(SCHEMA));
    bindAll(); toast("초기화 완료");
  }

  // --------- 바인딩 ----------
  function bindInput(name){
    const el = document.querySelector(`[name="${name}"]`);
    if(!el) return;
    const [ns,key] = name.split(".");
    el.value = state[ns][key] ?? "";
    el.addEventListener("input", e=>{
      let v = e.target.value;
      if(el.type==="number") v = Number(v);
      state[ns][key] = v; liveChecks();
    });
  }
  function bindAll(){
    document.querySelectorAll("[name]").forEach(i=>{
      const n = i.getAttribute("name");
      const [ns,key] = n.split(".");
      i.value = state[ns][key] ?? "";
    });
    // tables
    renderRows("tbl-campus", state.org.campus, (r,i)=>rowCampus(i));
    renderRows("tbl-unit", state.org.units, (r,i)=>rowUnit(i));
    renderRows("tbl-grade", state.aca.grades, (r,i)=>rowGrade(i));
    renderRows("tbl-dept", state.codes.dept, (r,i)=>rowDept(i));
    renderRows("tbl-leave", state.codes.leave, (r,i)=>rowLeave(i));
    renderRows("tbl-courseType", state.codes.courseType, (r,i)=>rowCt(i));
    renderRows("tbl-webhook", state.int.webhooks, (r,i)=>rowWebhook(i));
    renderRows("tbl-apikey", state.int.apikeys, (r,i)=>rowApiKey(i));
    badgeUpdate(); liveChecks();
  }

  // 바인딩 호출
  [
    "org.name","org.code","org.bizno","org.email","org.phone","org.addr","org.tz","org.locale",
    "aca.year","aca.term","aca.scale","aca.minCredits","aca.maxCredits","aca.sidPattern","aca.periods","aca.calendar","aca.attendance","aca.graduation",
    "user.policy","sec.pass","sec.mfa","sec.ip","sec.logDays","sec.piiDays","sec.notice",
    "nt.smtpHost","nt.smtpUser","nt.smtpPass","nt.smtpPort","nt.smtpTLS","nt.fromEmail","nt.smsVendor","nt.smsKey","nt.template",
    "ui.logo","ui.favicon","ui.loginMsg","ui.primary","ui.secondary",
    "st.maxUpload","st.ext","st.backupCycle","st.retention","st.dst","st.verify",
    "num.staff","num.course","num.seqStudent","num.seqStaff","num.seqCourse"
  ].forEach(bindInput);

  // --------- 테이블 렌더 도우미 ----------
  function renderRows(tblId, arr, rowFn){
    const tb = document.querySelector(`#${tblId} tbody`);
    tb.innerHTML = arr.map((r,i)=>rowFn(r,i)).join("") || `<tr><td colspan="10" class="help">항목이 없습니다.</td></tr>`;
  }
  const rowDelBtn = i=>`<button class="btn" onclick="delRow(this,${i})">삭제</button>`;
  window.delRow = (btn, idx)=>{
    const table = btn.closest("table").id;
    const map = {
      "tbl-campus": state.org.campus,
      "tbl-unit": state.org.units,
      "tbl-grade": state.aca.grades,
      "tbl-dept": state.codes.dept,
      "tbl-leave": state.codes.leave,
      "tbl-courseType": state.codes.courseType,
      "tbl-webhook": state.int.webhooks,
      "tbl-apikey": state.int.apikeys
    };
    map[table].splice(idx,1);
    bindAll();
  };

  // 각 행 템플릿
  const rowCampus = i => `<tr><td>${esc(state.org.campus[i].code)}</td><td>${esc(state.org.campus[i].name)}</td><td>${rowDelBtn(i)}</td></tr>`;
  const rowUnit   = i => `<tr><td>${esc(state.org.units[i].code)}</td><td>${esc(state.org.units[i].name)}</td><td>${rowDelBtn(i)}</td></tr>`;
  const rowGrade  = i => `<tr><td>${esc(state.aca.grades[i].letter)}</td><td>${state.aca.grades[i].min}</td><td>${state.aca.grades[i].pt}</td><td>${rowDelBtn(i)}</td></tr>`;
  const rowDept   = i => `<tr><td>${esc(state.codes.dept[i].code)}</td><td>${esc(state.codes.dept[i].name)}</td><td>${rowDelBtn(i)}</td></tr>`;
  const rowLeave  = i => `<tr><td>${esc(state.codes.leave[i].code)}</td><td>${esc(state.codes.leave[i].name)}</td><td>${esc(state.codes.leave[i].type)}</td><td>${rowDelBtn(i)}</td></tr>`;
  const rowCt     = i => `<tr><td>${esc(state.codes.courseType[i].code)}</td><td>${esc(state.codes.courseType[i].name)}</td><td>${rowDelBtn(i)}</td></tr>`;
  const rowWebhook= i => `<tr><td>${esc(state.int.webhooks[i].event)}</td><td>${esc(state.int.webhooks[i].url)}</td><td>${rowDelBtn(i)}</td></tr>`;
  const rowApiKey = i => `<tr><td>${esc(state.int.apikeys[i].name)}</td><td>••••••••</td><td>${rowDelBtn(i)}</td></tr>`;
  const esc = s => (s??"").toString().replace(/[&<>"']/g, m=>({ "&":"&amp;","<":"&lt;",">":"&gt;","\"":"&quot;","'":"&#039;" }[m]));

  // --------- 추가 버튼들 ----------
  document.getElementById("addCampus").onclick=()=>{
    const code=val("campusCode"), name=val("campusName");
    if(!code||!name) return toast("코드/명칭을 입력하세요");
    state.org.campus.push({code,name}); set("campusCode",""); set("campusName",""); bindAll();
  };
  document.getElementById("addUnit").onclick=()=>{
    const code=val("unitCode"), name=val("unitName");
    if(!code||!name) return toast("코드/명칭을 입력하세요");
    state.org.units.push({code,name}); set("unitCode",""); set("unitName",""); bindAll();
  };
  document.getElementById("addGrade").onclick=()=>{
    const letter=val("gLetter"), min=Number(val("gMin")), pt=Number(val("gPoint"));
    if(!letter||isNaN(min)||isNaN(pt)) return toast("등급/점수를 확인하세요");
    state.aca.grades.push({letter,min,pt}); ["gLetter","gMin","gPoint"].forEach(id=>set(id,"")); bindAll();
  };
  document.getElementById("addDept").onclick=()=>{
    const code=val("deptCode"), name=val("deptName");
    if(!code||!name) return toast("학과 코드/명칭을 입력");
    state.codes.dept.push({code,name}); set("deptCode",""); set("deptName",""); bindAll();
  };
  document.getElementById("addLeave").onclick=()=>{
    const code=val("lvCode"), name=val("lvName"), type=val("lvType");
    if(!code||!name) return toast("코드/사유 입력");
    state.codes.leave.push({code,name,type}); set("lvCode",""); set("lvName",""); bindAll();
  };
  document.getElementById("addCt").onclick=()=>{
    const code=val("ctCode"), name=val("ctName");
    if(!code||!name) return toast("코드/명칭 입력");
    state.codes.courseType.push({code,name}); set("ctCode",""); set("ctName",""); bindAll();
  };
  document.getElementById("addWebhook").onclick=()=>{
    const event=val("whEvent"), url=val("whUrl");
    if(!event||!url) return toast("이벤트/URL 입력");
    state.int.webhooks.push({event,url}); set("whEvent",""); set("whUrl",""); bindAll();
  };
  document.getElementById("addApiKey").onclick=()=>{
    const name=val("akName"), key=val("akKey");
    if(!name||!key) return toast("이름/키 입력");
    state.int.apikeys.push({name,key}); set("akName",""); set("akKey",""); bindAll();
  };

  // --------- 내보내기/불러오기 ----------
  document.getElementById("btn-export").onclick=()=>{
    const blob = new Blob([JSON.stringify(state,null,2)], {type:"application/json"});
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob); a.download = `기본환경정보_${state.aca.year}.json`; a.click();
  };
  document.getElementById("fileImport").onchange=(e)=>{
    const file = e.target.files[0]; if(!file) return;
    const fr = new FileReader(); fr.onload = ()=>{
      try{ const data = JSON.parse(fr.result); Object.assign(state, SCHEMA, data); bindAll(); toast("불러오기 완료"); }
      catch{ toast("불러오기 실패", true); }
    }; fr.readAsText(file);
  };

  // --------- 저장/탭 ----------
  document.getElementById("btn-save").onclick=save;
  document.getElementById("btn-save-top").onclick=save;
  document.getElementById("btn-reset").onclick=resetAll;

  document.querySelectorAll(".nav-btn").forEach(btn=>{
    btn.onclick=()=>{
      document.querySelectorAll(".nav-btn").forEach(b=>b.classList.remove("active"));
      btn.classList.add("active");
      const target = btn.dataset.target;
      document.querySelectorAll("main > section.card[data-section]").forEach(sec=>{
        sec.hidden = sec.dataset.section!==target;
      });
      window.scrollTo({top:0,behavior:"smooth"});
    };
  });

  // --------- 실시간 체크/배지 ----------
  function badgeUpdate(){
    document.getElementById("badge-year").textContent = state.aca.year;
    document.getElementById("badge-term").textContent = state.aca.term;
    document.getElementById("badge-scale").textContent = state.aca.scale;
  }
  function liveChecks(){
    // 접근성(대략적인 명도비 계산)
    const ratio = contrast(state.ui.primary, "#121831");
    document.getElementById("a11y").textContent = `명도비: ${ratio.toFixed(2)} (권장 4.5 이상)`;
  }
  function contrast(hex1, hex2){
    const L = hex=>{ let c=hex.replace("#",""); if(c.length===3) c=[...c].map(x=>x+x).join("");
      const [r,g,b] = [0,2,4].map(i=>parseInt(c.substr(i,2),16)/255).map(v=>v<=.03928? v/12.92 : Math.pow((v+.055)/1.055,2.4));
      return .2126*r+.7152*g+.0722*b; };
    const l1=L(hex1), l2=L(hex2); return (Math.max(l1,l2)+.05)/(Math.min(l1,l2)+.05);
  }

  // --------- 유틸 ----------
  function val(id){ return document.getElementById(id).value.trim(); }
  function set(id,v){ document.getElementById(id).value=v; }
  function toast(msg, danger=false){
    const t=document.getElementById("toast"); t.textContent=msg; t.style.borderColor=danger?'#5a1b2a':'#1f2a55'; t.classList.add("show");
    setTimeout(()=>t.classList.remove("show"),1400);
  }

  // 초기 데이터(예시) – 실제 서비스에선 DB값을 주입
  if(!localStorage.getItem(KEY)){
    state.org.name="몬스터대학교"; state.org.code="120001";
    state.org.campus=[{code:"M",name:"본교"},{code:"S",name:"서브캠퍼스"}];
    state.codes.dept=[{code:"LANG",name:"국어국문학과"},{code:"CS",name:"컴퓨터과학과"},{code:"BUS",name:"경영학과"}];
    state.aca.grades=[{letter:"A+",min:95,pt:4.5},{letter:"A0",min:90,pt:4.0},{letter:"B+",min:85,pt:3.5}];
    save();
  }
  bindAll();
</script>
</body>
</html>
