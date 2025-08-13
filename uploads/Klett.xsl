<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mml="http://www.w3.org/1998/Math/MathML">
	<!--<xsl:include href="mathml.xsl"/>-->
	
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
	
	<!--<script type="text/javascript">
$(document).ready(function() {

$.getScript('https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_HTML', function() {
MathJax.Hub.Config({
jax: ["input/MathML","output/HTML-CSS","output/NativeMML","output/PreviewHTML"],
extensions: ["mml2jax.js","MathMenu.js","MathZoom.js","fast-preview.js","AssistiveMML.js","a11y/accessibility-menu.js"],
"HTML-CSS": { availableFonts: ["TeX"] }
});
});

$(".metadatabutton").click(function() {
$(".metadata").toggle("slow");
});


});
</script>-->
<style>
body {
	font-size: 12px;
	font-family: "Book Antiqua", Georgia, serif;
	font-family: "Book Antiqua", Georgia, serif;
    text-align: justify;
	margin-left:5%;
	margin-right:5%;
	/*background-color: #fed766;*/
background-repeat: no-repeat;
background-attachment: fixed;
background-image:url("file://PDYLD11FFS01/Ernst-Klett/Tools_INI/00_Main/00_Styleview_new/main_back1.jpg");
}

.ebene{
background-image:url('file://PDYLD11FFS01/Ernst-Klett/Tools_INI/00_Main/00_Styleview_new/menu5.jpg');
border-radius: 10px;
padding:2px;
margin-bottom:10px;


}

.level
{
border: 0px solid #fed766;
padding:5px;
font-size: 13px;
margin:.5px;
background-color: #fdf5e6;
border-radius:10px;
}

.level1
{
border: 1px solid #e0ac69;
padding:10px;
font-size: 13px;
margin:5px;
background-color:#eeeeee;
border-radius:10px;
}

.level2
{
border: 1px solid yellow;
padding:10px;
font-size: 13px;
margin:5px;
background-color:#eeeeee;
border-radius:10px;
}


.eingabe1 {
	border-radius: 12px;
	border: 1px solid #e0ac69;
    padding: 0px;
	background: White;
	margin:30px;
	
}

.tit1{
border-radius: 50px;
border-top: 1px solid #fed766;
color:#900C3F;
font-weight: 900;
font-family: "Book Antiqua", Georgia, serif
font-size: 15px;
background-image:url("file://PDYLD11FFS01/Ernst-Klett/Tools_INI/00_Main/00_Styleview_new/int.jpg");
text-align:center;

}

.iobject {
	/*background-image:url('file://PDYLD11FFS01/Ernst-Klett/Tools_INI/00_Main/00_Styleview_new/menu5.jpg');*/
	border-radius: 30px;
	background-color:#eeeeee;
}


.inner {
width: 90%;
padding: 1em 1.5em;
margin: 2em auto;
background-color: #eeeeee;
border-radius: 20px;
}

.inner1 {
width: 70%;
padding: 1em 1.5em;
margin: 2em auto;
background-color: #f6cd61;
border-radius: 20px;
}
.inner2 {
width: 60%;
padding: 1em 1.5em;
margin: 2em auto;
background-color: #f6cd61;
border-radius: 20px;
font-size:11px;
}


.intit{
font-size:9px;
color:#900C3F;
font-variant: small-caps;
}





#ans {
	background-color: #fff6e9;
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


.table {
	margin-top: 10px;
    border-collapse: collapse;
	background-color: #fdf5e6;
	border: 1px solid white;
    padding: 5px;
	font-size: 11px;
	align: center;
}

.image {
	background-image: url("images1.png");
	padding: 0px;
	font-size:11px;
	font-family: "Book Antiqua";
	margin-left:auto;
	margin-right:auto;
}

.image1 {
	font-size:11px;
	background-color: #fff;
}

.tab table {
font-size:11px;
font-family: "Lato","sans-serif"; 
background-color: #fff;
}       /* added custom font-family  */
 
.tab table.one {                                  
border-collapse:collapse;
padding:5px;
background-color: #fff;
  }   
 
.tab td {      
border: 1px solid #ffdbac;
font-size:11px;                      /* removed the border from the table data rows  */
border-radius: 8px;
padding:5px;
background-color: #fff;
}       
 
.tab th {      
border-radius: 8px;
border: 1px solid #ffdbac;
font-size:11px;                        /* removed the border from the table heading row  */
text-align: center;                 
background-color:#900C3F;       /* added a red background color to the heading cells  */
color: #fff; 
}                 /* added a white font color to the heading text */
 
.tab tr:nth-child(even) {            /* added all even rows a #eee color  */
background-color: #fff;     }
 
.tab tr:nth-child(odd) {            /* added all odd rows a #fff color  */
background-color:#fff;      }
 
 
 /*meta*/
 
.meta table {
font-size:11px;
font-family: "Lato","sans-serif"; 
}       /* added custom font-family  */
 
.meta table.one {                                  
border-collapse:collapse;
padding:0px;

}   
 
.meta td {      
border: 1px solid #e0ac69;
font-size:11px;                      /* removed the border from the table data rows  */
border-radius: 5px;
padding:3px;
}       
 
.meta th {      
font-size:12px;                        /* removed the border from the table heading row  */
text-align: center;                 
      /* added a red background color to the heading cells  */
color: 900C3F; 
padding-right:10px;
background-color:white;
}                 /* added a white font color to the heading text */
 
.meta tr{            /* added all even rows a #eee color  */
background-color: #fff;  }
 
 #tdm
{
background-color:#f6cd61;
color:#900C3F;
font-weith:900;
}
 
 .main table {
 font-size:11px;
 font-family: "Lato","sans-serif"; 
 }       /* added custom font-family  */
 
 .main table.one {                                  
 border-collapse:collapse;
 padding:0px;
 
 }   
 
 .main td {      
 border: 1px solid #e0ac69;
 font-size:11px;                      /* removed the border from the table data rows  */
 border-radius: 5px;
 padding:3px;
 }       
 
 .main tr{            /* added all even rows a #eee color  */
 background-color: #fff;  }
 
</style>

<script src="file://PDYLD11FFS01/Ernst-Klett/Tools_INI/00_Main/00_Styleview_new/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("#hideBtn1").click(function(){
  $("#mydiv").hide("fast");
  });
});
$(document).ready(function(){
  $("#hideBtn2").click(function(){
  $("#mydiv").show("fast");
  });
});
</script>

</head>

<body>
<div style="text-align:center;"><img src="file://PDYLD11FFS01/Ernst-Klett/Tools_INI/00_Main/00_Styleview_new/logo.jpg"/><font color="#900C3F"><h1>STYLESHEET VIEW</h1></font></div>
<!--<div>
<button class="hideBtn">Hide all Attributes</button>
&#x2003;
<button class="showBtn">Show all Attributes</button><br/><br/>
<button class="hideimg">Hide all Images</button>
&#x2003;&#x2003;&#x00A0;
<button class="showimg">Show all Images</button><br/><br/>
</div>-->
<xsl:apply-templates/>
<script type="text/javascript" src="jquery-3.4.1.min.js">
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
 
