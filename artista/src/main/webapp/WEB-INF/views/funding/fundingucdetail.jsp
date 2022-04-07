<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
            <div id="timealert">${funding.startDate } ���� ����</div><br>
            <div class="amountdetail">
                <button class="Btn1">�˸� ��û 100�� ��û ��</button>
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
</body>
</html>