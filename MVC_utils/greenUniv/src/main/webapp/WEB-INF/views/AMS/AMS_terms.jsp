<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ page isELIgnored="true" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>약관관리 | 대학 관리자</title>
<style>
  :root{--bg:#0b1020;--card:#121831;--muted:#9aa3b2;--txt:#eef3ff;--accent:#6aa6ff;--line:#1e2544}
  *{box-sizing:border-box} body{margin:0;font-family:system-ui,-apple-system,Segoe UI,Roboto,Pretendard,Malgun Gothic,sans-serif;background:var(--bg);color:var(--txt)}
  header{position:sticky;top:0;z-index:5;backdrop-filter:blur(8px);background:#0b1020cc;border-bottom:1px solid var(--line)}
  header .bar{max-width:1100px;margin:0 auto;display:flex;gap:12px;align-items:center;padding:12px 18px}
  .brand{font-weight:700}.brand small{display:block;color:var(--muted);font-size:12px}
  .btn{border:0;border-radius:10px;padding:10px 14px;color:#fff;background:#273566;cursor:pointer}
  .btn.primary{background:var(--accent);color:#081225;font-weight:700}.btn.ghost{background:transparent;border:1px solid var(--line);color:var(--txt)}
  .wrap{max-width:1100px;margin:22px auto;padding:0 18px;display:grid;grid-template-columns:360px 1fr;gap:18px}
  @media (max-width:960px){.wrap{grid-template-columns:1fr}}
  .card{background:var(--card);border:1px solid var(--line);border-radius:14px;overflow:hidden}
  .card .hd{display:flex;justify-content:space-between;align-items:center;padding:14px 16px;border-bottom:1px solid var(--line)}
  .card .hd h2{margin:0;font-size:16px}
  .body{padding:16px}
  .table{width:100%;border-collapse:collapse;font-size:13px}
  .table th,.table td{padding:8px 10px;border-bottom:1px solid var(--line);text-align:left}
  .help{color:var(--muted);font-size:12px}
  label{display:block;color:var(--muted);font-size:12px;margin:6px 2px}
  input,select,textarea{width:100%;padding:10px 12px;border-radius:10px;border:1px solid var(--line);background:#0e1530;color:var(--txt)}
  textarea{min-height:240px;resize:vertical}
  .row{display:flex;gap:10px;flex-wrap:wrap}
  .section-title{margin:6px 0 2px;color:var(--muted);font-size:11px;letter-spacing:.08em;text-transform:uppercase}
  .toast{position:fixed;right:16px;bottom:16px;background:#0f1a3a;border:1px solid #1f2a55;color:#e8f0ff;padding:12px 14px;border-radius:12px;opacity:0;transform:translateY(8px);transition:.25s}
  .toast.show{opacity:1;transform:none}
</style>
</head>
<body>
<header>
  <div class="bar">
    <div class="brand">약관관리 <small>University Admin • Terms Manager</small></div>
    <div style="margin-left:auto" class="row">
      <button class="btn ghost" id="btn-export">내보내기(.json)</button>
      <label for="fileImport" class="btn">불러오기</label>
      <input type="file" id="fileImport" accept="application/json" hidden />
      <button class="btn primary" id="btn-save">저장</button>
    </div>
  </div>
</header>

<div class="wrap">
  <!-- 좌측: 문서 목록 -->
  <section class="card">
    <div class="hd"><h2>문서 목록</h2></div>
    <div class="body">
      <table class="table" id="tbl-terms">
        <thead><tr><th>코드</th><th>제목</th><th>현재버전</th><th>상태</th><th></th></tr></thead>
        <tbody></tbody>
      </table>
      <div class="row" style="margin-top:8px">
        <input id="tmCode" placeholder="코드 (예: TOS, PRIV)">
        <input id="tmTitle" placeholder="제목 (예: 이용약관)" style="flex:1">
        <button class="btn" id="addTerms">추가</button>
      </div>
      <p class="help">코드 예시: TOS(이용약관), PRIV(개인정보), LOC(위치기반), MKT(마케팅동의)</p>
    </div>
  </section>

  <!-- 우측: 버전/편집 -->
  <section class="card">
    <div class="hd"><h2>버전 · 편집</h2></div>
    <div class="body">
      <div class="row" style="margin-bottom:8px">
        <select id="selTerms" style="flex:1"></select>
        <button class="btn" id="newVersion">새 버전</button>
        <button class="btn" id="publishVersion">공개</button>
        <button class="btn ghost" id="previewTerms">미리보기</button>
      </div>

      <div class="row">
        <div style="flex:1;min-width:180px">
          <label>버전</label>
          <input id="tvVersion" placeholder="1.0.0">
        </div>
        <div style="flex:1;min-width:180px">
          <label>시행일(YYYY-MM-DD)</label>
          <input id="tvEffective" placeholder="2025-03-01">
        </div>
      </div>

      <label>개정 사유(변경점 요약)</label>
      <input id="tvChangelog" placeholder="예: 제3자 제공 범위 명확화">

      <label style="margin-top:8px">본문</label>
      <textarea id="tvBody" placeholder="[예시대학교] 약관 본문을 입력하세요. (치환자: {name}, {today}, {year})"></textarea>

      <div class="help" style="margin-top:6px">* “저장”은 브라우저에 임시 저장됩니다. 운영 반영은 서버 API 연동으로 교체하세요.</div>
    </div>
  </section>
</div>

<!-- 미리보기 모달 -->
<div id="termsModal" style="position:fixed;inset:0;display:none;background:#0008">
  <div style="max-width:900px;margin:5vh auto;background:#121831;border:1px solid #1e2544;border-radius:14px;padding:18px;color:#eef3ff">
    <div class="row" style="justify-content:space-between;align-items:center;margin-bottom:10px">
      <strong>약관 미리보기</strong>
      <button class="btn" id="closePreview">닫기</button>
    </div>
    <div id="termsPreview" style="white-space:pre-wrap;line-height:1.6"></div>
  </div>
</div>

<div id="toast" class="toast">저장되었습니다.</div>

<script>
  // ===== 상태/스키마 =====
  const KEY = "univ.terms.manager.v1";
  const SCHEMA = { list: [] }; // [{code,title,current,status,versions:[{version,effective,body,changelog,status,updatedAt}]}]
  const state = load();

  //기존 데이터 마이그레이션: 본문에 태그가 있으면 텍스트로 변환
  (function migrateToPlainText(){
    let changed = false;
    (state.list || []).forEach(doc=>{
      (doc.versions || []).forEach(v=>{
        if (typeof v.body === "string" && /<[^>]+>/.test(v.body)) {
          v.body = stripHtmlWithBreaks(v.body);
          changed = true;
        }
      });
    });
    if (changed) save(); // 변환되었으면 저장
  })();
  
  function load(){ const raw = localStorage.getItem(KEY); return raw ? JSON.parse(raw) : JSON.parse(JSON.stringify(SCHEMA)); }
  function save(){ localStorage.setItem(KEY, JSON.stringify(state)); toast("저장되었습니다."); }

  // ===== 렌더링 =====
  function esc(s){ return (s??"").toString().replace(/[&<>"']/g, m=>({"&":"&amp;","<":"&lt;",">":"&gt;","\"":"&quot;","'":"&#039;"}[m])); }
  function renderTable(){
    const tb = document.querySelector("#tbl-terms tbody");
    if(!state.list.length){ tb.innerHTML = '<tr><td colspan="5" class="help">문서가 없습니다.</td></tr>'; }
    else{
      tb.innerHTML = state.list.map((t,i)=>
        `<tr><td>${esc(t.code)}</td><td>${esc(t.title)}</td><td>${t.current||'-'}</td><td>${t.status||'-'}</td>
         <td><button class="btn" onclick="delDoc(${i})">삭제</button></td></tr>`).join("");
    }
  }
  function renderSelect(){
    const sel = document.getElementById("selTerms");
    sel.innerHTML = state.list.map((t,i)=>`<option value="${i}">${t.code} - ${t.title}</option>`).join("");
    if(state.list.length){ sel.value="0"; loadLatest(0); } else { clearEditor(); }
  }
  window.delDoc = function(i){ state.list.splice(i,1); renderTable(); renderSelect(); };

  // ===== 에디터 바인딩 =====
  function loadLatest(idx){
  const t = state.list[idx]; if(!t){ clearEditor(); return; }
  const v = (t.versions && t.versions.length) ? t.versions[t.versions.length-1] : null;
  document.getElementById("tvVersion").value   = v ? v.version   : "";
  document.getElementById("tvEffective").value = v ? v.effective : "";
  document.getElementById("tvChangelog").value = v ? v.changelog : "";
  // ▼ 본문 넣을 때 변환해서 넣기
  document.getElementById("tvBody").value      = v ? stripHtmlWithBreaks(v.body) : "";
}
  function clearEditor(){
    document.getElementById("tvVersion").value="";
    document.getElementById("tvEffective").value="";
    document.getElementById("tvChangelog").value="";
    document.getElementById("tvBody").value="";
  }
  function stripHtmlWithBreaks(html) {
	  // <br> → 줄바꿈 문자
	  html = html.replace(/<br\s*\/?>/gi, "\n");

	  // 나머지 태그 제거
	  let tmp = document.createElement("div");
	  tmp.innerHTML = html;
	  return tmp.textContent || tmp.innerText || "";
	}


  // ===== 이벤트 =====
  document.getElementById("addTerms").onclick = ()=>{
    const code = document.getElementById("tmCode").value.trim();
    const title= document.getElementById("tmTitle").value.trim();
    if(!code || !title) return toast("코드와 제목을 입력하세요.", true);
    state.list.push({code,title,current:"",status:"초안",versions:[]});
    document.getElementById("tmCode").value=""; document.getElementById("tmTitle").value="";
    renderTable(); renderSelect(); toast("문서가 추가되었습니다.");
  };
  document.getElementById("selTerms").onchange = function(){ loadLatest(Number(this.value||0)); };

  document.getElementById("newVersion").onclick = ()=>{
	  const idx = Number(document.getElementById("selTerms").value||0);
	  const doc = state.list[idx]; if(!doc) return toast("문서를 먼저 선택하세요.", true);

	  const ver = document.getElementById("tvVersion").value.trim();
	  const eff = document.getElementById("tvEffective").value.trim();
	  const chg = document.getElementById("tvChangelog").value.trim();
	  const bodyRaw = document.getElementById("tvBody").value;

	  const body = stripHtmlWithBreaks(bodyRaw); // ← 여기서 변환

	  if(!ver || !eff) return toast("버전/시행일을 입력하세요.", true);
	  doc.versions.push({version:ver,effective:eff,body:body,changelog:chg,status:"초안",updatedAt:new Date().toISOString()});
	  doc.current = ver; doc.status = "초안";
	  save(); renderTable(); renderSelect(); toast("새 버전을 추가했습니다.");
	};

  document.getElementById("publishVersion").onclick = ()=>{
    const idx = Number(document.getElementById("selTerms").value||0);
    const doc = state.list[idx]; if(!doc || !doc.versions.length) return toast("공개할 버전이 없습니다.", true);
    const last = doc.versions[doc.versions.length-1];
    last.status = "공개"; last.updatedAt = new Date().toISOString();
    doc.current = last.version; doc.status = "공개";
    save(); renderTable(); renderSelect(); toast("현재 버전을 공개했습니다.");
  };

  document.getElementById("previewTerms").onclick = ()=>{
	  let body = document.getElementById("tvBody").value || "";
	  const now = new Date();

	  body = stripHtmlWithBreaks(body)   // ← 태그 제거 + 줄바꿈 유지
	           .replaceAll("{today}", now.toISOString().slice(0,10))
	           .replaceAll("{year}", String(now.getFullYear()))
	           .replaceAll("{name}", "홍길동");

	  // 줄바꿈 유지되도록 textContent + white-space: pre-wrap
	  document.getElementById("termsPreview").textContent = body;
	  document.getElementById("termsModal").style.display = "block";
	};
  document.getElementById("closePreview").onclick = ()=>{ document.getElementById("termsModal").style.display="none"; };

  document.getElementById("btn-save").onclick = save;

  document.getElementById("btn-export").onclick = ()=>{
    const blob = new Blob([JSON.stringify(state,null,2)], {type:"application/json"});
    const a = document.createElement("a"); a.href = URL.createObjectURL(blob); a.download = "약관관리_export.json"; a.click();
  };
  document.getElementById("fileImport").onchange = e=>{
    const f = e.target.files[0]; if(!f) return;
    const fr = new FileReader();
    fr.onload = ()=>{
      try{ const data = JSON.parse(fr.result); state.list = Array.isArray(data.list) ? data.list : []; renderTable(); renderSelect(); toast("불러오기 완료"); }
      catch{ toast("불러오기 실패: JSON을 확인하세요.", true); }
    };
    fr.readAsText(f);
  };

  // ===== 유틸 =====
  function toast(msg, danger){
    const el = document.getElementById("toast");
    el.textContent = msg; el.style.borderColor = danger ? "#5a1b2a" : "#1f2a55";
    el.classList.add("show"); setTimeout(()=>el.classList.remove("show"), 1400);
  }

//===== 초기 예시 데이터 (최초 1회) =====
  if(!localStorage.getItem(KEY)){
    state.list = [
      {
        code:"TOS",
        title:"이용약관",
        current:"1.0.0",
        status:"공개",
        versions:[
          {
            version:"1.0.0",
            effective:"2025-03-01",
            body: `<b>제 1 조 (목적)</b><br>
  본 약관은 몬스터대학교 사이트가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 몬스터대학교 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br><br>
  <b>제2조(회원약관의 효력)</b><br>
  본 약관은 몬스터대학교 사이트의 회원가입 시 회원들에게 공지하고 동의함으로서 효력이 발생한다.<br><br>
  <b>제3조(회원약관의 수정)</b><br>
  몬스터대학교 사이트는 본 약관을 변경할 수 있으며 변경되는 약관은 화면에 게재하여 회원들에게 공지함으로써 효력이 발생한다.<br><br>
  <b>제4조(이용계약의 체결)</b><br>
  회원가입 시 회원 약관 밑에 있는 동의버튼을 누르면 약관에 동의하여 이 계약이 체결된 것으로 간주한다.<br><br>
  <b>제5조(회원가입)</b><br>
  회원가입은 몬스터대학교 사이트의 회원 가입 신청 양식에 가입 희망 회원이 본인정보를 이용하여 인터넷으로 신청 즉시 가입이 승인되어 서비스를 이용할 수 있다.<br><br>
  <b>제6조(회원정보의 변경)</b><br>
  회원은 아래 각 호의 1에 해당하는 사항이 변경되었을 경우 즉시 정보수정의 관리페이지에서 이를 변경하여야 한다. 몬스터대학교는 회원이 회원정보를 변경하지 아니하여 발생한 손해에 대하여 책임을 부담하지 아니한다.<br><br>
  1. 휴대폰번호<br>
  2. 이메일<br><br>
  <b>제7조(이용제한 등)</b><br>
  몬스터대학교는 회원이 이 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우, 경고, 일시정지, 영구이용정지 등으로 서비스 이용을 제한할 수 있다.<br><br>
  <b>제8조(회원의 의무)</b><br>
  ①회원의 아이디와 비밀번호의 관리와 책임은 회원에게 있으며 관리소홀과 부정사용으로 인한 모든 사항은 회원에게 귀책된다.<br>
  ②이용회원은 몬스터대학교 사이트의 서비스를 불법으로 복제 유통시킬 수 없으며 이 경우 민형사상의 책임을 지게 된다.<br>
  1. 신청 또는 변경 시 허위내용의 등록<br>
  2. 타인의 정보도용<br>
  3. 몬스터대학교가 게시한 정보의 변경<br>
  4. 몬스터대학교와 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>
  5. 몬스터대학교 및 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>
  6. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 서비스에 공개 또는 게시하는 행위<br>
  7. 몬스터대학교의 동의 없이 영리를 목적으로 서비스를 사용하는 행위<br>
  8. 기타 불법적이거나 부당한 행위<br><br>
  <b>제9조(몬스터대학교 사이트의 의무)</b><br>
  몬스터대학교 사이트는 서비스제공과 관련된 이용회원의 정보를 회원의 허락없이 타인에게 누설하지 않는다. 다만 몬스터대학교 웹 서비스 이용약관을 위배하는 회원이나 몬스터대학교 웹 서비스를 이용하여 타인에게 법적인 피해를 주거나 미풍양속을 해치는 행위를 한 회원 등에게 법적인 조치를 취하기 위하여 개인정보를 공개해야 한다고 판단되는 충분한 근거가 있는 경우는 예외로 한다. 이 경우에도 개인에게는 제공되지 않으며 규정된 절차에 따라서 수사기관에만 제공할 수 있다.<br><br>
  <b>제10조(서비스 이용시간)</b><br>
  몬스터대학교 사이트의 인터넷 서비스는 년중무휴로 1일 24시간 운영된다. 단, 설비보수공사 등의 사유나 운영상의 이유로 서비스를 일시중지 할 수 있다. 이때 몬스터대학교 사이트에 사전공지를 하여 회원들에게 알린다.<br><br>
  <b>제11조(회원의 탈퇴)</b><br>
  회원이 서비스 탈퇴신청을 하면 몬스터대학교 사이트에서는 바로 회원탈퇴를 승인한다. 탈퇴신청은 회원이 직접 탈퇴를 선택해야만 가능하다.<br><br>
  <b>제12조(게시물의 저작권)</b><br>
  ①이용회원이 게시한 게시물의 내용에 대한 권리는 게시자에게 있다.<br>
  ②몬스터대학교 사이트는 게시된 내용을 사전 통지 없이 편집, 이동할 수 있는 권리를 보유하며, 게시판운영 원칙에 따라 사전 통지 없이 삭제할 수 있다.<br>
  ③회원의 게시물이 타인의 저작권을 침해함으로써 발생하는 민·형사상의 책임은 전적으로 게시자가 부담 하여야 한다.<br><br>
  <b>제13조(게시물의 관리)</b><br>
  ①회원의 게시물이 정보통신망법 및 저작권법등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, 학교는 관련법에 따라 조치를 취하여야 한다.<br>
  ②몬스터대학교는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 몬스터대학교 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있다.<br>
  ③몬스터대학교에서 운영하는 게시판은 아래에 대한 게시물의 경우 삭제 및 임시조치 등을 취할 수 있다.<br>
  1. 게시판 성격에 맞지 않는 게시물<br>
  2. 개인의 인신공격 및 인권과 명예훼손 관련 게시물<br>
  3. 불건전한 언어 및 폭력적 언어를 사용한 게시물<br>
  4. 몬스터대학교 이외의 특정단체나 제품, 행사의 홍보 및 상업적 광고를 담고 있는 게시물<br>
  5. 법과 사회윤리에 반하는 내용의 게시물<br><br>
  <b>제14조(재판관할)</b><br>
  몬스터대학교 사이트와 회원간 분쟁이 발생할 경우 몬스터대학교 사이트의 소재지 법원을 관할 법원으로 한다.<br><br>
  <b>[부칙]</b><br>
  이 약관은 2009년 9월 16일부터 시행한다.<br><br>`,
            changelog:"초판",
            status:"공개",
            updatedAt:new Date().toISOString()
          }
        ]
      },
      {
        code:"PRIV",
        title:"개인정보 처리방침",
        current:"1.0.0",
        status:"공개",
        versions:[
          {
            version:"1.0.0",
            effective:"2025-03-01",
            body: `<b>몬스터대학교 홈페이지는 회원가입에 필요한 최소한의 개인정보를 수집하며, 이에 대한 동의를 얻고 있습니다.</b><br><br>
  <b>1. 수집하는 개인정보 항목</b><br>
  - 필수항목 : 이름, 아이디, 비밀번호, 생년월일, 휴대폰번호<br>
  - 선택항목 : 전화번호, 이메일, 소속기관<br>
  - 컴퓨터에 의해 자동 수집되는 항목 : 접속IP정보, 서비스이용기록, 접속로그<br><br>
  <b>2. 개인정보의 수집 및 이용목적</b><br>
  몬스터대학교 홈페이지는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
  - 회원관리 : 회원제 서비스 이용에 따른 본인 확인, 불만처리 등 민원처리, 고지사항 전달<br><br>
  <b>3. 개인정보의 보유 및 이용기간</b><br>
  몬스터대학교 홈페이지의 회원정보 보유기간은 2년이며, 회원가입일로부터 2년이 경과하거나 회원탈퇴 시 보유하고 있는 개인정보를 지체 없이 파기합니다. 단, 2년 경과 시 개인정보 수집 및 이용 재동의절차를 거쳐 개인정보의 보유 및 이용기간을 연장할 수 있습니다.<br><br>
  <b>4. 동의를 거부할 권리 및 불이익</b><br>
  동의를 거부할 권리가 있으며, 동의 거부 시 회원가입이 불가할 수 있습니다. (선택항목은 동의 거부를 하여도 별도 불이익이 없습니다.)<br><br>`,
            changelog:"초판",
            status:"공개",
            updatedAt:new Date().toISOString()
          }
        ]
      }
    ];
    save();
  }
  renderTable(); renderSelect();

  
</script>
</body>
</html>
