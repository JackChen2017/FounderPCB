<!DOCTYPE html>
<html>
<body>

<h3>演示如何访问 Datalist 元素</h3>

<form>
<input list="myDatalist"> 
<datalist id="myDatalist"> 
  <option value="杨翠萍">
  <option value="董军">
  <option value="黄慕卿">
  <option value="陈琦雯">
  <option value="叶春财">
</datalist>
</form>

<p>请点击按钮来获得 datalist 中 option 元素的数目。</p>

<button onclick="myFunction()">试一下</button>

<p id="demo"></p>

<p><b>注释：</b>Internet Explorer 9 以及更早的版本不支持 datalist 元素。</p>

<p><b>注释：</b>input 元素的 list 属性用于绑定 datalist 元素。</p>

<script>
function myFunction() {
    var x = document.getElementById("myDatalist").options.length;
    document.getElementById("demo").innerHTML = "Found " + x + " options in the list.";
}
</script>

</body>
</html>