<xsl:template match="kurs/metadaten">
<div style="display:none;"><font color="#ef1342">CMS Gen ID&#x2003;&#x2003;&#x2003;:&#x00A0;</font> <xsl:value-of select="@wert"/></div>
</xsl:template>

<xsl:template match="kurs/kursinhalt">
<xsl:variable name="eb1" select="//kursinhalt/ebene"/>
<xsl:variable name="ti1" select="//kursinhalt/ebene"/>
<xsl:variable name="et1" select="//kursinhalt/ebene/metadaten/relative-metadaten/ebenentyp"/>

<xsl:variable name="eb2" select="//kursinhalt//ebene//ebene"/>
<xsl:variable name="ti2" select="//kursinhalt//ebene//ebene/ueberschrift"/>
<xsl:variable name="et2" select="//kursinhalt//ebene//ebene/metadaten/relative-metadaten/ebenentyp/@wert"/>

<xsl:variable name="eb3" select="//kursinhalt//ebene//ebene//ebene"/>
<xsl:variable name="ti3" select="//kursinhalt//ebene//ebene//ebene/ueberschrift"/>
<xsl:variable name="et3" select="//kursinhalt//ebene//ebene//ebene/metadaten/relative-metadaten/ebenentyp/@wert"/>

<xsl:variable name="eb4" select="//kursinhalt//ebene//ebene//ebene//ebene"/>
<xsl:variable name="ti4" select="//kursinhalt//ebene//ebene//ebene//ebene/ueberschrift"/>
<xsl:variable name="et4" select="//kursinhalt//ebene//ebene//ebene//ebene/metadaten/relative-metadaten/ebenentyp/@wert"/>

<xsl:variable name="eb5" select="//kursinhalt//ebene//ebene//ebene//ebene//ebene"/>
<xsl:variable name="ti5" select="//kursinhalt//ebene//ebene//ebene//ebene//ebene/ueberschrift"/>
<xsl:variable name="et5" select="//kursinhalt//ebene//ebene//ebene//ebene//ebene/metadaten/relative-metadaten/ebenentyp/@wert"/>
	

<div class="inner2" style="background-repeat: no-repeat;background:#eeeeee;">
<div class="intit"><b>TOC</b></div>
<button id="hideBtn1">Hide</button>
<button id="hideBtn2">show</button>
<div id="mydiv"> 
<p>
<h6><a style="text-decoration:none;"><xsl:apply-templates select="//ueberschrift"/></a></h6>
</p>
</div>
</div>
	
	<xsl:apply-templates/>
</xsl:template>
	
	
<xsl:template match="//ebene">
<div class="level" style="background-color:white">
<!--<xsl:if test="$lvl1=ebene">-->
<div class="level1">
<font color="black" style="font-variant: small-caps;"><b>Level 1</b></font>
<xsl:apply-templates/>
</div>
<!--</xsl:if>-->
</div>
</xsl:template>

<xsl:template match="//ebene//ebene">
<div class="level" style="background-color:white">
<div class="level1">
<font color="black" style="font-variant: small-caps;"><b>Level 2</b></font><xsl:apply-templates/>
</div>
</div>
</xsl:template>

<xsl:template match="//ebene//ebene//ebene">
<div class="level" style="background-color:white">
<div class="level1">
<font color="black" style="font-variant: small-caps;"><b>Level 3</b></font><xsl:apply-templates/>
</div>
</div>

</xsl:template>

<xsl:template match="//ebene//ebene//ebene//ebene">
<div class="level" style="background-color:white">
<div class="level1">
<font color="black" style="font-variant: small-caps;"><b>Level 4</b></font><xsl:apply-templates/>
</div>
</div>

</xsl:template>



<xsl:template match="//ebene//ebene//ebene//ebene//ebene">
<div class="level" style="background-color:white">
<div class="level1">
<font color="black" style="font-variant: small-caps;"><b>Level 5</b></font><xsl:apply-templates/>
</div>
</div>

</xsl:template>


<xsl:template match="//lernweg">
<div class="level2" style="background-color:white">
<font color="black" style="font-variant: small-caps;padding-bottom:10px;"><b>Lernweg</b></font>
<div class="ebene" id="$cmsid">
<span><font color="#0e9aa7"><b>LP</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/lernwegtyp/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>DF</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/schwierigkeitsgrad/@wert" /></b></font></span>
</div>
<xsl:apply-templates/>
</div>
</xsl:template>







 
<!--ueberschrift-->

<xsl:template match="//ebene/ueberschrift">
<xsl:variable name="cmsid" select="../metadaten/system-metadaten/ids/cms-id/@wert"/>

<h2 style="text-align:center;margin-top:0;background-color:white; border-radius:10px; padding:5px;"><font color="#a93226"><xsl:value-of select="." /></font></h2>
<div class="ebene" id="$cmsid">
	<span><font color="#0e9aa7"><b>ET</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/relative-metadaten/ebenentyp/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:for-each select="../metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@kategorie_2" />), </xsl:for-each></b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
</div>
</xsl:template>

<xsl:template match="//ebene//ebene/ueberschrift">
<xsl:variable name="cmsid" select="../metadaten/system-metadaten/ids/cms-id/@wert"/>
<div style="position:absolute;left:100px;top:100px;">&#x2003;&#x2003;<br/></div>
<h3 style="text-align:center;background-color:white; border-radius:10px; padding:5px;"><font color="#7d3c98"><xsl:apply-templates/></font></h3>
<div class="ebene" id="$cmsid">
	<span><font color="#0e9aa7"><b>ET</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/relative-metadaten/ebenentyp/@wert" /></b></font></span> ║
	<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:for-each select="../metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@kategorie_2" />), </xsl:for-each></b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
</div>
</xsl:template>

<xsl:template match="//ebene//ebene//ebene/ueberschrift">
<xsl:variable name="cmsid" select="../metadaten/system-metadaten/ids/cms-id/@wert"/>
<div style="position:absolute;left:100px;top:100px;">&#x2003;&#x2003;<br/></div>
<h4 style="text-align:center;background-color:white; border-radius:10px; padding:5px;"><font color="#7d3c98"><xsl:apply-templates/></font></h4>
<div class="ebene" id="$cmsid">
	<span><font color="#0e9aa7"><b>ET</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/relative-metadaten/ebenentyp/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:for-each select="../metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@kategorie_2" />), </xsl:for-each></b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
</div>
</xsl:template>


