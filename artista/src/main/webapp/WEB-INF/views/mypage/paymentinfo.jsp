<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/paymentinfo.css">
<style>

</style>
</head>
<body>
<%@include file ="../header.jsp" %>
    <div id="contents">
        <header class="account-header">
            <h2 class="account-header-title">�ֹ� ������</h2>
            <div class="account-header-description">�ֹ��� ���õ� �����Դϴ�.</div>
        </header>
        <article class="account-body">
    <section class="orders-in-progress">
        <div style="font-weight: bold; margin-bottom: 12px;">
        <span class="span">�ֹ�����</span><span style="margin-right: 30px;">2022.03.22</span><span class="span">�ֹ���ȣ</span><span class="span">1111</span>
        </div>
        <!-- <h3>�ֹ� ����</h3> -->
        <table class="account-table">
            <thead>
            <tr>
                <th scope="col" class="time-code">�ֹ���ȣ</th>
                <th scope="col" class="type">��ǰ��</th>
                <th scope="col" class="artworks">��ǰ�ݾ�</th>
                <th scope="col" class="start-date">��ۺ�</th>
                <th scope="col" class="status">������ȣ</th>
                <th scope="col" class="status">�������</th>
            </tr>
            </thead>
            <tbody>
            
                <tr>
                    <td class="empty" colspan="6">ǥ���� ������ �����ϴ�.</td>
                </tr>
            
            </tbody>
        </table>
    </section>
        </article>
        <section id="checkout_body" class="cf">
            <section id="checkout_value">
                <section id="billing_info">
                    <div class="sect-header">
                        <h3>�ֹ��� ����</h3>
                        <!-- <span>��༭�� ����� �����Դϴ�. (�Է� ������ ȸ�� ������ �ݿ��˴ϴ�.)</span> -->
                    </div>
                    <div id="checkout-profile" class="sect-info active certified">
                        
                        <div class="sect-body cf">
                            <div class="sect-body-th">��ǰ�ݾ�</div>
                            <div class="sect-body-td">
                                <div class="checkout-profile-box">
                                    <input type="hidden" id="billing_name" name="billing_name" value="140,000">
                                    <span>140,000</span>
                                </div>
                            </div>
                        </div>
                        <div class="sect-body cf">
                            <div class="sect-body-th">��ۺ�</div>
                            <div class="sect-body-td">
                                <div class="checkout-profile-box">
                                    <input type="hidden" id="billing_name" name="billing_name" value="ȫ��ȣ">
                                    <span>3,000</span>
                                </div>
                            </div>
                        </div>
                        <div class="sect-body cf">
                            <div class="sect-body-th">����������</div>
                            <div class="sect-body-td">
                                <div class="checkout-profile-box">
                                    <input type="hidden" id="billing_phone1" name="billing_phone1" value="010-4012-9131">
                                    <span>143,000</span>
                                    <!-- <input type="button" id="checkout-profile-recertifyButton" value="����"> -->
                                </div>
                            </div>
                        </div>
                        <div class="sect-body cf">
                            <div class="sect-body-th">��������</div>
                            <div class="sect-body-td">
                                <div class="checkout-profile-box">
                                    <input type="hidden" id="checkout-input-billing_email" name="billing_email" value="ghdtjdgh0810@nate.com">
                                    <span>�ſ�ī��</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                
            </section>
            <section id="checkout_value2">
            <section id="billing_info">
                <div class="sect-header">
                    <h3>����� ����</h3>
                    <!-- <span>��༭�� ����� �����Դϴ�. (�Է� ������ ȸ�� ������ �ݿ��˴ϴ�.)</span> -->
                </div>
                <div id="checkout-profile" class="sect-info active certified">
                    
                    <div class="sect-body cf">
                        <div class="sect-body-th">�̸�</div>
                        <div class="sect-body-td">
                            <div class="checkout-profile-box">
                                <input type="hidden" id="billing_name" name="billing_name" value="140,000">
                                <span>ȫ�浿</span>
                            </div>
                        </div>
                    </div>
                    <div class="sect-body cf">
                        <div class="sect-body-th">����ó</div>
                        <div class="sect-body-td">
                            <div class="checkout-profile-box">
                                <input type="hidden" id="billing_name" name="billing_name" value="ȫ��ȣ">
                                <span>010-1234-5678</span>
                            </div>
                        </div>
                    </div>
                    <div class="sect-body cf" style="height: 87px;">
                        <div class="sect-body-th">������ּ�</div>
                        <div class="sect-body-td" style="margin-top: 9px;">
                            <div class="checkout-profile-box">
                                <input type="hidden" id="billing_phone1" name="billing_phone1" value="010-4012-9131">
                                <div>����Ư����ġ�� �����</div>
                                <div style="float: right;">00�� 00ȣ</div>
                                <!-- <input type="button" id="checkout-profile-recertifyButton" value="����"> -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            </section>
        </section>
        <div style="text-align: center;font-size: 18px; margin-top: 20px;">
            <input type="button" class="cartBottom-btn" id="toCheckoutBtn" value="Ȯ��" onclick="location.href='mypage.html'">
            <input type="button" class="cartBottom-btn" id="toDiscoverBtn" value="�������" onclick="location.href='mypage.html'">
        </div>
        
    </div>
    <%@include file ="../footer.jsp" %>
</body>
</html>