<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% String[] version  = new String[] {"PC_KOR", "PC_ENG", "MO_KOR", "MO_ENG"}; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<link rel="icon" type="image/png" href='<c:url value="/public/img/favicon.ico"/>'>
<!-- Bootstrap core CSS     -->
<link href='<c:url value="/public/assets/css/bootstrap.min.css"/>' rel="stylesheet" />

<!--  Light Bootstrap Dashboard core CSS    -->
<link href='<c:url value="/public/assets/css/light-bootstrap-dashboard.css?v=1.4.1"/>' rel="stylesheet"/>


<!--     Fonts and icons     -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<link href='<c:url value="/public/assets/css/pe-icon-7-stroke.css"/>' rel="stylesheet" />
<link href='<c:url value="/public/css/magnific-popup.css"/>' rel="stylesheet" />
<link href='<c:url value="/public/css/admin.css"/>' rel="stylesheet" />




<title>New Blue Bricks</title>
</head>
<body>
	<div class="wrapper">
		
		<!-- SIDE BAR START -->
        <%@ include file="/WEB-INF/jsp/admin/common/sidebar.jsp"  %>
        <!-- SIDE BAR END -->
		
		
		
		<div class="main-panel"> 
			<div class="main-content">
			    <div class="container-fluid">
					<h2>NOTICE WRITE</h2>
					<!-- MAIN CONTENT START -->
					
					<div class="version">
						<a class="btn btn-sm" href="#PC_KOR">PC-KOR</a>
						<a class="btn btn-sm" href="#PC_ENG">PC-ENG</a>
						<a class="btn btn-sm" href="#MO_KOR">MO-KOR</a>
						<a class="btn btn-sm" href="#MO_ENG">MO-ENG</a>
					</div>
					
			        <form:form name="submitForm" method="post" class="form-horizontal" modelAttribute="NewsWriteFormModel">
			        
			        	
			        	<% for (String v : version){ %>
							<div class="card">
							    <div class="content" id="<%=v %>">
						        	<input id="fileName_<%=v %>" name="fileName" type="hidden" value="">
						        	
						            <div class="form-group">
						                <label class="col-md-2 control-label">TITLE (<%=v %>)</label>
						                <div class="col-md-10">
						                    <input name="subject" type="text" placeholder="title" class="form-control">
						                </div>
						            </div>
						            <div class="form-group">
						                <label class="col-md-2 control-label">Thumbnail IMG</label>
						                <div class="col-md-10">
						                	<div class="pull-left" style="width:126px;margin-right:10px;">
						                		<a class="imageViewer" id="imageViewer_<%=v %>" href="<c:url value="/public/img/no-image-available.png"/>">
							                		<img class="thumbnailView" id="imageView_<%=v %>" src="<c:url value="/public/img/no-image-available.png"/>">
												</a>
					                		</div>
				                			<input id="imageUploader_<%=v %>" class="inputFile" type="file" data-viewer="imageViewer_<%=v %>" data-view="imageView_<%=v %>" data-filename="fileName_<%=v %>">
				                			<button type="button" onclick="deleteImage(this);" class="btn btn-fill btn-wd" data-viewer="imageViewer_<%=v %>" data-view="imageView_<%=v %>" data-filename="fileName_<%=v %>" style="margin-top: 10px;">이미지 삭제</button>
						                </div>
						            </div>
						            <div class="form-group">
						            	<div class="col-md-12">
											<textarea name="content" id="ir1_<%=v %>" rows="10" cols="100" style="width:100%; height:412px; display:none;"></textarea>
						            	</div>
						            </div>
							    </div>
							</div>
			        	<% } %>
			        </form:form>
					
					
					<div class="pull-right">
						<button type="button" onclick="articleCancel();" class="btn btn-fill btn-wd">CANCEL</button>
						<button type="button" onclick="articleSubmit();" class="btn btn-primary btn-fill btn-wd">SAVE</button>
					</div>
					
					<%-- <form action="sample/viewer/index.php" method="post">
							
							
						<p>
							<input type="button" onclick="pasteHTML();" value="본문에 내용 넣기" />
							<input type="button" onclick="showHTML();" value="본문 내용 가져오기" />
							<input type="button" onclick="submitContents(this);" value="서버로 내용 전송" />
							<input type="button" onclick="setDefaultFont();" value="기본 폰트 지정하기 (궁서_24)" />
						</p>
					</form> --%>
					<!-- MAIN CONTENT END  -->
					
					
			    </div>
			</div>
		</div>
	</div>

