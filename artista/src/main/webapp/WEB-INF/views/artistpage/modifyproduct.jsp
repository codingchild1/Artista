<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Artista</title>
<link rel="stylesheet" href="../css/manager.css">
<link rel="stylesheet" href="../css/mypage.css">
<link rel="stylesheet" href="../css/enroll.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
	.workImg {
		width:300px; min-height:200px; margin-top:7px; display:inline-block;
	}
	input[type="number"]::-webkit-outer-spin-button,
	input[type="number"]::-webkit-inner-spin-button {
    	-webkit-appearance: none;
    	margin: 0;
	}
</style>
</head>
<body>
	<%@include file ="../header.jsp" %>
    <div id="contents">
    	<header class="account-header">
            <h2 class="account-header-title">판매작품 수정요청하기</h2>
            <div class="account-header-description">작품 정보를 입력하세요.</div>
        </header>

        <article class="enroll-body">
        	<form class="enroll-modify-form" method="post" action="/artistpage/workModifyComplete" enctype="multipart/form-data">
            	<div class="enroll-modify-form"></div>
                <div class="certification-container certified">
                    <div class="enroll-modify-form-row">
                        <div class="enroll-modify-form-row-label">
                            <span class="red">*</span> 작품 이미지
                        </div>
                        <div class="enroll-modify-form-row-value">
                        	<input type="hidden" value="1" id="fileChange" name="fileChange" />
                            <img class="workImg" id="workThumb" src="/artistpage/workImg/${work.workImg }" />
                            <input type="file" id="workImgFile" name="workImgFile"/><br>
                        </div>
                    </div>
                    <div class="enroll-modify-form-row">
                        <div class="enroll-modify-form-row-label">
                            <span class="red">*</span> 작품명
                        </div>
                        <div class="enroll-modify-form-row-value">
                            <input class="enroll-modify-form-input" type="text" id="workName" name="workName" value="${work.workName }" placeholder="작품명을 입력하세요" autocomplete="off" autocorrect="off" autocapitalize="off" style="width:300px;"><br>
                        </div>
                    </div>
                    <div class="enroll-modify-form-row">
                        <div class="enroll-modify-form-row-label">
                            <span class="red">*</span> 작품유형
                        </div>
                        <div class="enroll-modify-form-row-value">
                            <div class="wrap">
                                <div class="select">
  									<div class="selected">
    									<div class="selected-value">none</div>
    									<div class="arrow"></div>
  									</div>
  									<ul>
  									    <li class="option">회화</li>
  									    <li class="option">조각</li>
  									    <li class="option">사진</li>
  									    <li class="option">소묘</li>
  									    <li class="option">종이</li>
  									    <li class="option">기타매체</li>
  									</ul>
  								</div>
                            </div>
                            <input type="hidden" id="workType" name="workType" value="none"/>
                        </div>
                    </div>
                    <div class="enroll-modify-form-row">
                        <div class="enroll-modify-form-row-label">
                            <span class="red">*</span> 작품기법
                        </div>
                        <div class="enroll-modify-form-row-label">
                            <input class="enroll-modify-form-input" type="text" id="workTech" name="workTech" value="${work.workTech }" placeholder="작품기법을 입력하세요" autocomplete="off" autocorrect="off" autocapitalize="off" style="width:300px;"><br>
                        </div>
                    </div>
                    <div class="enroll-modify-form-row">
                        <div class="enroll-modify-form-row-label">
                            <span class="red">*</span> 작품사이즈
                        </div>
                        <div class="enroll-modify-form-row-value">
                            <input class="enroll-modify-form-input" type="text" id="workSize" name="workSize" value="${work.workSize }" placeholder="작품사이즈를 입력하세요"  autocomplete="off" autocorrect="off" autocapitalize="off" style="width:300px;"><br>
                        </div>
                    </div>
                    <div class="enroll-modify-form-row">
                        <div class="enroll-modify-form-row-label">
                            <span class="red">*</span> 작품가격
                        </div>
                        <div class="enroll-modify-form-row-value">
                            <input class="enroll-modify-form-input" type="number" id="workPrice" name="workPrice" value="${work.workPrice }" placeholder="작품가격을 입력하세요"  autocomplete="off" autocorrect="off" autocapitalize="off" style="width:300px;"><br>
                        </div>
                    </div>
                    <div class="enroll-modify-form-row">
                        <div class="enroll-modify-form-row-label">
                            <span class="red">*</span> 작품소개
                        </div>
                        <div class="enroll-modify-form-row-value">
                        	<textarea class="enroll-modify-form-input" id="workIntro" name="workIntro" placeholder="최대 300자" maxlength="300" style="width:750px; height: 120px; resize: none;">${work.workIntro }</textarea>
                        </div>
                    </div>   
                    <div class="account-modify-form-border">
                    	<div style="text-align: center; margin-top:15px; margin-bottom: 15px;">
                        	<button class="yesNo-btn" id="workApply" style="width:120px;">작품수정 신청</button>
                    		<button class="yesNo-btn" id="cancel" type="reset">취소</button>      
                    	</div>
                	</div>
                	<input type="hidden" name="workNo" value="${work.workNo }"/>
                </div>
        	</form>
        </article>
    </div>
    
    <%@include file ="../footer.jsp" %>

    <script>
	// 작품 대표이미지 show
	$("#workImgFile").change(function (event) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#workThumb").attr("src", e.target.result);	
		};
		$("#fileChange").val("0");
		reader.readAsDataURL(event.target.files[0]);
	});
	
	// 작품수정 신청 또는 취소
	$("#workApply").click(function (event) {
		$("#workType").attr("value", $(".selected-value").text());
		$("#workApply").submit();
	});
	$("#cancel").click(function () {
		window.history.back();
	});
	</script>

	<script>
	// selectbox 구현
	$(document).on("click", ".select", function(e){
		const selectBoxElements = document.querySelectorAll(".select");
		function toggleSelectBox(selectBox) {
			selectBox.classList.toggle("active");
		}
		function selectOption(optionElement) {
			const selectBox = optionElement.closest(".select");
		  	const selectedElement = selectBox.querySelector(".selected-value");
		  	selectedElement.textContent = optionElement.textContent;
		}
		selectBoxElements.forEach(selectBoxElement => {
			selectBoxElement.addEventListener("click", function (e) {
		    	const targetElement = e.target;
		    	const isOptionElement = targetElement.classList.contains("option");
		    	if (isOptionElement) {
		      		selectOption(targetElement);
		    	}
		    	toggleSelectBox(selectBoxElement);
		  	});
		});
	});	
    </script>

	<script>
	// 다음 주소 api
	function searchAddress(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	$('#getplace').val(data.address);
	        	$('#getplace').prop("readonly",true);
	        }
	    }).open();
	}
	</script>




</body>
</html>