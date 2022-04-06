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
<link rel="stylesheet" href="../css/fundingovdetail.css">
<style>
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>  
<script>
	$(function() {
		var raminAmount = '${funding.targetFunding}' - '${funding.sumAmount}';
		$("#remainAmount").text(raminAmount);
		var rate = '${funding.sumAmount}'/'${funding.targetFunding}'*100;
		$("#rate").text(rate);
		$("#pro").val(rate);
	})
</script>	
<body style="overflow-x: hidden">
    <div id="contents">
        <header class="account-header">
            <h2 class="account-header-title" id="projTitle">${funding.projTitle }</h2>
        </header>
        <div class="image-box">
            <img class="image-thumb" src="/funding/thumbview/${funding.thumbImg}" />
        </div>
        <div class="fundingdetail">
            <div id="time">22:59:59 ����</div><br>
            <div id="amount">${funding.targetFunding} ��ǥ �ݾ�</div><br>
            <div id="amount"><span id="remainAmount"></span> ���� �ݾ�</div><br>
            <div id="amount">20�� ������</div><br>
            <div id="promain">
                <span id="rate"></span><span>%</span>
                <progress id="pro" value="30" max="100"></progress>
            </div><br>
            <div class="amountdetail">
                <input class="account-modify-form-input" type="text" name="Sfundingdate" maxlength="20" id="testDatepicker1" placeholder="�ּ� �ݾ�">
                <button class="Btn1">�Ŀ��ϱ�</button>
            </div>
        </div>
    </div>
    <div class="projcontent">${funding.projIntro} ${funding.projBudget}</div>
    <div class="artistIntro">
        <h2 class="artist">�۰� �Ұ�</h2>
        <div class="artistContent">${funding.projArtist}</div>
        <div class="artistContent">
            <button class="Btn2">�۰� ������ �̵�</button>
        </div>
    </div>
    <div>
        <button class="Btn3">���</button>
    </div>
</body>
</html>