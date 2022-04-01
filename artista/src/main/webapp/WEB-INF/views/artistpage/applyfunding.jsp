<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="js/main.js"></script>
    <script	src="https://cdn.ckeditor.com/ckeditor5/29.1.0/classic/ckeditor.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	<link rel="stylesheet" href="../css/applyfunding.css">
<title>Insert title here</title>
</head>
<style>

  </style>
<body>
    <div id="contents">
        
        <header class="account-header">
            <h2 class="account-header-title">�ݵ� ��û</h2>
            <div class="account-header-description">�ݵ� ��û�� ���ڰ�</div>
        </header>
        <article class="account-body">
    <div class="account-modify-form-border"></div>
        <div class="account-modify-form-row">
            <div class="account-modify-form-row-label">
                ���̵�
            </div>
            <div class="account-modify-form-row-value">
                <input class="account-modify-form-input" type="text" id="id" name="id" />
            </div>
        </div>
        <div class="account-modify-form-row">
            <div class="account-modify-form-row-label">
                �̸�
            </div>
            <div class="account-modify-form-row-value">
                <div class="certification-value">
                	<input class="account-modify-form-input" type="text" id="name" name="name" />
                </div>
            </div>
        </div>
        <div class="account-modify-form-row">
            <div class="account-modify-form-row-label">
                �̸���
            </div>
            <div class="account-modify-form-row-value">
                <input class="account-modify-form-input" type="text" id="email" name="email" />
        </div>
        </div>
        <div class="account-modify-form-row">
            <div class="account-modify-form-row-label">
                ��ǥ �ݾ�
            </div>
            <div class="account-modify-form-row-value">
                    <input class="account-modify-form-input" type="text" name="money" maxlength="20"><br>
            </div>
        </div>
        <div class="account-modify-form-row">
            <div class="account-modify-form-row-label">
                ��� ���� 
            </div>
            <div class="account-modify-form-row-value">
                    <input class="account-modify-form-input" type="text" name="fundingdate" />
            </div>
        </div>
        <div class="account-modify-form-row">
            <div class="account-modify-form-row-label">
                ��� ���
            </div>
          	<input type="hidden" id="sample6_postcode" placeholder="�����ȣ">
			<input type="text" id="sample6_address" class="account-modify-form-input-address1" placeholder="�ּ�">
			<input type="text" id="sample6_detailAddress" class="account-modify-form-input-address2" placeholder="���ּ�">
			<button class="Btn" onclick="sample6_execDaumPostcode()">�˻�</button>
			<input type="hidden" id="sample6_extraAddress" placeholder="�����׸�">
        </div>
    <div class="account-modify-form-border"></div>
    <div class="faq-content">
      <button class="question" id="que-1"><span id="que-1-toggle">+</span><span>������Ʈ �Ұ�</span></button>
      <div class="answer" id="ans-1">
          <input type="hidden"name="user_img" id="user_img" value=''>
        <div class="writing_title">
            <input type="text" id="title" name="title"
                placeholder="������ �Է��� �ּ���." onfocus="this.placeholder=''"
                onblur="this.placeholder='������ �Է��� �ּ���.'"
                style="width: 99%; height: 30px; margin: 15px 0 15px 0;" />
        </div>
        <div class="board_detail">
            <textarea  id="editor1" name="content1"></textarea>
        </div>
    </div>
    </div>
    <div class="faq-content">
      <button class="question" id="que-2"><span id="que-2-toggle">+</span><span>���� ����</span></button>
      <div class="answer" id="ans-2">
        <div class="board_detail">
            <textarea  id="editor2" name="content2"></textarea>
        </div>
      </div>
    </div>
    <div class="faq-content">
      <button class="question" id="que-3"><span id="que-3-toggle">+</span><span>�۰� ���� �Ұ�</span></button>
      <div class="answer" id="ans-3">
        <div class="board_detail">
            <textarea  id="editor3" name="content3"></textarea>
        </div>
      </div>
    </div>
</article>
</div>
    <div class="a">
        <button class="Btn" type="button">Ȯ��</button>
        <button class="Btn" type="button">���</button>
    </div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var addr = ''; // �ּ� ����
                var extraAddr = ''; // �����׸� ����

                //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                    addr = data.roadAddress;
                } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                    addr = data.jibunAddress;
                }

                // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
                if(data.userSelectedType === 'R'){
                    // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                    // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                    if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>


    
    <script>
      const items = document.querySelectorAll('.question');
    
      function openCloseAnswer() {
        const answerId = this.id.replace('que', 'ans');
    
        if(document.getElementById(answerId).style.display === 'block') {
          document.getElementById(answerId).style.display = 'none';
          document.getElementById(this.id + '-toggle').textContent = '+';
        } else {
          document.getElementById(answerId).style.display = 'block';
          document.getElementById(this.id + '-toggle').textContent = '-';
        }
      }
    
      items.forEach(item => item.addEventListener('click', openCloseAnswer));

      $(function(){
        ClassicEditor
        	.create(document.querySelector("#editor1"), {
        		ckfinder : {
        			uploadUrl : "/upload"
        		}
        	}).then(editor1=> {
        		window.editor1=editor1;
        	})
        	.catch((error) => {
        		console.error(error);
        	});
	});
    $(function(){
        ClassicEditor
        	.create(document.querySelector("#editor2"), {
        		ckfinder : {
        			uploadUrl : "/upload"
        		}
        	}).then(editor2=> {
        		window.editor2=editor2;
        	})
        	.catch((error) => {
        		console.error(error);
        	});
	});
    $(function(){
        ClassicEditor
        	.create(document.querySelector("#editor3"), {
        		ckfinder : {
        			uploadUrl : "/upload"
        		}
        	}).then(editor3=> {
        		window.editor3=editor3;
        	})
        	.catch((error) => {
        		console.error(error);
        	});
	});
    
    $(function() {
      $('input[name="fundingdate"]').daterangepicker({
        timePicker: true,
        startDate: moment().startOf('hour'),
        endDate: moment().startOf('hour').add(32, 'hour'),
        locale: {
          format: 'YY-MM-DD hh a'
        }
      });
    });
    
    $(function() {
        $('input[name="exhibitiondate"]').daterangepicker({
          timePicker: true,
          startDate: moment().startOf('hour'),
          endDate: moment().startOf('hour').add(32, 'hour'),
          locale: {
            format: 'YY-MM-DD hh a'
          }
        });
      });
    
    </script>    
</body>
</html>