<xsl:template match="//ebene//ebene//ebene/ueberschrift">
<div style="position:absolute;left:100px;top:100px;">&#x2003;&#x2003;<br/></div>
<h4 style="text-align:center;background-color:white; border-radius:10px; padding:5px;"><font color="#138d75"><xsl:apply-templates/></font></h4>
<div class="ebene">
<span><font color="#0e9aa7"><b>ET</b></font>: <font color="#8d5524"><b><xsl:apply-templates select="../metadaten/relative-metadaten/ebenentyp/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:for-each select="../metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@kategorie_2" />), </xsl:for-each></b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="../metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
</div>
</xsl:template>



<!--Inhalteobjekt -->


<!--<div class="tit1"><b><xsl:value-of select="name(./eingabe/aufgabe)" /></b></div>
<div class="tit1"><b><xsl:value-of select="name(./eingabe/quelle)" /></b></div>
<div class="tit1"><b><xsl:value-of select="name(./eingabe/merksatz)" /></b></div>
<div class="tit1"><b><xsl:value-of select="name(./eingabe/versuch)" /></b></div>
<div class="tit1"><b><xsl:value-of select="name(./eingabe/lehrinhalt)" /></b></div>-->

<xsl:variable name="nut">nutzungshinweis</xsl:variable>
<xsl:variable name="auf">aufgabe</xsl:variable>
<xsl:variable name="que">quelle</xsl:variable>
<xsl:variable name="mer">merksatz</xsl:variable>
<xsl:variable name="ver">versuch</xsl:variable>
<xsl:variable name="leh">lehrinhalt</xsl:variable>


<xsl:template match="//inhalteobjekt">
<xsl:variable name="autp" select="./metadaten/absolute-metadaten/autoren/autor/autoren-id/@wert"/>
<xsl:variable name="zeil" select="./metadaten/absolute-metadaten/zielgruppe/@wert"/>
<xsl:variable name="sozp" select="./metadaten/absolute-metadaten/sozialform/@wert"/>
<xsl:variable name="anrede" select="./metadaten/absolute-metadaten/anrede/@wert"/>
<xsl:variable name="komp" select="./metadaten/absolute-metadaten/kompetenz/@wert"/>
<xsl:variable name="komptb" select="./metadaten/absolute-metadaten/kompetenzbereich/@wert"/>
<xsl:variable name="edp" select="./metadaten/relative-metadaten/einfache-differenzierung/@wert"/>

<xsl:variable name="hfp" select="./metadaten/relative-metadaten/hilfsmittel-container/hilfsmittel"/>
<xsl:variable name="lap" select="./metadaten/relative-metadaten/lern-und-arbeitstechnik-container/lern-und-arbeitstechnik"/>
<xsl:variable name="lrp" select="./metadaten/relative-metadaten/lernort/@wert"/>
<xsl:variable name="obp" select="./metadaten/relative-metadaten/obligatorik/@wert"/>
<xsl:variable name="ptp" select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung"/>
<xsl:variable name="ktp" select="./metadaten/absolute-metadaten/kompetenzbereich"/>
<xsl:variable name="rap" select="./metadaten/relative-metadaten/redaktionelle-anmerkung/@wert"/>
<xsl:variable name="cmsp" select="./metadaten/system-metadaten/ids/cms-id/@wert"/>
<xsl:variable name="lgp" select="./metadaten/system-metadaten/spracheinstellung/@wert"/>
<xsl:variable name="obg" select="./metadaten/relative-metadaten/obligatorik/@wert"/>
<xsl:variable name="abp" select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-aufgabe/typspezifische-relative-metadaten-aufgabe/anforderungsbereich/@wert"/>
<xsl:variable name="dfp" select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-aufgabe/typspezifische-relative-metadaten-aufgabe/schwierigkeitsgrad/@wert"/>
<xsl:variable name="tkp" select="./metadaten/fachspezifische-metadaten/fremdsprachen/fremdsprachen-relative-metadaten/teilkompetenz-container/teilkompetenz"/>
<xsl:variable name="tze" select="./metadaten/fachspezifische-metadaten/fremdsprachen/fremdsprachen-relative-metadaten/zertifikat"/>
<xsl:variable name="tgr" select="./metadaten/fachspezifische-metadaten/grundschule-mathematik/grundschule-mathematik-relative-metadaten/grundrechenart-container/grundrechenart"/>
<xsl:variable name="gap" select="./metadaten/fachspezifische-metadaten/grundschule-mathematik/grundschule-mathematik-relative-metadaten/grundrechenart-container/grundrechenart"/>
<xsl:variable name="aap" select="./eingabe/aufgabe/spezifische-metadaten/aufgabenart/@wert"/>
<xsl:variable name="afp" select="./eingabe/aufgabe/spezifische-metadaten/aufgabenformat/@wert"/>
<xsl:variable name="itp" select="./eingabe/aufgabe/spezifische-metadaten/interaktion/@wert"/>
<xsl:variable name="atp" select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-aufgabe/typspezifische-relative-metadaten-aufgabe/aufgabentyp/@wert"/>
<xsl:variable name="ltp" select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-lehrinhalt/typspezifische-absolute-metadaten-lehrinhalt/lehrinhalttyp/@wert"/>
<xsl:variable name="ntp" select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-nutzungshinweis/typspezifische-absolute-metadaten-nutzungshinweis/nutzungshinweistyp/@wert"/>
<xsl:variable name="mtp" select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-merksatz/typspezifische-absolute-metadaten-merksatz/merksatztyp/@wert"/>
<xsl:variable name="vtp" select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-versuch/typspezifische-relative-metadaten-versuch/versuchstyp-container/versuchstyp/@wert"/>
<xsl:variable name="qtp" select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-quelle/typspezifische-absolute-metadaten-quelle/quellentyp/@wert"/>
<xsl:variable name="vap" select="//versuchsart/@wert"/>
	
	
<div class="eingabe1" id="{$cmsp}">
<xsl:if test="name(./eingabe/aufgabe)=$auf">
<div class="tit1"><b>AUFGABE</b></div>
</xsl:if>
<xsl:if test="name(./eingabe/lehrinhalt)=$leh">
<div class="tit1"><b>LEHRINHALT</b></div>
</xsl:if>
<xsl:if test="name(./eingabe/versuch)=$ver">
<div class="tit1"><b>VERSUCH</b></div>
</xsl:if>
<xsl:if test="name(./eingabe/quelle)=$que">
<div class="tit1"><b>QUELLE</b></div>
</xsl:if>
<xsl:if test="name(./eingabe/merksatz)=$mer">
<div class="tit1"><b>MERKSATZ</b></div>
</xsl:if>
<xsl:if test="name(./eingabe/nutzungshinweis)=$nut">
<div class="tit1"><b>NUTZUNGSHINWEIS</b></div>
</xsl:if>
<div style="padding:20px;">
<div class="iobject">
<table class="meta">
<tr>
<td id="tdm"><p style="color:#900C3F;">Absolute Meta</p></td><th></th>
<td><p><font color="#0e9aa7"><b>AI</b></font>: <font color="#8d5524"><b><xsl:for-each select="$autp"><xsl:value-of select="." />, </xsl:for-each></b></font></p></td><th></th>
<xsl:if test="$sozp!=''"><td><p><font color="#0e9aa7"><b>SF</b></font>: <font color="#8d5524"><b><xsl:value-of select="$sozp" /></b></font></p></td></xsl:if>
<xsl:if test="$anrede!=''"><td><p><font color="#0e9aa7"><b>AN</b></font>: <font color="#8d5524"><b><xsl:value-of select="$anrede" /></b></font></p></td></xsl:if>
<xsl:if test="$zeil!=''"><td><p><font color="#0e9aa7"><b>ZG</b></font>: <font color="#8d5524"><b><xsl:value-of select="$zeil" /></b></font></p></td></xsl:if>
<xsl:if test="$komp!=''"><td><p><font color="#0e9aa7"><b>KP</b></font>: <font color="#8d5524"><b><xsl:value-of select="$komp" /></b></font></p></td></xsl:if>
<td><p><font color="#0e9aa7"><b>KB</b></font>: <font color="#8d5524"><b><xsl:for-each select="$ktp"><xsl:value-of select="@kategorie_1"/> </xsl:for-each></b></font></p></td>
</tr>
</table>

