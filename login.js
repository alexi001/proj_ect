   	function checkCredentials(){
		var x = document.getElementById("name").value;
		var y = document.getElementById("pwd").value;
		if(x == "alexi" && y == "123"){
			window.alert("login Successfull");
		}
		else{
			window.alert("Login Failed: Username or id is wrong");
		}
	}

	function changeUserInProperty(){
		document.getElementById("usr").style.color = "black";
	}

	function changePassInProperty(){
		document.getElementById("ps").style.color = "red";
	}

	function changeUserOutProperty(){
		document.getElementById("usr").style.color = "blue";
	}

	function changePassOutProperty(){
		document.getElementById("ps").style.color = "blue";
	}