<script src='<c:url value="/public/assets/js/jquery.min.js" />' type="text/javascript"></script>



<script src='<c:url value="/public/js/jquery.magnific-popup.js" />' type="text/javascript"></script>
<script src='<c:url value="/public/assets/js/sweetalert.min.js" />'></script>
<script type="text/javascript">
$(function(){
	<% 
	/* Server RedirectAttributes 출력 */
	String message = (String)request.getAttribute("message");
	if (message != null){ 
	%>
		swal("<%=message %> ");
	<% }%>
})
</script>


<script type="text/javascript">
/* 글 등록 제출 
 * 각 버전별 제목이 하나라도 입력되어있는지 확인
 */
articleSubmit = function(){
	
	var emptyCheckPass = false;
	$(document.submitForm).find("[name=subject]").each(function(i,e){
		if (e.value != ""){
			emptyCheckPass = true;
			return false;
		}
	});
	if (!emptyCheckPass){
		swal("제목을 입력해주세요.");
		return false;
	}
	
	<% for (String v : version){ %>
	oEditors.getById["ir1_<%=v %>"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	<% }%>
	
	
	$(document.submitForm).submit();
}
 
/* 글 동록 취소 */
articleCancel = function(){
	location.reload();
}

/* 이미지 삭제 */
deleteImage = function(e){
	var imageView = document.getElementById($(e).data("view"));
	var imageViewer = document.getElementById($(e).data("viewer"));
	var filenameInput = document.getElementById($(e).data("filename"));
	
	$(imageView).attr("src", "<%=request.getContextPath()%>/public/img/no-image-available.png");
	$(imageViewer).attr("href", "<%=request.getContextPath()%>/public/img/no-image-available.png");
	$(filenameInput).val("");
	
}
</script>


<!-- 이미지 뷰어 관련 jquery.magnific-popup.js  -->
<script type="text/javascript">
$('.imageViewer').magnificPopup({
	type: 'image',
	closeOnContentClick: true,
	mainClass: 'mfp-img-mobile',
	image: {
		verticalFit: true
	}
});
</script>

<!-- 파일 업로드 관련 스크립트 -->
<script type="text/javascript">
$(function () {
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	$(document).ajaxSend(function(e, xhr, options) {
		xhr.setRequestHeader(header, token);
	});
});
</script>
<script>
	$(function(){
		$(".inputFile").change(function(e){
			
			var imageView = document.getElementById($(this).data("view"));
			var imageViewer = document.getElementById($(this).data("viewer"));
			var filenameInput = document.getElementById($(this).data("filename"));
			
			
			var file = this.files[0];
			console.log(file);
			
			var formData = new FormData();
			formData.append("file", file);
			
	    	$.ajax({
                url: '<c:url value="/admin/tmpFileUpload"/>',
                type: 'post',
                data: formData,
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                complete: function() {
					console.log("complete");
                },
                success: function(data) {
                	console.log("success", data);
                	$(imageViewer).attr("href", data.filePath);
                	$(imageView).attr("src", data.filePath);
                	$(filenameInput).val(data.fileName);
                },
                error: function(error) {
                	console.log("error", error);
                }
            });
			
		});
	})
</script>
	
<script type="text/javascript" src="<c:url value="/public/js/service/HuskyEZCreator.js"/>" charset="utf-8"></script>
<script type="text/javascript">
var oEditors = [];

var sLang = "ko_KR";	// 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR

// 추가 글꼴 목록
//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
<% for (String v : version){ %>
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "ir1_<%=v %>",
		sSkinURI: "<c:url value="/admin/naverEditorSkin"/>?id=ir1_<%=v %>",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			},
			I18N_LOCALE : sLang
		}, //boolean
		fOnAppLoad : function(){
			
		},
		fCreator: "createSEditor2"
	});
	
	
<% } %>



function pasteHTML() {
	var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
	oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
	var sHTML = oEditors.getById["ir1"].getIR();
	alert(sHTML);
}
	
function submitContents(elClickedObj) {
	oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
	
	try {
		elClickedObj.form.submit();
	} catch(e) {}
}

function setDefaultFont() {
	var sDefaultFont = '궁서';
	var nFontSize = 24;
	oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
}
</script>

</body>
</html>