<table class="meta">
<tr>
<td id="tdm"><p>Relative &#x00A0;Meta</p></td><th></th>
	<xsl:if test="name(./eingabe/aufgabe)=$auf"><xsl:if test="$edp!=''"><td><p><font color="#0e9aa7"><b>ED</b></font>: <font color="#8d5524"><b><xsl:value-of select="$edp" /></b></font></p></td><th></th></xsl:if></xsl:if>

	<xsl:if test="name(./eingabe/aufgabe)=$auf"><xsl:if test="$hfp!=''"><td><p><font color="#0e9aa7"><b>HF</b></font>: <font color="#8d5524"><b><xsl:for-each select="$hfp"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@metafach" />), </xsl:for-each></b></font></p></td><th></th></xsl:if></xsl:if>
	
	

	<xsl:if test="name(./eingabe/aufgabe)=$auf"><td><p><font color="#0e9aa7"><b>LA</b></font>: <font color="#8d5524"><b><xsl:for-each select="$lap"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@metafach" />), </xsl:for-each></b></font></p></td><th></th></xsl:if>

<xsl:if test="$lrp!=''"><td><p><font color="#0e9aa7"><b>LR</b></font>: <font color="#8d5524"><b><xsl:value-of select="$lrp" /></b></font></p></td><th></th></xsl:if>


<xsl:if test="$obg!=''"><td><p><font color="#0e9aa7"><b>OB</b></font>: <font color="#8d5524"><b><xsl:value-of select="$obg" /></b></font></p></td><th></th></xsl:if>

<td><p><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:for-each select="$ptp"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@kategorie_2" />), </xsl:for-each></b></font></p></td><th></th>

<xsl:if test="$rap!=''"><td><p><font color="#0e9aa7"><b>RA</b></font>: <font color="#8d5524"><b><xsl:value-of select="$rap" /></b></font></p></td><th></th></xsl:if>
</tr>
</table>

<table class="meta">
<tr>
<td id="tdm"><p style="color:900C3F;">System &#x00A0;&#x00A0;&#x00A0;Meta</p></td><th></th>
<td><p><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="$cmsp" /></b></font></p></td><th></th>
<xsl:if test="$lgp!=''"><td><p><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="$lgp" /></b></font></p></td><th></th></xsl:if>
</tr>
</table>

<table class="meta">
<tr>
<td id="tdm"><p style="color:900C3F;">Type &#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;Meta</p></td><th></th>

<xsl:if test="name(./eingabe/aufgabe)=$auf"><xsl:if test="$abp!=''"><td><p><font color="#0e9aa7"><b>AB</b></font>: <font color="#8d5524"><b><xsl:value-of select="$abp" /></b></font></p></td><th></th></xsl:if></xsl:if>

<xsl:if test="name(./eingabe/aufgabe)=$auf"><td><p><font color="#0e9aa7"><b>AT</b></font>: <font color="#8d5524"><b><xsl:value-of select="$atp" /></b></font></p></td><th></th></xsl:if>


<xsl:if test="name(./eingabe/aufgabe)=$auf"><xsl:if test="$dfp!=''"><td><p><font color="#0e9aa7"><b>DF</b></font>: <font color="#8d5524"><b><xsl:value-of select="$dfp" /></b></font></p></td></xsl:if></xsl:if>
	
<xsl:if test="name(./eingabe/nutzungshinweis)=$nut"><td><p><font color="#0e9aa7"><b>NT</b></font>: <font color="#8d5524"><b><xsl:value-of select="$ntp" /></b></font></p></td></xsl:if>

<xsl:if test="name(./eingabe/quelle)=$que"><td><p><font color="#0e9aa7"><b>QT</b></font>: <font color="#8d5524"><b><xsl:value-of select="$qtp" /></b></font></p></td></xsl:if>
	
<xsl:if test="name(./eingabe/merksatz)=$mer"><td><p><font color="#0e9aa7"><b>MT</b></font>: <font color="#8d5524"><b><xsl:value-of select="$mtp" /></b></font></p></td></xsl:if>

<xsl:if test="name(./eingabe/versuch)=$ver"><td><p><font color="#0e9aa7"><b>VT</b></font>: <font color="#8d5524"><b><xsl:value-of select="$vtp" /></b></font></p></td></xsl:if>

<xsl:if test="name(./eingabe/lehrinhalt)=$leh"><td><p><font color="#0e9aa7"><b>LT</b></font>: <font color="#8d5524"><b><xsl:value-of select="$ltp" /></b></font></p></td></xsl:if>

</tr>

</table>


<table class="meta">
<tr>
<td id="tdm"><p style="color:900C3F;">Fach &#x2003;&#x00A0;&#x00A0;&#x00A0; Meta</p></td><th></th>

<td><p><font color="#0e9aa7"><b>TK</b></font>: <font color="#8d5524"><b><xsl:for-each select="$tkp"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@metafach" />), </xsl:for-each></b></font></p></td><th></th>
<td><p><font color="#0e9aa7"><b>ZE</b></font>: <font color="#8d5524"><b><xsl:for-each select="$tze"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@metafach" />), </xsl:for-each></b></font></p></td><th></th>
<td><p><font color="#0e9aa7"><b>GR</b></font>: <font color="#8d5524"><b><xsl:for-each select="$tgr"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@metafach" />), </xsl:for-each></b></font></p></td><th></th>

<xsl:if test="name(./eingabe/aufgabe)=$auf"><xsl:if test="$gap!=''"><td><p><font color="#0e9aa7"><b>GA</b></font>: <font color="#8d5524"><b><xsl:for-each select="$gap"><xsl:value-of select="@kategorie_1" /> (<xsl:value-of select="@metafach" />), </xsl:for-each></b></font></p></td><th></th></xsl:if></xsl:if>

