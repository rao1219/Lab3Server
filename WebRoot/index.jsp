<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Lab2-3 Horoscope</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
		function checkform()
		{
		  var frm      = document.forms['horoscopeform'];
		  var name = frm.elements['name'].value;
		  var sex = frm.elements['sex'].value;
		  var msg = '';
		  if (name.length == 0)
		  {
		    msg += 'Please identify yourself (by indicating your name), so that your horoscope can be given! ' + '\n';
		  }
		  if (sex.length == 0)
		  {
		  	msg += 'please select your gender.\n';
		  }
		  if (msg.length > 0)
		  {
		    alert(msg);
		    return false;
		  }
		  else
		  {
		    return true;
		  }
		}
		function displayHoroscope(sex, sign)
		{
			Array.prototype.contains = function(item){
   			 RegExp("\\b"+item+"\\b").test(this);
			};
			var frm      = document.forms['horoscopeform'];
		 	var name = frm.elements['name'].value;
		 	var sex = frm.elements['sex'].value;
		 	var zodiac = frm.elements['zodiac'].value;
		 	
		 	var earlyzodiacs = [];
		 	earlyzodiacs.push("Aries");
		 	earlyzodiacs.push("Taurus");
			earlyzodiacs.push("Gemini");
			earlyzodiacs.push("Cancer");
			earlyzodiacs.push("Leo");
			earlyzodiacs.push("Virgo");
		 	
			if(earlyZodiacs.contains(sign))
			{
				if(sex==male)msg = "You will have a long life";
				else msg = "You will find a tall handsome stranger.";
			}
			else{
				if(sex==male) msg = "You will have a rich life.";
				else msg = "You will have six children.";
			}
			alert(msg);
		}
	</script>
  </head>
  
  <body>
    <fieldset> 
		<legend> Lab 2-3 </legend> 
		<form action="./Horoscope" id='horo' name="horoscopeform" method="get" onSubmit="return checkform()"> Input your name: 
			<input type="text" name="name" size="20"> 
			<br>Input your sex:
			<input type="radio" name="sex" value="male"> Male 
			<input type="radio" name="sex" value="female"> Female <br>
			Select your Zodiac sign:		
			<select name="zodiac"> 
				<option value="Aries">Aries</option> 
				<option value="Taurus">Taurus</option> 
				<option value="Gemini">Gemini</option> 
				<option value="Cancer">Cancer</option> 
				<option value="Leo">Leo</option>
				<option value="Virgo">Virgo</option> 
				<option value="Libra">Libra</option> 
				<option value="Scorpio">Scorpio</option> 
				<option value="Sagittarius">Sagittarius</option> 
				<option value="Capricorn">Capricorn</option> 
				<option value="Aquarius">Aquarius</option> 
				<option value="Pisces">Pisces</option> 
			</select> 
		<br>
		<input type="submit" value="Send"> 
		<input type="reset" value="Reset"> 
	</form>
	</fieldset>
	<fieldset>
		<Legend>Horoscope display</Legend>
		<div id ='welcome-msg'></div>
	</fieldset>
  </body>
</html>
