<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!--
�ϴ� ������ �̰� 3�� �����Ŷ�� �����ض�
Tag
Element
Node 
�ؽ�Ʈ ���� �±��̸��� ���� �±װ��� �ִ�.
NodeName�� ���̰� NodeValue �ִ�.
window�� dom tree ����
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DOM ELEMENT ADD</title>
</head>
<body>
<script type="text/javascript">
	window.onload = function(){
		//���� ���� ����.
		let header = document.createElement("h1");//block - ��ü ũ�⸦ ���� �ִ�.
		let textNode = document.createTextNode("Hello DOM!!")
		//��带 ����(React.js)
		//�����Ǵ� ���
		//����� ���� ��� (DataSet ���� �� �� ����: ����������Ŭ- ���ͼ�Ʈ- ���󵼿� �߰��� ���� ����)
		header.appendChild(textNode);
		document.body.appendChild(header);
	}
</script>

</body>
</html>