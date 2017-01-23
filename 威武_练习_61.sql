<html>
<body>

<script type="text/javascript">
var patt1=new RegExp("c");

document.write(patt1.exec("afde"));

document.write("<br />");

document.write("<br />");

document.write(patt1.test("The best things in life are free")); 


document.write("<br />");

document.write("<br />");

var patt2=new RegExp("e","g");
do
{
result=patt2.exec("The best things in life are free");
document.write(result);
document.write("<br />");
}
while (result!=null) 

var patt3=new RegExp("e");

document.write(patt3.test("The best things in life are free"));

patt1.compile("d");

document.write(patt3.test("The best things in life are free"));

</script>

</body>
</html>