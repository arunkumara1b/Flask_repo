<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mml="http://www.w3.org/1998/Math/MathML">
<xsl:template match="import">
<html xmlns:mml="http://www.w3.org/1998/Math/MathML" lang="de-DE">
<head>
<title>KLETT</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>

<script type="text/javascript" src="jquery-1.8.0.min.js"></script>
	<script type="text/x-mathjax-config">MathJax.Hub.Config({
		config: ["MMLorHTML.js"],
		jax: ["input/TeX","input/MathML","output/HTML-CSS","output/NativeMML"],
		extensions: ["tex2jax.js","mml2jax.js","MathMenu.js","MathZoom.js"],
		TeX: {
		extensions: ["AMSmath.js","AMSsymbols.js","noErrors.js","noUndefined.js"]
		}
		});</script>
	<script type="text/javascript" src="https://cdn.mathjax.org/mathjax/2.0-latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
<style>
body {
	font-size: 14px;
	font-family: Palatino, "Palatino LT STD", "Palatino Linotype", "Book Antiqua", Georgia, serif;
    text-align: justify;
	margin:Auto;
	padding: 20px;
	pointer-events: none;
}

tbody {
	vertical-align: baseline;
}

#tit{
Border: 1px solid #900C3F;
text-align:center;
background-color: #f1dee2;
color:#900C3F;
font-weight: 900;

font-family: "Book Antiqua", Georgia, serif
}

h1 {
    text-shadow: 2px 2px 5px red;
}

#eingabe {
	Border: 1px solid #005A31;
    padding: 5px;
	margin-top: 15px;
	margin-left: 70px;
	margin-right: 70px;
	margin-bottom: 15px;
	background: White;
}	


#eingabe1 {
	Border: 2px solid #FF0000;
    padding: 5px;
	margin-top: 15px;
	margin-left: 70px;
	margin-right: 70px;
	margin-bottom: 15px;
	background: White;
}

p{
padding: 0px;
}


#title {
	padding: 5px;
	margin-top: 25px;
	margin-left: 70px;
	margin-right: 70px;
	margin-bottom: 25px;
}

#ans {
	background-color: #fef5e7;
    padding: 5px;
	margin-top: 10px;
	margin-bottom: 10px;
}

#ans3{
	background-color: white;
    padding: 5px;
	margin-top: 10px;
	margin-bottom: 10px;
	color:red;
	font-weight:bold;
}

#ans1 {
	background-color: #F0FFF0;
    padding: 5px;
	margin-top: 10px;
	margin-bottom: 10px;
}

#ans2 {
	background-color: #FFFFF0;
    padding: 5px;
	margin-top: 0px;
	margin-bottom: 0px;
}

table {
	margin-top: 10px;
    border-collapse: collapse;
	background-color: #e6ffe6;
	border: 1px solid red;
    padding: 5px;
	font-size: 13px;
	font-family: Palatino, "Palatino LT STD", "Palatino Linotype", "Book Antiqua", Georgia, serif;
		
}


.table {
	margin-top: 10px;
    border-collapse: collapse;
	background-color: #f2ffe6;
	border: 1px solid white;
    padding: 5px;
	font-size: 12px;
}


#tdd{
    border: 1px solid white;
    padding: 0px;
}

td {
    border: 1px solid #000;
    padding: 3px;
}

th {
	
    border: 1px solid red;
    padding: 0px;
}
.thead {
	text-align:center;
    border: 1px solid #000;
    padding: 0px;
	font-weight: 900;
	background-color: green;
	color:white;
}

