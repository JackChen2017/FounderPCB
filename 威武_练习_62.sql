<!DOCTYPE html>
<html>
<body>

<h3>��ʾ��η��� Datalist Ԫ��</h3>

<form>
<input list="myDatalist"> 
<datalist id="myDatalist"> 
  <option value="���Ƽ">
  <option value="����">
  <option value="��Ľ��">
  <option value="������">
  <option value="Ҷ����">
</datalist>
</form>

<p>������ť����� datalist �� option Ԫ�ص���Ŀ��</p>

<button onclick="myFunction()">��һ��</button>

<p id="demo"></p>

<p><b>ע�ͣ�</b>Internet Explorer 9 �Լ�����İ汾��֧�� datalist Ԫ�ء�</p>

<p><b>ע�ͣ�</b>input Ԫ�ص� list �������ڰ� datalist Ԫ�ء�</p>

<script>
function myFunction() {
    var x = document.getElementById("myDatalist").options.length;
    document.getElementById("demo").innerHTML = "Found " + x + " options in the list.";
}
</script>

</body>
</html>