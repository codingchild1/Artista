<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
    .image-box{
        width: 600px;
        height: 450px;
        overflow: hidden;
        margin-left: 450px;
    }

    .image-thumb{
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    #contents {
        padding-top: 60px;
    }
    #contents {
        width: 100%;
        margin: 0 auto;
        background-color: #fff;
        padding-bottom: 46px;
    }
    .account-header {
        width: 96%;
        max-width: 1152px;
        margin-left: 810px;
        margin-bottom: 40px;
        line-height: 1.5;
    }
    .account-header-title {
        margin-bottom: 10px;
        font-size: 36px;
        font-weight: bold;
    }
    .account-header-description {
        font-size: 18px;
        color: #989898;
    }
    .fundingdetail{
        width: 350px;
        height: 450px;
        margin-left: 1075px;
        position: absolute;
        top: 190px;       
    }
    #name{
        font-size: 40px;
        margin-bottom: 2px;
        margin-top: 2px;
    }
    #amount{
        font-size: 30px;
        margin-bottom: 2px;
    }
    .Btn1{
        width: 206px;
        height: 52px;
        display: block;
        background-color: black;
        color: white;
        border: 0;
        font-size: 1.4em;
    }
    .Btn2{
        width: 206px;
        height: 45px;
        display: block;
        background-color: black;
        color: white;
        border: 0;
        font-size: 1.3em;
    }
    .Btn3{
        width: 206px;
        height: 52px;
        display: block;
        background-color: black;
        color: white;
        border: 0;
        font-size: 1.4em;
        margin:auto;
    }
    #pro{
        width: 95%;
		height: 10px;
        background-color: green;
    }

    #promain{
        margin-left: 15px;
        font-size: 20px;
        margin-left: 4px;
    }
    .artistIntro{
        width: 350px;
        height: 185px;
        margin-left: 1075px;
        margin-top: 500px;
        position: absolute;
        top: 190px;
        border:solid 1px rgb(224, 224, 224);
        
    }
    .projcontent{
        width: 600px;
        height: 450px;
        margin-left: 450px;
        text-align:center;
        
    }
    .artistContent{
        margin-bottom: 30px;
        margin-left: 20px;
    }
    .account-modify-form-input {
        box-sizing: border-box;
        -webkit-box-sizing: border-box;
        height: 36px;
        width: 206px;
        padding: 0 0 0 6px;
        border: 1px solid #dfdfdf;
        outline: 0;
        font-size: 14px;
        display: block;
        margin-bottom: 9px;
    }
    .artist{
        margin-left: 20px;
    }
    .amountdetail{
        margin-left: 4px;
    }
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
            <div id="name">�ݵ� ����</div><br>
            <div id="amount">10,000,000 ��ǥ �ݾ�</div><br>
            <div id="amount">7,350,000 ���� �ݾ�</div><br>
            <div id="amount">20�� ������</div><br>
            <div id="promain">
                30%
                <progress id="pro" value="30" max="100"></progress>
            </div><br>
            <div class="amountdetail">
                <button class="Btn1">���� ���� ����</button>
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