<xsl:if test="name(./eingabe/versuch)=$ver"><td><p><font color="#0e9aa7"><b>VA</b></font>: <font color="#8d5524"><b><xsl:value-of select="$vap" /></b></font></p></td></xsl:if>

</tr>
</table>

<xsl:if test="name(./eingabe/aufgabe)=$auf">
<table class="meta">
<tr>	
<td id="tdm"><p style="color:900C3F;">Special &#x00A0;&#x00A0;&#x00A0;Meta</p></td><th></th>
<td><p><font color="#0e9aa7"><b>AA</b></font>: <font color="#8d5524"><b><xsl:value-of select="$aap" /></b></font></p></td><th></th>

<td><p><font color="#0e9aa7"><b>AF</b></font>: <font color="#8d5524"><b><xsl:value-of select="$afp" /></b></font></p></td><th></th>
<td><p><font color="#0e9aa7"><b>IT</b></font>: <font color="#8d5524"><b><xsl:value-of select="$itp" /></b></font></p></td><th></th>
</tr>
</table>
</xsl:if>
</div>
<p><xsl:apply-templates/></p>
</div>
</div>
</xsl:template>

	
<!--<div id="eingabe1">
<xsl:if test="name(./eingabe/lehrinhalt)=$leh">
<div class="tit1"><b>LEHRINHALT</b></div>
</xsl:if>
<div style="padding:20px;">
<div class="iobject">
<span><font color="#0e9aa7"><b>AI</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/absolute-metadaten/autoren/autor/autoren-id/@wert" /></b></font></span> ║
	<span><font color="#0e9aa7"><b>LR</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/lernort/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_1" /></b></font> <font color="black"><b>(<xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_2" />)</b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
<span><font color="#0e9aa7"><b>NT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-lehrinhalt/typspezifische-absolute-metadaten-lehrinhalt/lehrinhalttyp/@wert" /></b></font></span>
</div>
<p><xsl:apply-templates/></p>
</div>
</div>
<xsl:if test="name(./eingabe/versuch)=$ver">
<div id="eingabe1">
<div class="tit1"><b>VERSUCH</b></div>
<div style="padding:20px;">
<div class="iobject">
<span><font color="#0e9aa7"><b>AI</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/absolute-metadaten/autoren/autor/autoren-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LR</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/lernort/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_1" /></b></font> <font color="black"><b>(<xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_2" />)</b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
<span><font color="#0e9aa7"><b>NT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
</div>
<p><xsl:apply-templates/></p>
</div>
</div>
</xsl:if>
<xsl:if test="name(./eingabe/quelle)=$que">
<div id="eingabe1">
<div class="tit1"><b>QUELLE</b></div>
<div style="padding:20px;">
<div class="iobject">
<span><font color="#0e9aa7"><b>AI</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/absolute-metadaten/autoren/autor/autoren-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LR</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/lernort/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_1" /></b></font> <font color="black"><b>(<xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_2" />)</b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
<span><font color="#0e9aa7"><b>NT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
</div>
<p><xsl:apply-templates/></p>
</div>
</div>
</xsl:if>-->


<!--<xsl:if test="name(./eingabe/merksatz)=$mer">
<div id="eingabe1">
<div class="tit1"><b>MERKSATZ</b></div>
<div style="padding:20px;">
<div class="iobject">
<span><font color="#0e9aa7"><b>AI</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/absolute-metadaten/autoren/autor/autoren-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LR</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/lernort/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_1" /></b></font> <font color="black"><b>(<xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_2" />)</b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
<span><font color="#0e9aa7"><b>NT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
</div>
<p><xsl:apply-templates/></p>
</div>
</div>
</xsl:if>
<xsl:if test="name(./eingabe/nutzungshinweis)=$nut">
<div id="eingabe1">
<div class="tit1"><b>NUTZUNGSHINWEIS</b></div>
<div style="padding:20px;">
<div class="iobject">
<span><font color="#0e9aa7"><b>AI</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/absolute-metadaten/autoren/autor/autoren-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LR</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/lernort/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_1" /></b></font> <font color="black"><b>(<xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_2" />)</b></font></span> ║
<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║
<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
<span><font color="#0e9aa7"><b>NT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span>
</div>
<p><xsl:apply-templates/></p>
</div>
</div>
</xsl:if>
</xsl:template>-->
<!-- versuch 

<xsl:template match="//versuch">
<div id="ver"><xsl:apply-templates/></div>
</xsl:template>-->

<!--Tipp-->
<xsl:template match="//tipp">
<div class="inner1">
<div class="intit"><b>Tipp</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>





<!--Ebene Attributes-->



<xsl:template match="//referenz-objekte">
<div class="inner2">
<div class="intit"><b>Referenz-Objekt</b></div>
<xsl:for-each select="referenz-objekt">
<xsl:variable name="zlid" select="ziel-id/@wert"/>

<!--<a href="img/{@external-id}.jpg" onclick="window.open(this.href, 'mywin', 'left=100,top=100,width=500,height=500,toolbar=0,resizable=0'); return false;" ><font color="#8B0000" style="background-color:pink"><b><xsl:value-of select="@external-id" /></b></font><br/></a>-->


<p><a href="#{$zlid}" style="text-decoration:none;" onclick="window.open(this.href, 'mywin', 'left=100,top=100,width=500,height=500,toolbar=0, scrollbars=1,resizable=1'); return false;"><xsl:value-of select="ziel-id/@wert" /></a></p>
</xsl:for-each>
</div>
</xsl:template>


<!--Image-->

<xsl:template match="//absolute-metadaten-audio">
<div class="image" style="border-top:3px solid black;"></div>
<div class="image2">
<!--<img src="img_icon.gif" /><br/><br/>-->
<font>☉ Audio</font> <xsl:value-of select="@wert" />
<br/>
</div>
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
<div class="inner1">
<div class="intit"><b>Medienobjekt-Block</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//medienobjekt-serie/medienobjekt">
<div class="intit"><b>Medienobjekt</b></div>
<p><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="//medienobjekt-serie">
<div class="inner1">
<div class="intit"><b>Medienobjekt-Serie</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//medienobjekt-mitlaufend">
<div class="inner1">
<div class="intit"><b>Medienobjekt-Mitlaufend</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//bild-ausrichtung">
<div class="image">
<table border="0" class="image1">
<tr>
<td><font color="#0e9aa7"><b>VL</b></font></td>
<td>: <font color="#8d5524 "><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</div>
</xsl:template>


<xsl:template match="//inhaltliche-bildgroesse">
<div class="image">
<table border="0" class="image1">
<tr>
<td><font color="#0e9aa7"><b>MZ</b></font></td>
<td>: <font color="#8d5524 "><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</div>
</xsl:template>


