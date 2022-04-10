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
<script src="../js/fundingovdetail"></script>
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
	
	$(function(){
		var endDate = new Date('${funding.endDate}').getTime();
		var currDate = new Date().getTime();
		var remainTime = (endDate-currDate)/1000;
		var remain_day=Math.floor(remainTime/(60*60*24));
		$("#remain_day").text(remain_day);
		remainTime=remainTime%(60*60*24);
		var remain_hour=Math.floor(remainTime/(60*60));
		$("#remain_hour").text(remain_hour);
		remainTime=remainTime%(60*60);
		var remain_minute=Math.floor(remainTime/60);
		$("#remain_minute").text(remain_minute);
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
            <div id="time">
			<jsp:useBean id="toDate" class="java.util.Date" />
			<span id="remain_day"></span><span style="font-size:15px;">��</span>
			<span id="remain_hour"></span><span style="font-size:15px;">�ð�</span>
			<span id="remain_minute"></span><span style="font-size:15px;">�� ����</span>
  
            </div><br>
            <div id="amount">${funding.targetFunding} ��ǥ �ݾ�</div><br>
            <div id="amount"><span id="remainAmount"></span> ���� �ݾ�</div><br>
            <div id="amount">${count} ������</div><br>
            <div id="promain">
                <span id="rate"></span><span>%</span>
                <progress id="pro" value="30" max="100"></progress>
            </div><br>
            <div class="amountdetail">
            <form action="fundingpay" id="fundingpay" method="post">
                <input class="account-modify-form-input" type="text" name="sponsorAmount" maxlength="20" id="sponsorAmount" placeholder="�ּ� �ݾ�">
                <input type="hidden" id="fundingNo" name="fundingNo" value="${funding.fundingNo }">
                <input class="Btn1" type="submit" id="sponsor" value="�Ŀ��ϱ�">
            </form>
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