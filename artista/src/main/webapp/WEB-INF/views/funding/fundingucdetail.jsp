<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/fundingucdetail.css">
<style>

</style>
<body style="overflow-x: hidden">
    <div id="contents">
        <header class="account-header">
            <h2 class="account-header-title">${funding.projTitle}</h2>
        </header>
        <div class="image-box">
            <img class="image-thumb" src="/funding/thumbview/${funding.thumbImg}" />
        </div>
        <div class="fundingdetail">
            <div id="timealert">
            <fmt:parseDate value="${funding.startDate }" var="startDate" pattern="yyyy-MM-dd HH" />
            <fmt:formatDate value="${startDate }" pattern="M" /><span>��</span>
            <fmt:formatDate value="${startDate }" pattern="d" /><span>��</span>
            <fmt:formatDate value="${startDate }" pattern="H" /><span>��</span>
            <span>���� ����</span>
            </div><br>
            <div class="amountdetail">
                <button type="button" class="Btn1" id="Btn1" onclick="alarm('${funding.fundingNo}')">�˸� ��û 100�� ��û ��</button>
            </div>
            <div>
                ���� �ٷ� �˸� ��û�ϰ� �̸� ���� ��������.
            </div>
        </div>
    </div>
    <div class="projcontent">
        ${funding.projIntro} ${funding.projBudget}
    </div>
    <div class="artistIntro">
        <h2 class="artist">�۰� �Ұ�</h2>
        <div class="artistContent">
            ${funding.projArtist }
        </div>
        <div class="artistContent">
            <button class="Btn2">�۰� ������ �̵�</button>
        </div>
    </div>
    <div>
        <button class="Btn3">���</button>
    </div>
    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>  
    <script>
       
    function alarm(fundingNo){
    	var color=document.getElementById("Btn1");
    	console.log(fundingNo);
    	$.ajax({
    		type: "post",
    		dataType: "text",
    		async: false,
    		url: "http://localhost:8090/funding/alarm",
    		data:{"fundingNo": fundingNo},
    		success: function(data, textStatus){
    			if(data=='true'){
    				color.style.color="white";
    				color.style.background="black";
    				
    			} else {
    				color.style.color="black";
    				color.style.background="white";
    				
    			}
    		},
    		error:function(data, textStatus){
    			alert("����");
    		}
    	});
    }
    </script>
</body>
</html>