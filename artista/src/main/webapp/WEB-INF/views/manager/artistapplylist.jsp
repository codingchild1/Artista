<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Artista</title>
<link rel="stylesheet" href="../css/manager.css">
<link rel="stylesheet" href="../css/applymodal.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	.artistImg {
		width:300px; height:300px; margin-top:7px; display:inline-block;
	}


</style>
</head>
<body>
	<div id="applymodal" class="modal-overlay">
        <div class="modal-window">
            <header class="modal-header">
            	<div id="apply_close" class="close-area">X</div>
                <h2 class="modal-header-title">아티스트 신청내용</h2>
            </header>
            <article class="modal-body">
                	<div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red">*</span> 프로필 사진
                        </div>
                        <div class="modal-modify-form-row-value">
                            <img class="artistImg" id="artistThumb" />
                        </div>
                    </div>
                    <div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red">*</span> 아이디
                        </div>
                        <div class="modal-modify-form-row-value">
                            <input class="modal-modify-form-input" type="text" id="id" disabled><br>
                        </div>
                    </div>
                    <div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red">*</span> 필명
                        </div>
                        <div class="enroll-modify-form-row-value">
                            <input class="modal-modify-form-input" type="text" id="artistName" disabled><br>
                        </div>
                    </div>
                    <div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red">*</span> 아티스트 유형
                        </div>
                        <div class="modal-modify-form-row-value">
                            <input class="modal-modify-form-input" type="text" id="artistType" disabled><br>
  						</div>
                    </div>
                    <div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red">*</span> 아티스트 소개
                        </div>
                        <div class="modal-modify-form-row-value">
                            <textarea class="enroll-modify-form-input" id="artistIntroduce"style="width:300px; height: 180px; resize: none;" disabled></textarea>
                        </div>
                    </div>
                    <div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red">*</span> 아티스트의 이력
                        </div>
                        <div class="modal-modify-form-row-value">
                    		<input type="hidden" id="artistRecord" name="artistRecord" disabled/>
                		</div>
                    </div>
                    <div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red"> </span> 아티스트의 작업세계 
                        </div>
                        <div class="modal-modify-form-row-value">
                        	
                        </div>
                    </div>
                    <div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red">*</span> 인스타그램링크
                        </div>
                        <div class="modal-modify-form-row-value">
                            <input class="modal-modify-form-input" id="artistInstagram" disabled><br>
                        </div>
                    </div>
                    <input type="hidden" id="artistNo" disabled/>
                	<div class="account-modify-form-border">
                    	<div style="text-align: center; margin-top:15px; margin-bottom: 15px;">
                    		<button class="yesNo-btn" id="artistenroll" style="width:120px;">아티스트 등록</button>
                    		<button class="yesNo-btn" id="refuseenroll" type="reset">등록 거절</button>
                        </div>
                	</div>
            </article>  
        </div>
    </div>


    <div id="refuseapply" class="modal-overlay">
        <div class="refusemodal-window">
            <header class="modal-header">
            	<div id="refuse_close" class="close-area">X</div>
                <h4 class="modal-header-title">거절 사유</h4>
            </header>
            <article class="modal-body">
                <form class="modal-modify-form" method="post">
                    <div class="modal-modify-form-border"></div>
                    <div class="modal-modify-form-row">
                        <div class="modal-modify-form-row-label">
                            <span class="red">*</span> 거절사유
                        </div>
                        <div class="modal-modify-form-row-value">
                            <textarea class="modal-modify-form-input" style="width:300px; height: 120px; resize: none;"></textarea>
                        </div>
                    </div>                                
                    <div class="modal-modify-form-border">
                        <div style="text-align: center; margin-top:15px; margin-bottom: 15px;">
                            <a class="yesNo-btn" id="refuse">거절</a>                    
                            <a class="yesNo-btn" id="cancel">취소</a>      
                        </div>
                    </div>
                    </form>
            </article>  
        </div>
    </div>
   

    <div class="contents">
        <header class="manager-header">
            <h2 class="manager-header-title">관리자 페이지</h2>
        </header>
        <section class="manager-guide">
            <div class="manager-guide-inner">
                <h3 class="manager-guide-name">
                    관리자님 반갑습니다.
                </h3>
            </div>
        </section>
        <nav class="manager-nav">
            <a class="manager-nav-btn current"  href="${pageContext.request.contextPath}/manager/paymentlist">
                작품 관리
            </a>
            <a class="manager-nav-btn" href="${pageContext.request.contextPath}/manager/fundinglist">
                펀딩 관리
            </a>
            <a class="manager-nav-btn" href="${pageContext.request.contextPath}/manager/exhibitionlist">
                전시 관리
            </a>
            <a class="manager-nav-btn" href="${pageContext.request.contextPath}/manager/memberlist">
                회원 관리
            </a>
        </nav>

        <nav class="member-nav">
            <a class="member-nav-btn" href="${pageContext.request.contextPath}/manager/memberlist">
                일반회원
            </a>
            <a class="member-nav-btn" href="${pageContext.request.contextPath}/manager/artistlist">
                아티스트
            </a>
            <a class="member-nav-btn" href="${pageContext.request.contextPath}/manager/artistapplylist">
                아티스트 신청
            </a>
        </nav>
        <article class="member-body">
            <section class="member-list">
                <table class="member-table">
                    <thead>
                    <tr>
                        <th scope="col" class="artistNo">아티스트 신청 번호</th>
                        <th scope="col" class="id">아이디</th>
                        <th scope="col" class="artistName">아티스트 필명</th>
                        <th scope="col" class="artistType">아티스트 유형</th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <c:choose>
                    	<c:when test="${artistapplylist!=null && pageInfo.listCount>0 }">
                    	<tbody>
                    		<c:forEach items="${artistapplylist }" var="artistapply">
								<tr>
                            	<th scope="col" class="artistNo">${artistapply.artistNo }</th>
                            	<th scope="col" class="id">${artistapply.id }</th>
                            	<th scope="col" class="artistName">${artistapply.artistName }</th>
                            	<th scope="col" class="artistType">${artistapply.artistType }</th>                            
                           		<th scope="col"><a class="artist-detail-btn" onclick="applyDetail('${artistapply.artistNo }')">신청 상세보기</a></th>
                        		</tr>
                        		</c:forEach>
                        </tbody>
                    	</c:when>
                    </c:choose>
                </table>
            </section>
            <c:choose>
				<c:when test="${matelist!=null && pageInfo.listCount>0 }">
					<div id="pageList" style="text-align: center; margin-top:30px; margin-bottom :30px;">
					<c:choose>
						<c:when test="${pageInfo.page<=1}">«&nbsp;</c:when>
						<c:otherwise><a href="matelist?page=${pageInfo.page-1}">«&nbsp;</a></c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
						<c:choose>
							<c:when test="${pageInfo.page==i }">${i }&nbsp;</c:when>
							<c:otherwise><a href="matelist?page=${i}">${i }&nbsp;</a></c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${pageInfo.page>=pageInfo.maxPage }">»&nbsp;</c:when>
						<c:otherwise><a href="matelist?page=${pageInfo.page+1}">»&nbsp;</a></c:otherwise>
					</c:choose>
					</div>
				</c:when>
				<c:otherwise>
					<tr><td colspan="3"><b>신청 내역이 없습니다.</b></td></tr>
				</c:otherwise>
			</c:choose>
        </article>
	</div>
	
	<script>
	function applyDetail(applyNo){
		applymodal.style.display = "flex";
		$.ajax({
			type:"post",
			dataType:"text",
			async: false,
			url:"http://localhost:8090/manager/artistapplydetail",
			data:{"applyNo":applyNo},
			success: function(data, textStatus){ 
			 	var applyartistData = JSON.parse(data);
			 	$('#artistNo').attr("value", applyartistData.artistNo);
 			 	$('#artistThumb').attr("src", "/artistprofile/"+applyartistData.artistImg);
 			 	$("#id").attr("value", applyartistData.id);
 			 	$("#artistName").attr("value", applyartistData.artistName);
 			 	$("#artistType").attr("value", applyartistData.artistType);
 			 	$("#artistIntroduce").attr("value", applyartistData.artistIntroduce);
 			 	$("#artistInstagram").attr("value", applyartistData.artistInstagram);
			},
			error:function(data, textStatus){
				alert("실패");
			}
		});
		
	}
    $(function(){
    	$(document).on('click', '#apply_close', function(e){
    		applymodal.style.display = "none";
    	});
    	$(document).on('click', '#refusemodal', function(e){
    		refuseapply.style.display = "flex";
    	});
    	$(document).on('click', '#refuse_close', function(e){
    		refuseapply.style.display = "none";
    	});
    });
    $(function(){
    	$(document).on('click', '#artistenroll', function(e){
    		alert("??");
    		$.ajax({
    			type:"post",
    			dataType:"text",
    			async: false,
    			url:"http://localhost:8090/manager/artistapplysuccess",
    			data:{"applyNo":$('#artistNo').val()},
    			success: function(data, textStatus){ 
    				alert("아티스트 등록이 성공했습니다");
    				location.reload();
    			},
    			error:function(data, textStatus){
    				alert("아티스트 등록이 실패했습니다.");
    			}
    		});
    		
    		
    	});
    	$(document).on('click', '#refuseenroll', function(e){
    		refuseapply.style.display = "flex";
    	});
    });    
    </script>
</body>
</html>