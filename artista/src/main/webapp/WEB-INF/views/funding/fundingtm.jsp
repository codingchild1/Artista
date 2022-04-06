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
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../css/fundingtm.css">
<style>
</style>
<body>
	<div>
            <span class="postbtn"><a href="fundinguc">�ݵ� ����</a></span>
            <span class="postbtn"><a href="fundingov">�ݵ� ����</a></span>
            <span class="postbtn"><a href="fundingtm"><b>�ݵ� ����</b></a></span>
	</div>
    <div class="flex-container">
    	<c:forEach items="${list}" var="funding">
        <div class="flex-item">
            <div id="box" class="image-box">
                <a href="${path}/funding/fundingtmdetail?fundingNo=${funding.fundingNo}">
                <img src="/funding/thumbview/${funding.thumbImg}" class="image-thumb">
                </a>
            </div>
            <span class="printer" id="artistName" >${funding.artistName}</span><br>
            <a href="${path}/funding/fundingtmdetail?fundingNo=${funding.fundingNo}">
            <span class="projname" id="projName">${funding.projTitle }</span>
            </a>
        </div>
        </c:forEach>
    </div>
    <button class="Btn">load more</button>
</body>
</html>