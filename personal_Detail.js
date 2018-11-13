		
	function firstNameInProperty(){
		
		document.getElementById("fntfname").style.color = "pink";
	}
	function firstNameOutProperty(){
		document.getElementById("fntfname").style.color = "red";
	}

	function lastNameInProperty(){
		
		document.getElementById("fntlname").style.color = "pink";
	}
	function lastNameOutProperty(){
		document.getElementById("fntlname").style.color = "red";
	}

	function dobInProperty(){
		
		document.getElementById("fntdob").style.color = "pink";
	}
	function dobOutProperty(){
		document.getElementById("fntdob").style.color = "red";
	}

	function stateInProperty(){
		document.getElementById("fntstate").style.color = "pink";
	}
	function stateOutProperty(){
		document.getElementById("fntstate").style.color = "red";
	}

	function mbnoInProperty(){
		document.getElementById("fntmbno").style.color = "pink";
	}
	function mbnoOutProperty(){
		document.getElementById("fntmbno").style.color = "red";
	}

	function schoolInProperty(){
		document.getElementById("fntschool").style.color = "pink";
	}
	function schoolOutProperty(){
		document.getElementById("fntschool").style.color = "red";
	}

	function cgpaInProperty(){
		document.getElementById("fntcgpa").style.color = "pink";
	}
	function cgpaOutProperty(){
		document.getElementById("fntcgpa").style.color = "red";
	}

	function perInProperty(){
		document.getElementById("fntper").style.color = "pink";
	}
	function perOutProperty(){
		document.getElementById("fntper").style.color = "red";
	}

	function hallInProperty(){
		document.getElementById("fnthall").style.color = "pink";
	}
	function hallOutProperty(){
		document.getElementById("fnthall").style.color = "red";
	}

	function ftfnameInProperty(){
		document.getElementById("fntFtfname").style.color = "pink";
	}
	function ftfnameOutProperty(){
		document.getElementById("fntFtfname").style.color = "red";
	}

	
	function ftlnameInProperty(){
		document.getElementById("fntFtlname").style.color = "pink";
	}
	function ftlnameOutProperty(){
		document.getElementById("fntFtlname").style.color = "red";
	}


	function ftmbnoInProperty(){
		document.getElementById("fntFtmbno").style.color = "pink";
	}
	function ftmbnoOutProperty(){
		document.getElementById("fntFtmbno").style.color = "red";
	}


	function ftOccupationInProperty(){
		document.getElementById("fntFtocc").style.color = "pink";
	}
	function ftOccupationOutProperty(){
		document.getElementById("fntFtocc").style.color = "red";
	}


	function validateCgpa(){
		var cgpa = document.getElementById("cgpa").value;
		if(cgpa < 7){
			if(confirm("Are you sure about cgpa")){
				window.alert("You are not eligible for Exam");
				window.location = "Home.html";
			}
		}
		else if(cgpa > 10){
				window.alert("Invalid Cgpa");
		}

	}
	function validatePer(){
		var per = document.getElementById("per").value;
		if(per < 60){
			if(confirm("Are you sure you percentage is "+per+" ?")){
				window.alert("You are not Eleigible for exam")
				window.location =  "Home.html";
			}
		}
	}
	function genHall() {
    	var x = Math.floor(Math.random() * (20000 - 10000 + 1)) + 10000;
    	document.getElementById("hall").value = x;
	}
	function disablebtn(btn){
		document.getElementById(btn.id).disabled = true;
	}