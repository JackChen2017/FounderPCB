<h
tml>
<body>
<h2>ͨ�� JSON �ַ�������������</h3>
<p>
First Name: <span id="fname"></span><br /> 
Last Name: <span id="lname"></span><br /> 
</p> 
<script type="text/javascript">
var txt = '{"employees":[' +
'{"firstName":"Bill","lastName":"Gates" },' +
'{"firstName":"George","lastName":"Bush" },' +
'{"firstName":"Thomas","lastName":"Carter" }]}';

var obj = eval ("(" + txt + ")");

document.getElementById("fname").innerHTML=obj.employees[1].firstName 
document.getElementById("lname").innerHTML=obj.employees[1].lastName 
</script>
</body>
</html>

/*
���� JSON �﷨�� JavaScript �﷨���Ӽ���
JavaScript ���� eval() �����ڽ� JSON �ı�ת��Ϊ JavaScript ����
*/

--eval() ����ʹ�õ��� JavaScript ���������ɽ��� JSON �ı���Ȼ������ JavaScript ���󡣱�����ı���Χ�������У��������ܱ����﷨����