<xsl:template match="//asset-typ">
<div class="image">
<table border="0" class="image1">
<tr>
<td><font color="#0e9aa7"><b>FT</b></font></td>
<td>: <font color="#8d5524 "><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</div>
</xsl:template>


<xsl:template match="//mam-id">
<div class="image">
<table border="0" class="image1">
<tr>
<td><font color="#0e9aa7"><b>CD</b></font></td>
<td>: <font color="#8d5524 "><b><xsl:value-of select="@wert" /></b></font></td>
</tr>
</table>
</div>
</xsl:template>

<xsl:template match="//medienobjektunterschrift">
<div class="image">
<table border="0" class="image1">
<tr>
<td><font color="#0e9aa7"><b>CP</b></font></td>
<td style="font-size:11px;">: <font color="#8d5524"><b><xsl:apply-templates/></b></font></td>
</tr>
</table>
</div>
</xsl:template>

<!--<xsl:template match="//medienobjekt/metadaten/absolute-metadaten/zielgruppe">
<div class="image"><font color="#ef1342">Zielgruppe&#x2003;&#x2003;&#x2003;&#x2003;: </font> <xsl:value-of select="@wert" /></div>
</xsl:template>

<xsl:template match="//bildposition">
<div class="image"><font color="#ef1342">Image Position&#x2003;&#x2003;&#x00A0;:&#x00A0;</font> <xsl:value-of select="@wert" /></div>
</xsl:template>
-->







<!--<xsl:template match="//medienobjekt/mam-asset/celum-id">
<div id="{@wert}" class="image" align="l"><p><font color="#ef1342">Celum-ID&#x2003;&#x2003;&#x2003;&#x2003;: </font><xsl:value-of select="@wert" /><br/><br/><img src="img/{@wert}.jpg"/></p></div>
</xsl:template>-->


<!--<xsl:template match="//medienobjekt/mam-asset/asset-typ">
<div style="display:none;" id="{@wert}" class="image" align="l"><p><font color="#ef1342">ASSET-TYP&#x2003;&#x2003;&#x2003; : </font><xsl:value-of select="@wert" /><br/><br/><img src="img/{@wert}.jpg"/></p></div>
</xsl:template>-->



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
<xsl:variable name="zlid" select="ziel-id/@wert"/>
<span><font color="White" style="background-color:Brown"><b><xsl:value-of select="referenztext" /></b></font></span>
<span>(<font color="#8B0000" style="background-color:yellow"><b>
<a href="#{$zlid}" style="text-decoration:none;" onclick="window.open(this.href, 'mywin', 'left=100,top=100,width=500,height=500,toolbar=0, scrollbars=1,resizable=1'); return false;"><xsl:value-of select="ziel-id/@wert" /></a></b></font>)</span>
</xsl:template>




<!--<a href="img/{@external-id}.jpg" onclick="window.open(this.href, 'mywin', 'left=100,top=100,width=500,height=500,toolbar=0,resizable=0'); return false;" ><font color="#8B0000" style="background-color:pink"><b><xsl:value-of select="@external-id" /></b></font><br/></a>-->





<!-- titel -->

<xsl:template match="//titel">
<div class="intit"><b>titel</b>:</div> <h3><font color="#ba4a00"><xsl:apply-templates/></font></h3>
</xsl:template>

<!-- zwischenueberschrift -->

<xsl:template match="//zwischenueberschrift">
<h5><font color="#138d75" size="2"><xsl:apply-templates/></font></h5>
</xsl:template>

<!--Answers -->


<xsl:template match="//anwendungsbeispiele//anwendungsbeispiel">
<div class="inner">
<div class="intit"><b>Anwendungsbeispiel</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>


<xsl:template match="//cms-ph-inhaltliche-verankerung">
<div id="ans3"><a href="#{@external-id}"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Link of (A)</b></font>: (<xsl:value-of select="@external-id" />)</a></div>
</xsl:template>


<xsl:template match="//aufgabe//aufgabenstellung">
<div class="inner">
<div class="intit"><b>Aufgabenstellung</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//aufgabenitem">
<div class="inner">
<div class="intit"><b>Aufgabenitem</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//item">
<div><p style="Border-top: 1px solid #e0ac69;"><font color="#900C3F" style="font-size: 9px;font-variant: small-caps;"><b><span style="background-color:#fed766;">ITEM</span></b></font><xsl:apply-templates/></p></div>
</xsl:template>

<xsl:template match="//folgenelement">
<div class="inner">
<div class="intit"><b>Aufgabenrolle</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>


<xsl:template match="//beispiel">
<font color="#a01b14"><span style="background-color:yellow;"><b><xsl:apply-templates/></b></span></font>
</xsl:template>


<xsl:template match="//platzhalter">
<font color="#636361" style="font-size: 12px;background-color:#fceff8; padding:3px;"> <xsl:value-of select="@id" /></font>
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
<font color="#0e9aa7"><br/>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//division/minuend/minuend">
<br/><font color="#0e9aa7">&#x00A0;&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//division/subtrahend">
<font color="green" style="border-bottom: 1px solid red;"><br/>&#x00A0;<xsl:apply-templates/>&#x00A0;</font>
</xsl:template>

<xsl:template match="//division/subtrahend">
<font color="green" style="border-bottom: 1px solid red;"><br/><b>-</b><xsl:apply-templates/>&#x00A0;</font>
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
<br/><br/><font color="#0e9aa7"><b>&#x00A0;<xsl:apply-templates/></b></font>
</xsl:template>


<xsl:template match="//rest">
<font color="red"><br/><b>&#x00A0;&#x00A0;<xsl:apply-templates/></b></font>
</xsl:template>


<xsl:template match="//differenz">
<font color="#b4b4b4" style="border-top: 1px solid red"><br/>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//uebertrag">
<font color="red"></font><font color="red"><br/>&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//kleine-zahl-unten">
<font color="red"></font><font color="red"><br/>&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//faktor">
<br/><br/><font color="#b4b4b4" style="font-size: 9px; font-variant: small-caps;"></font><font>&#x00A0;<b>×</b>&#x00A0;<xsl:apply-templates/></font>
</xsl:template>

<xsl:template match="//produkt">
<font color="red" style="border-top: 1px solid red"><br/>&#x00A0;<b><xsl:apply-templates/></b></font>
</xsl:template>


<xsl:template match="//schritte">
<div class="inner">
<div class="intit"><b>Steps/Schritte</b></div>
<xsl:apply-templates/>
</div>
</xsl:template>

<xsl:template match="//probe">
<div class="inner">
<div class="intit"><b>Probe</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//probe/schriftliches-rechenverfahren">
<br/><xsl:apply-templates/>
</xsl:template>

<xsl:template match="//zwischenprodukt">
<font color="red"><br/>&#x00A0;&#x00A0;&#x00A0;<xsl:apply-templates/>&#x00A0;&#x00A0;</font>
</xsl:template>



