<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/fundingovdetail.css">
<style>

</style>
<body style="overflow-x: hidden">
    <div id="contents">
        <header class="account-header">
            <h2 class="account-header-title">������Ʈ ����</h2>
        </header>
        <div class="image-box">
            <img class="image-thumb">
        </div>
        <div class="fundingdetail">
            <div id="time">22:59:59 ����</div><br>
            <div id="amount">10,000,000 ��ǥ �ݾ�</div><br>
            <div id="amount">7,350,000 ���� �ݾ�</div><br>
            <div id="amount">20�� ������</div><br>
            <div id="promain">
                30%
                <progress id="pro" value="30" max="100"></progress>
            </div><br>
            <div class="amountdetail">
                <input class="account-modify-form-input" type="text" name="Sfundingdate" maxlength="20" id="testDatepicker1" placeholder="�ּ� �ݾ�">
                <button class="Btn1">�Ŀ��ϱ�</button>
            </div>
        </div>
    </div>
    <div class="projcontent">
        ������Ʈ ���� �� ��
    </div>
    <div class="artistIntro">
        <h2 class="artist">�۰� �Ұ�</h2>
        <div class="artistContent">
            ���� ������ ������� ��� �ʹ�
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