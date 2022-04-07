<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<link rel="stylesheet" href="../css/fundingov.css">
<title>Insert title here</title>
</head>

<body>
	<div>
            <span class="postbtn"><a href="fundinguc">�ݵ� ����</a></span>
            <span class="postbtn"><a href="fundingov"><b>�ݵ� ����</b></a></span>
            <span class="postbtn"><a href="fundingtm">�ݵ� ����</a></span>
	</div>
    <div class="flex-container">
    	<c:forEach items="${list }" var="funding">
        <div class="flex-item" id="flex-item">
            <div id="box" class="image-box">
                <a href="${path}/funding/fundingovdetail?fundingNo=${funding.fundingNo}">
                <img src="/funding/thumbview/${funding.thumbImg}" class="image-thumb">
                </a>
            </div>
            <span class="printer" id="artistName" >${funding.artistName}</span><br>
            <a href="${path}/funding/fundingovdetail?fundingNo=${funding.fundingNo}">
            <span class="projname" id="projTitle">${funding.projTitle }</span>
            </a>
        </div>
     </c:forEach>
    </div>
    <button type="button" id="load" class="Btn">load more</button>
<script src="http://code.jquery.com/jquery-latest.min.js"></script> 
<script>
$(function(){
	$("div").slice(0, 10).show(); // ���� 10�� ����
	$("#load").click(function(e){ // Load More�� ���� Ŭ�� �̺�Ʈe
	e.preventDefault();
	$("div:hidden").slice(0, 10).show(); // ���� ������ ���� 10���� �����Ͽ� ǥ��
	if($("div:hidden").length == 0){ // ������ DIV�� �ִ��� üũ
	alert("�� �̻� �׸��� �����ϴ�"); // �� �̻� �ε��� �׸��� ���� ��� ���
	}
	});
	});
</script>
</body>
</html>