
	function load()
	{
		
		x1=new XMLHttpRequest();
		x1.open("get","frnds.jsp",true);
		x1.onreadystatechange=load1;
		x1.send();
	}
	function load1()
	{
		if(x1.readyState==4)
			document.getElementById("friends").innerHTML=x1.responseText;
	}
	function message(str)
	{
		alert(str);
		x=new XMLHttpRequest();
		x.open("get","message.jsp?name=str",true);
		x.onreadystatechange=message1;
		x.send();
	}
	function message1()
	{
		alert(x.responseText);
		if(x.readyState==4)
			document.getElementById("friends").innerHTML+=x.responseText;
	}
	