tr:nth-child(even){background-color: #f2f2f2;}

tr:hover {background-color: #ddd;}

th {
    padding: 5px;
    text-align: center;
    background-color: #4CAF50;
    color: white;
}

.image {
	margin-top:20px;
	margin-left:25%;
	margin-right:25%;
	background-color: #ffe5f9;
	border: 1px solid white;
    padding: 0px;
	font-size: 14px;
	font-weight: 900;
}

.image1 {
	margin-top: 20px;
	margin-left: 300px;
	margin-bottom: 10px;
	border: 1px solid white;
    padding: 0px;
	font-size: 14px;
	width:70%;
	font-weight: 900;
}

.image2 {
	margin-top: 20px;
	margin-left: 300px;
	background-color: #ffe5f9;
	border: 1px solid white;
    padding: 0px;
    text-align: center;
	font-size: 14px;
	width:70%;
	font-weight: 900;
}

.center {
   width: 300px;
   height: 300px;
   position: absolute;
   left: 50%;
   top: 50%; 
   margin-left: -150px;
   margin-top: -150px;
}

</style>
</head>

<body>
<div style="text-align:center;"><img src="logo.jpg"/><font color="red"><h1>STYLESHEET VIEW</h1></font></div>
<div>
<button class="hideBtn">Hide all Attributes</button>
&#x2003;
<button class="showBtn">Show all Attributes</button><br/><br/>
<button class="hideimg">Hide all Images</button>
&#x2003;&#x2003;&#x00A0;
<button class="showimg">Show all Images</button><br/><br/>
</div>
<xsl:apply-templates/>
<script type="text/javascript">

$(document).ready(function(){
  $(".hideBtn").click(function(){
  $(".table").hide("fast");
  });
});

$(document).ready(function(){
  $(".showBtn").click(function(){
  $(".table").show("fast");
  });
});


$(document).ready(function(){
  $(".hideimg").click(function(){
  $(".image").hide("fast");
  });
});

$(document).ready(function(){
  $(".showimg").click(function(){
  $(".image").show("fast");
  });
});



function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}


</script>


</body>
</html>
</xsl:template>


<!--ebene-->


<xsl:template match="//ebene">
<div style="Border: 1px solid green; padding: 10px;font-size: 13px;"><font color="#b4b4b4" style="font-variant: small-caps;"><b>Level 1</b></font><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//ebene//ebene">
<div style="Border: 1px solid green; padding: 10px;font-size: 13px;"><font color="#b4b4b4" style="font-variant: small-caps;"><b>Level 2</b></font><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//ebene//ebene//ebene">
<div style="Border: 1px solid green; padding: 10px;font-size: 13px;"><font color="#b4b4b4" style="font-variant: small-caps;"><b>Level 3</b></font><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//schnuerung">
<div style="Border: 1px solid green; padding: 10px;font-size: 13px;"><font color="#b4b4b4" style="font-variant: small-caps;"><b>Schnuerung</b></font><xsl:apply-templates/></div>
</xsl:template>

 
<!--ueberschrift-->

<xsl:template match="//ebene/ueberschrift">
<div style="position:absolute;left:100px;top:100px;">&#x2003;&#x2003;<br/></div>
<h1><font color="#a93226"><xsl:apply-templates/></font></h1>
</xsl:template>

<xsl:template match="//ebene//ebene/ueberschrift">
<h2><font color="#7d3c98"><xsl:apply-templates/></font></h2>
</xsl:template>

<xsl:template match="//ebene//ebene//ebene/ueberschrift">
<h3><font color="#138d75"><xsl:apply-templates/></font></h3>
</xsl:template>


<!--Ebene Attributes-->


<xsl:template match="//ebenentyp">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>EBENEN TYPE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//produkttypauspraegung">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>PRODUCT TYPE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//unterrichtssituation">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>UNTER SITUATION</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//autoren-id">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>AUTOREN-ID</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<!--Image-->

<xsl:template match="//absolute-metadaten-audio">
<div class="image" style="border-top:3px solid black; background-color:#f2f2d6"></div>
<div class="image2">
<!--<img src="img_icon.gif" /><br/><br/>-->
<font>☉ Audio</font> <xsl:value-of select="@wert" />
<br/>
</div>
</xsl:template>



<xsl:template match="//cms-ph-referenz-binnen">
<span>(<font color="#8B0000" style="background-color:pink"><b><xsl:value-of select="@ziel-id" /></b></font>&#x00A0;
</span><span><font color="Green" style="background-color:yellow"><b><xsl:apply-templates/></b></font>)</span>
</xsl:template>

<xsl:template match="//absolute-metadaten-video">
<div class="image" style="border-top: 3px solid black;"></div>
<div class="image2">
<!--<img src="img_icon.gif" /><br/><br/>-->
<font>☉ Video</font> <xsl:value-of select="@wert" />
<br/>
</div>
</xsl:template>

<xsl:template match="//medienobjekt-block">
<div><br/><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>medienobjekt-block</b></font><br/><br/><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//medienobjekt-serie">
<div><br/><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>medienobjekt-serie</b></font><br/><br/><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//bild-ausrichtung">
<div class="image"><font color="#ef1342">Image Position&#x2003;&#x2003;&#x00A0;: </font> <xsl:value-of select="@wert" /></div>
</xsl:template>

<xsl:template match="//mam-id">
<div class="image"><font color="#ef1342">MAM-ID&#x2003;&#x2003;&#x00A0;: </font> <xsl:value-of select="@wert" /></div>
</xsl:template>

<xsl:template match="//inhaltliche-bildausrichtung">
<div class="image" style="border-top:3px solid black;"></div>
<div class="image"><font color="#ef1342">Image Orientation&#x00A0;&#x00A0;: </font> <xsl:value-of select="@wert" /></div>
</xsl:template>

<xsl:template match="//inhaltliche-bildgroesse">
<div class="image"><font color="#ef1342">Image Size&#x2003;&#x2003;&#x2003;&#x2003;: </font> <xsl:value-of select="@wert" /></div>
</xsl:template>

<xsl:template match="//medienobjekt/metadaten/absolute-metadaten/zielgruppe">
<div class="image"><font color="#ef1342">Zielgruppe&#x2003;&#x2003;&#x2003;&#x2003;: </font> <xsl:value-of select="@wert" /></div>
</xsl:template>



<xsl:template match="//medienobjekt/mam-asset/celum-id">
<div class="image"><font color="#ef1342">Celum-ID&#x2003;&#x2003;&#x2003;&#x2003; : </font> <xsl:value-of select="@wert" /></div>
</xsl:template>


<xsl:template match="//redaktionelle-anmerkung">
<div class="image"><font color="#ef1342">Redaktionelle-Anmerkung&#x2003; : </font> <xsl:value-of select="@wert" /></div>
</xsl:template>




<xsl:template match="//medienobjekt-begleitend/medienobjekt/metadaten/system-metadaten/ids/cms-id">
<div style="display:none;" class="image"><font color="#ef1342">CMS Gen ID&#x2003;&#x2003;&#x2003;: </font> <xsl:value-of select="@wert"/></div>
</xsl:template>

<!--<xsl:template match="//medienobjekt/mam-asset/celum-id">
<div id="{@wert}" class="image" align="l"><p><font color="#ef1342">Celum-ID&#x2003;&#x2003;&#x2003;&#x2003;: </font><xsl:value-of select="@wert" /><br/><br/><img src="img/{@wert}.jpg"/></p></div>
</xsl:template>-->


<xsl:template match="//medienobjekt/mam-asset/asset-typ">
<div style="display:none;" id="{@wert}" class="image" align="l"><p><font color="#ef1342">ASSET-TYP&#x2003;&#x2003;&#x2003; : </font><xsl:value-of select="@wert" /><br/><br/><img src="img/{@wert}.jpg"/></p></div>

</xsl:template>

<xsl:template match="//medienobjektunterschrift">
<div class="image">
<!--<img src="img_icon.gif" /><br/><br/>-->
<font color="#ef1342">Image Caption&#x2003;&#x2003;: </font> <xsl:apply-templates/>
<br/>
</div>
<div style="border-bottom: 3px solid black;"  class="image"></div>
</xsl:template>

<!--<a href="img_icon.jpg" onclick="window.open(this.href, 'mywin', 'left=100,top=100,width=500,height=500,toolbar=0,resizable=0'); return false;" >Share this</a>

<xsl:template match="//cms-ph-inhaltliche-verankerung">
<a href="#@external-id"><font color="#8B0000" style="background-color:pink"><b><xsl:value-of select="@external-id" /></b></font><br/></a>
</xsl:template>-->

<xsl:template match="//cms-ph-medienobjekt">
<a href="img/{@external-id}.jpg" onclick="window.open(this.href, 'mywin', 'left=100,top=100,width=500,height=500,toolbar=0,resizable=0'); return false;" ><font color="#8B0000" style="background-color:pink"><b><xsl:value-of select="@external-id" /></b></font><br/></a>
</xsl:template>




<!--CMS-refer -->
<xsl:template match="//inhaltliche-verankerung/cms-ref">
<a><font color="#8B0000" style="background-color:pink"><b><xsl:value-of select="@wert" /></b></font>&#x2003;</a>
</xsl:template>

<xsl:template match="//inhaltliche-verankerung/verweistext">
<a><font color="Green" style="background-color:yellow"><b><xsl:apply-templates/></b></font></a>
</xsl:template>




<xsl:template match="//referenz-binnen">
<span><font color="#8B0000" style="background-color:pink"><b><xsl:value-of select="referenztext" /></b></font></span>
<span>(<font color="#8B0000" style="background-color:yellow"><b><xsl:value-of select="ziel-id/@wert" /></b></font>)</span>
</xsl:template>

<xsl:template match="//referenz-objekte/referenz-objekt">
<div style="background-color:#f2dcf2; margin-right:55%;margin-top:15px;"><font color="#ef1342"><b>REFERENZ-OBJEKT</b>&#x2003;&#x2003;&#x2003;: </font> <b><xsl:value-of select="ziel-id/@wert" /></b></div>
</xsl:template>






<!-- titel -->

<xsl:template match="//titel">
<h3><font color="#ba4a00"><xsl:apply-templates/></font></h3>
</xsl:template>

<!-- zwischenueberschrift -->

<xsl:template match="//zwischenueberschrift">
<h4><font color="#138d75"><xsl:apply-templates/></font></h4>
</xsl:template>

<!-- quelle -->

<xsl:template match="//quelle">
<div id="eingabe">
<div id="tit">QUELLE</div>
<xsl:apply-templates/>
</div>
</xsl:template>

<!-- nutzungshinweis -->


<xsl:template match="//nutzungshinweis">
<div id="eingabe">
<div id="tit">NUTZUNGSHINWEIS</div>
<xsl:apply-templates/>
</div>
</xsl:template>

<!-- aufgabe -->

<xsl:template match="//aufgabe">
<div id="eingabe">
<div id="tit">AUFGABE</div>
<xsl:apply-templates/>

</div>
</xsl:template>

<!--Foreign Text-->

<xsl:template match="//fremdtexttitel">
<h4><font color="#ba4a00"><xsl:apply-templates/></font></h4>
</xsl:template>


<!-- lernweg -->

<xsl:template match="//lernweg">
<div id="eingabe1">
<div id="tit">LERNWEG</div>
<xsl:apply-templates/>

</div>
</xsl:template>


<!-- lehrinhalt-->

<xsl:template match="//lehrinhalt">
<div id="eingabe">
<div id="tit">LEHRINHALT</div>
<xsl:apply-templates/>
</div>
</xsl:template>

<!-- merksatz -->


<xsl:template match="//merksatz">
<div id="eingabe">
<div id="tit">MERKSATZ</div>
<xsl:apply-templates/>
</div>
</xsl:template>

<!-- versuch 

<xsl:template match="//versuch">
<div id="ver"><xsl:apply-templates/></div>
</xsl:template>-->


<xsl:template match="//inhalteobjekt/eingabe/versuch">
<div id="eingabe">
<div id="tit">VERSUCH</div>

<xsl:apply-templates/>
</div>
</xsl:template>

<!--Tipp-->
<xsl:template match="//tipp">
<div id="eingabe">
<div id="tit">TIPP</div>
<xsl:apply-templates/>

</div>
</xsl:template>

<!--<xsl:template match="//dialog//sp">
<div style="margin-left:150px; padding:10px; margin-right:150px;background-color:#fcf4fc;">
<span style="color:#f20804;font-weight:bold;"><xsl:value-of select="sprecher"/></span>: <xsl:value-of select="sprechertext"/>
</div>
</xsl:template>-->

<xsl:template match="//dialog/sp">
<div style="margin-left:50px; padding:5px; margin-right:10px;background-color:#fcf4fc;"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><br/><b>Dialog/SP</b><br/></font>
<xsl:apply-templates/>
</div>
</xsl:template>



<!--<dialog>
<sp><sprecher></sprecher>
<sprechertext>

Inhalteobjekt -->

<xsl:template match="//inhalteobjekt">
<div style="margin-top:30px; margin-bottom:30px;"><font color="blue" style="font-size: 13px; text-align:center;"><b>INHALTEOBJEKT</b></font><xsl:apply-templates/></div>
</xsl:template>



<!--Answers -->


<xsl:template match="//anwendungsbeispiele//anwendungsbeispiel">
<div><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><br/><b>Anwendungsbeispiel</b></font><span style="background-color:grey;"><xsl:apply-templates/></span></div>
</xsl:template>

<xsl:template match="//cms-id">
<span id="{@wert}"/>
</xsl:template>

<xsl:template match="//cms-ph-inhaltliche-verankerung">
<div id="ans3"><a href="#{@external-id}"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Link of (A)</b></font>: (<xsl:value-of select="@external-id" />)</a></div>
</xsl:template>


<xsl:template match="//aufgabe//aufgabenstellung">
<div><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Aufgabenstellung</b></font><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//aufgabeninhalt/teilaufgabe/aufgabenstellung">
<div><p style="Border-top: 1px solid #E8E8E8;"></p><font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"><b>Aufgaben</b></font><xsl:apply-templates/></div>
</xsl:template>




<xsl:template match="//aufgabenitem">
<div><p style="Border-top: 0px solid #E8E8E8;"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Aufgabenitem</b></font><xsl:apply-templates/></p></div>
</xsl:template>

<xsl:template match="//item">
<div><p style="Border-top: 1px solid pink;"><font color="white" style="font-size: 9px;font-variant: small-caps;"><b><span style="background-color:pink;">ITEM</span></b></font><xsl:apply-templates/></p></div>
</xsl:template>

<xsl:template match="//folgenelement">
<br/><br/><font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"><b>Aufgabenrolle</b></font><font><br/><br/><xsl:apply-templates/></font>
</xsl:template>


<xsl:template match="//beispiel">
<font color="#a01b14"><span style="background-color:#3bf8ff;"><xsl:apply-templates/></span></font>
</xsl:template>


<xsl:template match="//platzhalter">
<font color="#636361" satyle="font-size: 12px;background-color:#fceff8; padding:3px;"> <xsl:value-of select="@id" /></font>
</xsl:template>



<xsl:template match="//zahlenmauer">
<div style="border: 1px solid pink;text-align:center;"><font><xsl:apply-templates/></font></div>
</xsl:template>


<xsl:template match="//zahlenreihe">
<div style="border: 1px solid pink;padding:10px;"><font><xsl:apply-templates/></font></div>
</xsl:template>

<xsl:template match="//zahlenfeld">
<font style="margin-right:100px;border: 1px solid white;"><xsl:apply-templates/></font>
</xsl:template>


<xsl:template match="//summand">
<br/><font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"></font><font><br/>&#x00A0;<b>+</b>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//summe">
<font color="red" style="border-top: 1px solid red"><br/>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//minuend">
<br/><font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"></font><font><br/>&#x00A0;&#x00A0;&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//subtrahend">
<font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"></font><font><br/>&#x00A0;<b>-</b>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//division/minuend">
<font color="green"><br/>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//division/minuend/minuend">
<br/><font color="green">&#x00A0;&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//division/subtrahend">
<font color="green" style="border-bottom: 1px solid red;"><br/>&#x00A0;<xsl:apply-templates/>&#x00A0;</font>
</xsl:template>

<xsl:template match="//division/subtrahend">
<font color="green" style="border-bottom: 1px solid red;"><br/>&#x00A0;<xsl:apply-templates/>&#x00A0;</font>
</xsl:template>


<xsl:template match="//dividend">
<br/><b></b>&#x00A0;<xsl:apply-templates/>
</xsl:template>

<xsl:template match="//divisor">
&#x00A0;÷&#x00A0;<xsl:apply-templates/>
</xsl:template>

<xsl:template match="//quotient">
&#x00A0;=&#x00A0;<font color="red"><xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//stellenueberschrift">
<br/><br/><font color="green"><b>&#x00A0;<xsl:apply-templates/></b></font>
</xsl:template>


<xsl:template match="//rest">
<font color="red"><br/><b>&#x00A0;&#x00A0;<xsl:apply-templates/></b></font>
</xsl:template>


<xsl:template match="//uebertrag">
<font color="red"><br/><b>&#x00A0;&#x00A0;<xsl:apply-templates/></b></font>
</xsl:template>


<xsl:template match="//differenz">
<font color="#b4b4b4" style="border-top: 1px solid red"><br/>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>


<xsl:template match="//faktor">
<br/><br/><font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"></font><font>&#x00A0;<b>×</b>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//produkt">
<font color="red" style="border-top: 1px solid red"><br/>&#x00A0;<b><xsl:apply-templates/></b></font>
</xsl:template>


<xsl:template match="//schritte">
<div style="background-color:#e6f9ff;padding:10px;margin:20px;width:100%;"><font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"><b>Steps/Schritte</b></font><font color="#e509ed"><span><b><xsl:apply-templates/></b></span></font></div>
</xsl:template>

<xsl:template match="//probe">
<div style="background-color:#e6fffa;padding:10px;margin:20px;width:100%;color=#e509ed;"><font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"><b>Probe</b></font><b><xsl:apply-templates/></b></div>
</xsl:template>


<xsl:template match="//probe/schriftliches-rechenverfahren">
<br/><xsl:apply-templates/>
</xsl:template>

<xsl:template match="//zwischenprodukt">
<font color="red"><br/>&#x00A0;&#x00A0;&#x00A0;<xsl:apply-templates/>&#x00A0;&#x00A0;</font>
</xsl:template>






<!--
<xsl:template match="//loesungsitem">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung</b></font><xsl:apply-templates/></div>
</xsl:template>





<xsl:template match="//loesung">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung</b></font><xsl:apply-templates/></div>
</xsl:template>
<xsl:template match="//loesungsitem">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Position:</b></font><xsl:value-of select="@position" /></div>
</xsl:template>-->





<!--<xsl:template match="//distraktor">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Distraktor</b></font><font color="red" weight="bold"><xsl:apply-templates/></font></div>
</xsl:template>-->


<!--<xsl:template match="//musterloesung">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Musterloesung</b></font><xsl:apply-templates/></div>
</xsl:template>-->

<xsl:template match="//arbeitshilfe">
<div id="ans1"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Arbeitshilfe/Work Help</b></font><blockquote><span><xsl:apply-templates/></span></blockquote></div>
</xsl:template>

<xsl:template match="//versuchsmaterialien">
<div id="ans1" style="background-color:#f0f0f5"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Materialien</b></font><blockquote><span><xsl:apply-templates/></span></blockquote></div>
</xsl:template>

<xsl:template match="//versuchsbeschreibung">
<div id="ans1" style="background-color:#fff0e6"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Beschreibung</b></font><blockquote><span><xsl:apply-templates/></span></blockquote></div>
</xsl:template>

<xsl:template match="//teilversuch/versuchsbeschreibung">
<div id="ans1" style="background-color:white"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Versuch Aufgabe</b></font><blockquote><span><xsl:apply-templates/></span></blockquote></div>
</xsl:template>
<xsl:template match="//versuchsauswertung_ergebnis">
<div id="ans1" style="background-color:#f0f0f5"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Versuch Losung</b></font><blockquote><span><xsl:apply-templates/></span></blockquote></div>
</xsl:template>


<xsl:template match="//fremdtextobjekt">
<div id="ans2"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fremdtextobjekt/Foreign Text</b></font><blockquote><span><xsl:apply-templates/></span></blockquote></div>
</xsl:template>



<xsl:template match="//arbeitsanweisung">
<div><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>SP-PARA</b></font><br/><br/><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//arbeitsanweisung-fremdsprache">
<div><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>PF-PARA</b></font><br/><br/><xsl:apply-templates/></div>
</xsl:template>





<!--properties-->
<xsl:template match="//anrede">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>ANREDE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//kompetenzbereich">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>KOMPETENZBEREICH</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@kategorie_1" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//sozialform">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>SOCAIL FORM</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//lernort">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>LERNORT</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//obligatorik">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>OBLIGATORIK</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//spracheinstellung">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>SPRACHEINSTELLUNG</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//cms-id">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>CMS-ID</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//lernwegtyp">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>LERNWEGTYP</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//interaktion">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>INTERAKTION</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//anforderungsbereich">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>ANFORDERUNGSBEREICH</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//aufgabentyp">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>AUFGABEN TYPE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//lehrinhalttyp">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>LEHRINHALT TYPE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//quellentyp">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>QUELLE TYPE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//nutzungshinweistyp">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>NUTZUNG TYPE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//merksatztyp">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>MERKSATZ TYPE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//aufgabenart">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>AUFGABEN ART</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//aufgabenformat">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>AUFGABENFORMAT</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//versuchsart">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>VERSUCHS ART</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//versuchstyp">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>VERSUCHS TYP</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//schwierigkeitsgrad">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>DIFFICULTY</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//teilkompetenz">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>TEILKOMPETENZ</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@kategorie_1" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//hilfsmittel">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>HILFSMITTEL</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@kategorie_1" /></b></font></td>
</tr>
</table>
</xsl:template>



<xsl:template match="//produkttypauspraegung">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>PRODUKTTYP</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@kategorie_1" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//einfache-differenzierung">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>EINFACHE-DIFFERENZIERUNG</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//lern-und-arbeitstechnik">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>LERN-UND-ARBEITSTECHNIK</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@kategorie_1" /></b></font></td>
</tr>
</table>
</xsl:template>


<xsl:template match="//kompetenz">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>KOMPETENZ</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>

<xsl:template match="//zielgruppe">
<table width="35%" class="table" id="tab">
<tr>
<td width="50%" id="tdd"><font color="green"><b>ZIELGRUPPE</b></font></td>
<td width="50%" id="tdd">: <font color="#fa05eb"><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</xsl:template>



<!--Other tags-->

<!--<xsl:template match="td"><td><xsl:apply-templates/></td></xsl:template>-->

<!--Rowspan/Colspan-->

<xsl:template match="td">
<xsl:choose>
<xsl:when test="@colspan='2'"><td colspan="2"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='3'"><td colspan="3"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='4'"><td colspan="4"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='5'"><td colspan="5"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='6'"><td colspan="6"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='7'"><td colspan="7"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='8'"><td colspan="8"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='9'"><td colspan="9"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='10'"><td colspan="10"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='11'"><td colspan="11"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='12'"><td colspan="12"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='13'"><td colspan="13"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='14'"><td colspan="14"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='15'"><td colspan="15"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='16'"><td colspan="16"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='17'"><td colspan="17"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='18'"><td colspan="18"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='19'"><td colspan="19"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='20'"><td colspan="20"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='21'"><td colspan="21"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='22'"><td colspan="22"><xsl:apply-templates/></td></xsl:when>



<xsl:when test="@rowspan='2'"><td rowspan="2"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='3'"><td rowspan="3"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='4'"><td rowspan="4"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='5'"><td rowspan="5"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='6'"><td rowspan="6"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='7'"><td rowspan="7"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='8'"><td rowspan="8"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='9'"><td rowspan="9"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='10'"><td rowspan="10"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='11'"><td rowspan="11"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='12'"><td rowspan="12"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='13'"><td rowspan="13"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='14'"><td rowspan="14"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='15'"><td rowspan="15"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@align='center'"><td align="center" valign="top"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@align='right'"><td align="right"><xsl:apply-templates/></td></xsl:when>
<xsl:otherwise><td><span><xsl:apply-templates/></span></td></xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template match="p"><p><xsl:apply-templates/></p></xsl:template>

<xsl:template match="//sup"><font color="red" size="1" style="background-color: 1px solid white; padding:0px;"><sup><xsl:apply-templates/></sup></font></xsl:template>
<xsl:template match="//sub"><font color="red" size="1" style="background-color: 1px solid white; padding:0px;"><sub><xsl:apply-templates/></sub></font></xsl:template>

<xsl:template match="erscheinungsdatum"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Date</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fremdtext-autor"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Autor</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fremdtext-titel"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Title</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fundstelle-produktnummer"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Produktnummer</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="punktgenaue-position"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Position</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fremdtexttyp"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Type</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fremdtextumfang"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fremdtextumfang</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fundstelle-isbn"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ISBN</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fundstelle-url"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>URL</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="inhaltliche-ueberarbeitung-redaktion"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>inhaltliche-ueberarbeitung-redaktion</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>


<xsl:template match="teaser"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Teaser</b></font></p><p><font color="#8B0000"><xsl:apply-templates/></font></p></xsl:template>
<xsl:template match="inhalteelement"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>InhaltElement</b></font></p><p><xsl:apply-templates/></p></xsl:template>
<xsl:template match="div"><div id="box1"><xsl:apply-templates/></div></xsl:template>
<xsl:template match="ul"><ul><xsl:apply-templates/></ul></xsl:template>
<xsl:template match="li"><li><xsl:apply-templates/></li></xsl:template>

<!--
<xsl:template match="emph">
<xsl:choose>
<xsl:when test="@class='2'"><span style="font-style:italic; color:red;"><xsl:value-of select="."/></span></xsl:when>
<xsl:when test="@class='1'"><span style="font-weight:bold; color:blue;"><xsl:value-of select="."/></span></xsl:when>
<xsl:otherwise><span><xsl:apply-templates/></span></xsl:otherwise>
</xsl:choose>
</xsl:template>
-->

<xsl:template match="//ziffernplatzhalter"><span style="background-color:yellow">❒</span></xsl:template>

<xsl:template match="//emph">
<xsl:choose>
<xsl:when test="@class='1'"><span style="font-weight:bold;color:green;"><xsl:value-of select="."/></span></xsl:when>
<xsl:when test="@class='2'"><span style="font-style:italic;color:orange;"><xsl:value-of select="."/></span></xsl:when>
<xsl:when test="@class='3'"><span style="text-decoration: underline;"><xsl:value-of select="."/></span></xsl:when>
<xsl:otherwise><span><xsl:apply-templates/></span></xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template match="//th/p/emph">
<xsl:choose>
<xsl:when test="@class='1'"><span style="font-weight:bold;color:white;"><xsl:value-of select="."/></span></xsl:when>
<xsl:otherwise><span><xsl:apply-templates/></span></xsl:otherwise>
</xsl:choose>
</xsl:template>


<xsl:template match="//table">
<xsl:choose>
<xsl:when test="@class='Standardtabelle'"><div><br/><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Standardtabelle</b></font><br /><br/><table><xsl:apply-templates/></table></div></xsl:when>

<xsl:when test="@class='Kreuztabelle'"><div><br/><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Kreuztabelle</b></font><br /><table><xsl:apply-templates/></table></div></xsl:when>

<xsl:otherwise><table><xsl:apply-templates/></table></xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template match="thead"><tr class="thead"><xsl:apply-templates/></tr></xsl:template>

<!--Answers-->

<xsl:template match="//loesungsitem">
<xsl:if test="@ausgabeposition">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /></div>
</xsl:if>
<xsl:if test="loesung">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesungsitem/Loesung: </b></font><font color="blue"><xsl:apply-templates/></font></div>
</xsl:if>
<xsl:if test="distraktor">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesungsitem/Distraktor: </b></font><font color="red"><xsl:apply-templates/></font></div>
</xsl:if>
<!--<xsl:if test="loesung|distraktor">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesungsitem/Loesung&amp;Distraktor: </b></font><xsl:apply-templates/></div>
</xsl:if>-->
<xsl:if test="musterloesung">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesungsitem/Musterloesung: </b></font><font color="blue"><xsl:apply-templates/></font><br/></div>
</xsl:if>
<xsl:if test="@idref">
<font color="#636361" style="font-size: 12px;background-color:#fcfcef;"><xsl:value-of select="@idref" /></font>
</xsl:if>
</xsl:template>



<xsl:template match="//musterloesung">
<xsl:choose>
<xsl:when test="@individuelle-schuelerloesung='ohne Text'"><span style="font-weight:bold;color:#02a6ed;"><xsl:value-of select="."/></span></xsl:when>
<xsl:when test="@individuelle-schuelerloesung='Standardtext'"><span style="font-weight:bold;color:orange;"><xsl:value-of select="."/></span></xsl:when>
<xsl:otherwise><span><xsl:apply-templates/></span></xsl:otherwise>
</xsl:choose>
</xsl:template>


<!--<xsl:template match="//">
<xsl:if test="Musterloesung">***
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesungsitem/Musterloesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:if>-->

<!-- Answer steps-->
<xsl:template match="//loesungshilfe">
<div id="ans1"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesungshilfe</b></font><font color="black"><xsl:apply-templates/></font></div>
</xsl:template>

<xsl:template match="//loesungsweg">
<div id="ans2"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesungsweg</b></font><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//schritt">
<div id="ans2"><font color="#b4b4b4" style="font-size: 8px;font-variant: small-caps;"><b>Schritt</b></font><xsl:apply-templates/></div>
</xsl:template>


<xsl:template match="//anwendungsbeispiele">
<div style="width:100%;margin-top:30px;padding:5px;background-color:#E6FAFA"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><br/><b>Application Example</b></font><span><xsl:apply-templates/></span></div>
</xsl:template>

<xsl:template match="//anwendungsbeispiele/anwendungsbeispiel">
<div><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><br/><b>Example</b></font><span><xsl:apply-templates/></span></div>
</xsl:template>



<!-- Math -->

<xsl:template match="//formel-mitlaufend">
<span style="background-color: #e6ffe6; border:1px solid red; padding:4px;font-size:12px;"><font color="green"><xsl:apply-templates/></font></span>
</xsl:template>



<xsl:template match="//formel">
<span style="background-color: orange; border:1px solid red; padding:4px;font-size:12px;"><font color="green"><xsl:apply-templates/></font></span>
</xsl:template>


<xsl:template match="//mml:math">
<xsl:if test="mml:math">
<object id="MathPlayer" classid="clsid:32F66A20-7614-11D4-BD11-00104BD3F987" codebase="http://www.dessci.com/dl/mathplayer.cab">
</object>
<xsl:processing-instruction name="import">namespace="mml" implementation="#MathPlayer"</xsl:processing-instruction>
<font color="green"><xsl:apply-templates/>&#x00A0;</font>
</xsl:if>
</xsl:template>






<!--

<xsl:template match="//absolute-metadaten">
<div style="display: none;"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="//metadaten/relative-metadaten">
<div style="display: none;"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="/metadaten/system-metadaten">
<div style="display: none;"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="cd">
  <p>
    <xsl:apply-templates select="title"/>  
    <xsl:apply-templates select="artist"/>
  </p>
</xsl:template>

<xsl:template match="//ebene/ueberschrift">
   <table border="1">
      <tr>
        <td><a href="#eingabe"><xsl:apply-templates/></a></td>
      </tr>
	</table>
</xsl:template>-->
<!--<xsl:choose>
<xsl:when test="@ausgabeposition='1'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='2'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='3'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='4'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='5'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='6'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='7'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='8'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='9'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="@ausgabeposition='10'">
<div id="ans3"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>ausgabeposition: </b></font><xsl:value-of select="@ausgabeposition" /><br/></div>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="distraktor">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Distraktor: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="Loesung">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:when test="musterloesung">
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>musterloesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:when>
<xsl:otherwise>
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesung: </b></font><xsl:apply-templates/></div>
</xsl:otherwise>
</xsl:choose>-->

</xsl:stylesheet>