<xsl:template match="//dialog">
<div class="inner1">
<div class="intit"><p><b>Dialog/SP</b></p></div>
<xsl:for-each select="sp">
<table width="100%" style="font-size:11px;">
<tr><td width="15%" valign="top" cellspacing="10"><p><font color="#900C3F"><xsl:apply-templates select="./sprecher" /></font></p></td><td valign="top"><p> : </p></td><td width="85%" valign="top"><p><xsl:apply-templates select="./sprechertext" /></p></td></tr>
</table>
</xsl:for-each>
</div>
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
<div class="inner">
<div class="intit"><b>Arbeitshilfe/Work Help</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//versuchsmaterialien">
<div class="inner">
<div class="intit"><b>Materialien</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//versuchsbeschreibung">
<div class="inner">
<div class="intit"><b>Versuchsbeschreibung</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>


<xsl:template match="//versuchsauswertung-ergebnis">
<div class="inner">
<div class="intit"><b>versuchsauswertung-ergebnis</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>


<xsl:template match="//fremdtextobjekt">
<div class="inner1">
<div class="intit"><b>Fremdtextobjekt/Foreign Tex</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//fremdtextinhalt//fremdtexttitel">
<h3><font color="#138d75"><xsl:apply-templates/></font></h3>
</xsl:template>

<!--properties-->

<!--Other tags-->

<!--<xsl:template match="td"><td><xsl:apply-templates/></td></xsl:template>-->

<!--Rowspan/Colspan-->

<xsl:template match="//td">
<xsl:choose>
<xsl:when test="@colspan='2'"><td valign="middle" colspan="2" align="center" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='3'"><td valign="middle" colspan="3" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='4'"><td valign="middle" colspan="4" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='5'"><td valign="middle" colspan="5" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='6'"><td valign="middle" colspan="6" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='7'"><td valign="middle" colspan="7" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='8'"><td valign="middle" colspan="8" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='9'"><td valign="middle" colspan="9" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='10'"><td valign="middle" colspan="10" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='11'"><td valign="middle" colspan="11" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='12'"><td valign="middle" colspan="12" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='13'"><td valign="middle" colspan="13" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='14'"><td valign="middle" colspan="14" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='15'"><td valign="middle" colspan="15" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='16'"><td valign="middle" colspan="16" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='17'"><td valign="middle" colspan="17" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='18'"><td valign="middle" colspan="18" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='19'"><td valign="middle" colspan="19" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='20'"><td valign="middle" colspan="20" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='21'"><td valign="middle" colspan="21" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@colspan='22'"><td valign="middle" colspan="22" class="tab"><xsl:apply-templates/></td></xsl:when>



<xsl:when test="@rowspan='2'"><td valign="middle" rowspan="2" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='3'"><td valign="middle" rowspan="3" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='4'"><td valign="middle" rowspan="4" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='5'"><td valign="middle" rowspan="5" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='6'"><td valign="middle" rowspan="6" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='7'"><td valign="middle" rowspan="7" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='8'"><td valign="middle" rowspan="8" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='9'"><td valign="middle" rowspan="9" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='10'"><td valign="middle" rowspan="10" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='11'"><td valign="middle" rowspan="11" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='12'"><td valign="middle" rowspan="12" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='13'"><td valign="middle" rowspan="13" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='14'"><td valign="middle" rowspan="14" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='15'"><td valign="middle" rowspan="15" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='16'"><td valign="middle" rowspan="16" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='17'"><td valign="middle" rowspan="17" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='18'"><td valign="middle" rowspan="18" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='19'"><td valign="middle" rowspan="19" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='20'"><td valign="middle" rowspan="20" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='21'"><td valign="middle" rowspan="21" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='22'"><td valign="middle" rowspan="22" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='23'"><td valign="middle" rowspan="23" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='24'"><td valign="middle" rowspan="24" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='25'"><td valign="middle" rowspan="25" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='26'"><td valign="middle" rowspan="26" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='27'"><td valign="middle" rowspan="27" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='28'"><td valign="middle" rowspan="28" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='29'"><td valign="middle" rowspan="29" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@rowspan='30'"><td valign="middle" rowspan="30" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@align='center'"><td valign="middle" align="center" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:when test="@align='right'"><td valign="middle" align="right" class="tab"><xsl:apply-templates/></td></xsl:when>
<xsl:otherwise><td class="tab" valign="middle"><span><xsl:apply-templates/></span></td></xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template match="//sup"><font color="red" size="2" style="background-color: 1px solid white; padding:0px; text-decoration: underline;"><sup><xsl:apply-templates/></sup></font></xsl:template>
<xsl:template match="//sub"><font color="red" size="2" style="background-color: 1px solid white; padding:0px; text-decoration: underline;"><sub><xsl:apply-templates/></sub></font></xsl:template>

<xsl:template match="abrufdatum"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Abrufdatum</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="erscheinungsdatum"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Erscheinungsdatum</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fremdtext-titel"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fremdtext-titel</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fremdtext-autor"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fremdtext-autor</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fremdtexttyp"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fremdtexttyp</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fundstelle-isbn"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fundstelle-isbn</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fundstelle-produktnummer"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fundstelle-produktnummer</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fundstelle-url"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fundstelle-url</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="jahr-des-drucks"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Jahr-des-drucks</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="originalausgabe"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Originalausgabe</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="punktgenaue-position"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Punktgenaue-position</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="seitenangabe"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Seitenangabe</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="uebersetzer"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Uebersetzer</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="inhaltliche-ueberarbeitung-redaktion"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Inhaltliche-ueberarbeitung-redaktion</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>
<xsl:template match="fremdtextumfang"><p><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Fremdtextumfang</b></font>: <span style="color:#fa05eb;"><b><xsl:value-of select="@wert"/></b></span></p></xsl:template>



<xsl:template match="teaser">
<div class="inner">
<div class="intit"><b>Teaser</b></div>
<font color="#8B0000"><xsl:apply-templates/></font>
</div>
</xsl:template>


<xsl:template match="inhalteelement">
<div class="inner">
<div class="intit"><b>InhalteElement</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>



<xsl:template match="ul">
<div class="inner1">
<div class="intit"><b>UL</b></div>
<ul><xsl:apply-templates/></ul>
</div>
</xsl:template>

<xsl:template match="ol">
<div class="inner1">
<div class="intit"><b>OL</b></div>
<ol><xsl:apply-templates/></ol>
</div>
</xsl:template>

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

<xsl:template match="//ziffernplatzhalter"><span style="background-color:#d90b42;">❒</span></xsl:template>

<xsl:template match="emph">
<xsl:choose>
<xsl:when test="@class='1'"><span style="font-weight:bold;color:#02a6ed;"><xsl:value-of select="."/></span></xsl:when>
<xsl:when test="@class='2'"><span style="font-weight:bold;color:orange;"><xsl:value-of select="."/></span></xsl:when>
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
<xsl:when test="@class='Standardtabelle'">

