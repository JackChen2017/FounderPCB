/*
<html>
<body>
<h2>在 JavaScript 中创建 JSON 对象</h2>

赵汝垣

<p>
Name: <span id="jname"></span><br />
Age: <span id="jage"></span><br />
Address: <span id="jstreet"></span><br />
Phone: <span id="jphone"></span><br />
</p>
员工：<span id = "jemployees"></span><br />
<p>

</p>

<script type="text/javascript">

var JSONObject= {
"name1":"赵国媚 ",
"street":"FOUNDERPCB",
"age":29,
"phone":"13726280906"};
document.getElementById("jname").innerHTML=JSONObject.name1
document.getElementById("jage").innerHTML=JSONObject.age
document.getElementById("jstreet").innerHTML=JSONObject.street
document.getElementById("jphone").innerHTML=JSONObject.phone

var txt ='{"employees":[' +
'{ "firstName":"Bill" , "lastName":"Gates" },'
'{ "firstName":"George" , "lastName":"Bush" },'
'{ "firstName":"Thomas" , "lastName": "Carter" }];

var obj = eval ("(" +txt+ ")");

document.getElementById("jemployees").innerHTML=JSONObject.employees[0].name1

</script>

</body>
</html>

*/