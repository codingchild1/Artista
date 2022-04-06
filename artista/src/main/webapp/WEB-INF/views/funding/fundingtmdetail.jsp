<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/fundingtmdetail.css">
<style>

</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>  
<script>
	$(function() {
		var rate = '${funding.sumAmount}'/'${funding.targetFunding}'*100;
		$("#rate").text(rate);
		$("#pro").val(rate);
	})
</script>
<body style="overflow-x: hidden">
    <div id="contents">
        <header class="account-header">
            <h2 class="account-header-title">${funding.projTitle }</h2>
        </header>
        <div class="image-box">
            <img class="image-thumb" src="/funding/thumbview/${funding.thumbImg}" />
        </div>
        <div class="fundingdetail">
            <div id="name">�ݵ� ����</div><br>
            <div id="amount">${funding.targetFunding} ��ǥ �ݾ�</div><br>
            <div id="amount">${funding.sumAmount } ���� �ݾ�</div><br>
            <div id="amount">20�� ������</div><br>
            <div id="promain">
                <span id="rate"></span><span>%</span>
                <progress id="pro" value="30" max="100"></progress>
            </div><br>
            <div class="amountdetail">
                <button class="Btn1">���� ���� ����</button>
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
</body>
</html>