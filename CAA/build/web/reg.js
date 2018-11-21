function changeFnameInProperty(){
				document.getElementById("fnm").style.color = "yellow";
			}

			function changeFnameOutProperty(){
				document.getElementById("fnm").style.color = "white";
			}

			function changeLnameInProperty(){
				document.getElementById("lnm").style.color = "yellow";
			}

			function changeLnameOutProperty(){
				document.getElementById("lnm").style.color = "white";
			}

			function changeEmailInProperty(){
				document.getElementById("email").style.color = "yellow";
			}

			function changeEmailOutProperty(){
				document.getElementById("email").style.color = "white";
			}

			function changePwdInProperty(){
				document.getElementById("pwd").style.color = "yellow";
			}

			function changePwdOutProperty(){
				document.getElementById("pwd").style.color = "white";
			}
			function changeCpwdInProperty(){
				document.getElementById("cpwd").style.color = "yellow";
			}

			function changeCpwdOutProperty(){
				document.getElementById("cpwd").style.color = "white";
			}

			function changeCityInProperty(){
				validatePass();
				document.getElementById("city").style.color = "yellow";
			}

			function changeCityOutProperty(){
				document.getElementById("city").style.color = "white";
			}

			function changeGenderInProperty(){
				validatePass();
				document.getElementById("gen").style.color = "yellow";
			}

			function changeGenderOutProperty(){
				document.getElementById("gen").style.color = "white";
			}
			function validatePass(){
				var x = document.getElementById("pwdt").value;
				var y = document.getElementById("cpwdt").value;
				if(x != y){
					window.alert("password does not match");
					document.getElementById("cpwdt").style.background = "red";
					document.getElementById("pwdt").style.background = "red";
				}
				else{

					document.getElementById("cpwdt").style.background= "white";
					document.getElementById("pwdt").style.background = "white";
				}
			}

			function changeMobileInProperty(){
				
				document.getElementById("mb").style.color = "yellow";
			}

			function changeMobileOutProperty(){
				document.getElementById("mb").style.color = "white";
			}