<div class="inner1">
<div class="intit"><p><b>Standardtabelle</b></p></div>
<table class="tab" ><xsl:apply-templates/></table>
</div>
</xsl:when>

<xsl:when test="@class='Kreuztabelle'">
<div class="inner1">
<div class="intit"><p><b>Kreuztabelle</b></p></div>
<table class="tab"><xsl:apply-templates/></table>
</div>
</xsl:when>
<xsl:otherwise><table border="0" class="tab"><xsl:apply-templates/></table></xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template match="//caption"><div style="background-color:white; font-size:11px; border-radius:10px; padding:5px;margin:10px"><xsl:apply-templates/></div></xsl:template>
<xsl:template match="thead"><tr class="tab"><xsl:apply-templates/></tr></xsl:template>
<!--Answers-->

<xsl:template match="//loesungsitem">
<xsl:if test="@ausgabeposition">
<div class="inner">
<div class="intit"><b>Ausgabeposition</b></div>
<xsl:value-of select="@ausgabeposition" />
</div>
</xsl:if>
<xsl:if test="loesung">
<div class="inner">
<div class="intit"><b>Loesungsitem/Loesung:</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:if>
<xsl:if test="distraktor">
<div class="inner">
<div class="intit"><b>Loesungsitem/Distraktor:</b></div>
<p><font color="blue"><xsl:apply-templates/></font></p>
</div>
</xsl:if>
<xsl:if test="musterloesung">
<div class="inner">
<div class="intit"><b>Loesungsitem/Musterloesung:</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:if>

<xsl:if test="@idref">
<font color="#636361" style="font-size: 12px;background-color:#fcfcef;"><xsl:value-of select="@idref" /></font>
</xsl:if>
</xsl:template>

<xsl:template match="//musterloesung">
<xsl:choose>
<xsl:when test="@individuelle-schuelerloesung='Ohne Text'"><span style="font-weight:bold;color:red"><div><b>Ohne Text/No Answer</b></div><xsl:value-of select="."/></span></xsl:when>
<xsl:when test="@individuelle-schuelerloesung='Mit Standardtext'"><span style="font-weight:bold;color:red;"><b>Standardtext</b><xsl:value-of select="."/></span></xsl:when>
<xsl:otherwise><span><xsl:apply-templates/></span></xsl:otherwise>
</xsl:choose>
</xsl:template>


<!--<xsl:template match="//">
<xsl:if test="Musterloesung">***
<div id="ans"><font color="#b4b4b4" style="font-size: 9px;font-variant: small-caps;"><b>Loesungsitem/Musterloesung: </b></font><xsl:apply-templates/><br/></div>
</xsl:if>-->

<!-- Answer steps-->
<xsl:template match="//loesungshilfe">
<div class="inner">
<div class="intit"><b>Loesungshilfe</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//loesungsweg">
<div class="inner">
<div class="intit"><b>Loesungsweg</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//schritt">
<div class="inner">
<div class="intit"><b>Schritt</b></div>
<xsl:apply-templates/>
</div>
</xsl:template>


<xsl:template match="//anwendungsbeispiele">
<div class="inner1">
<div class="intit"><b>Application Example</b></div>
<p><xsl:apply-templates/></p>
</div>
</xsl:template>

<xsl:template match="//anwendungsbeispiele/anwendungsbeispiel">
<div class="intit"><b>Example</b></div>
<p><xsl:apply-templates/></p>
</xsl:template>

<!-- Math -->

	<xsl:template match="//formel-mitlaufend">
		<span style="background-color: #e6ffff; border:0.5px solid green; padding:2px;font-size:13px;"><font color="green"><xsl:apply-templates/></font></span>
	</xsl:template>

	<xsl:template match="//formel">
		<span style="background-color: #ffe6ff; border:0.5px solid brown; padding:4px;font-size:13px;"><font color="green"><xsl:apply-templates/></font></span>
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
<xsl:template match="//formel-mitlaufend">
<span style="background-color: white; border:1px solid #e0ac69; padding:2px;font-size:13px;"><font color="#0e9aa7"><b><xsl:apply-templates/></b></font></span>
</xsl:template>

<xsl:template match="//formel">
<span style="background-color: white; border:1px solid #e0ac69; padding:5px;font-size:13px;"><font color="#0e9aa7"><b><xsl:apply-templates/><br/></b></font></span>
</xsl:template>

<xsl:template match="mml:math">
<xsl:if test="mml:math">
<object id="MathPlayer" classid="clsid:32F66A20-7614-11D4-BD11-00104BD3F987" codebase="http://www.dessci.com/dl/mathplayer.cab">
</object>
<xsl:processing-instruction name="import">namespace="mml" implementation="#MathPlayer"</xsl:processing-instruction>
<font color="#0e9aa7"><xsl:apply-templates/>&#x00A0;</font>
</xsl:if>
</xsl:template>

-->


<!--<span><font color="#0e9aa7"><b>AI</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/absolute-metadaten/autoren/autor/autoren-id/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>SF</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/absolute-metadaten/sozialform/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>ED</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/einfache-differenzierung/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>HF</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/hilfsmittel-container/hilfsmittel/@kategorie_1" /> (<xsl:value-of select="./metadaten/relative-metadaten/hilfsmittel-container/hilfsmittel/@metafach" />)</b></font></span> ║

<span><font color="#0e9aa7"><b>LA</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/lern-und-arbeitstechnik-container/lern-und-arbeitstechnik/@kategorie_1" /> (<xsl:value-of select="./metadaten/relative-metadaten/lern-und-arbeitstechnik-container/lern-und-arbeitstechnik/@metafach" />)</b></font></span> ║


<span><font color="#0e9aa7"><b>LR</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/lernort/@wert" /></b></font></span> ║


<span><font color="#0e9aa7"><b>PT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_1" /></b></font> <font color="black"><b>(<xsl:value-of select="./metadaten/relative-metadaten/produkttypauspraegung-container/produkttypauspraegung/@kategorie_2" />)</b></font></span> ║

<span><font color="#0e9aa7"><b>RA</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/relative-metadaten/redaktionelle-anmerkung/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>CMS-ID</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/ids/cms-id/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>LG</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/system-metadaten/spracheinstellung/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>AB</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-aufgabe/typspezifische-relative-metadaten-aufgabe/anforderungsbereich/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>AT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-aufgabe/typspezifische-relative-metadaten-aufgabe/aufgabentyp/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>IT</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-aufgabe/typspezifische-relative-metadaten-aufgabe/interaktion/@wert" /></b></font></span> ║

<span><font color="#0e9aa7"><b>DF</b></font>: <font color="#8d5524"><b><xsl:value-of select="./metadaten/typspezifische-metadaten/typspezifische-metadaten-aufgabe/typspezifische-relative-metadaten-aufgabe/schwierigkeitsgrad/@wert" /></b></font></span>-->
</xsl:stylesheet>
