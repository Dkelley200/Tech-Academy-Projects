function getReceipt() 
{

	var text1 = "<h3>You Ordered:</h3>";
	var runningTotal = 0;
	var sizeTotal = 0;
	var sizeArray = document.getElementsByClassName("size");
	for (var i = 0; i < sizeArray.length; i++) 
	{
		if (sizeArray[i].checked) 
		{
			var selectedSize = sizeArray[i].value;
			text1 = text1+selectedSize+"<br>";
		}
	}
		if (selectedSize === "Personal Pizza") 
		{
			sizeTotal = 6;
		} else if (selectedSize === "Medium Pizza") 
		{
			sizeTotal = 10;
		} else if (selectedSize === "Large Pizza") 
		{
			sizeTotal = 14;
		} else if (selectedSize === "Extra Large Pizza") 
		{
			sizeTotal = 16;
		}
	runningTotal = sizeTotal;
	/*-----------------------------------
	console.log(selectedSize+" = $"+sizeTotal+".00");
	console.log("size text1: "+text1);
	console.log("subtotal: $"+runningTotal+".00");
	---------------------------------------------*/
	getsauce(runningTotal,text1); 
};	
/*==================================================================*/
function getsauce(runningTotal,text1) 
{
	var sauceArray = document.getElementsByClassName("sauce");
	for (var j = 0; j < sauceArray.length; j++) 
	{
		if (sauceArray[j].checked) 
		{
			selectedSauce = sauceArray[j].value;
			text1 = text1 + selectedSauce +"<br>";
		}
	}
	
	getCheese(runningTotal, text1)
};

/*===================================================================*/

function getCheese(runningTotal,text1) 
	{
	var cheeseTotal = 0;
	var selectedCheese = [];
	var cheeseArray = document.getElementsByClassName("cheese");
	for (var j = 0; j < cheeseArray.length; j++) 
		{
			if (cheeseArray[j].checked) 
			{
				selectedCheese = cheeseArray[j].value;
			}
			if (selectedCheese === "Extra cheese") 
			{
				cheeseTotal = 3;
			}
		}
	
	text1 = text1+selectedCheese+"<br>";
	runningTotal = (runningTotal + cheeseTotal);
	getCrust(runningTotal,text1);
};


/*===================================================*/
 function getCrust(runningTotal,text1)

 {
	var crustTotal = 0;
	var selectedCrust;
	var crustArray = document.getElementsByClassName("crust");
	for (var j = 0; j < crustArray.length; j++) 
	{
		if (crustArray[j].checked)
		{
			selectedCrust = crustArray[j].value;
			text1 = text1 + selectedCrust + "<br>";
		}
		if (selectedCrust === "Cheese Stuffed Crust") 
		{
			crustTotal = 3;
		}
	}
	
	text1 = text1+selectedCrust+"<br>";
	runningTotal = (runningTotal + crustTotal);
	getExtras(runningTotal,text1);	
};
/*==================================================================*/
function getExtras(runningTotal,text1) 
{
	var extrasTotal = 0;
	var selectedExtras = [];
	var extrasArray = document.getElementsByClassName("extras");
	for (var j = 0; j < extrasArray.length; j++) {
		if (extrasArray[j].checked) 
		{
			selectedExtras.push(extrasArray[j].value);
		}
	}
	var extrasCount = selectedExtras.length;
	if (extrasCount >= 2) {
		extrasTotal = (extrasCount - 1);
	} else {
		extrasTotal = 0;
	}
	runningTotal = (runningTotal + extrasTotal);
	for (var j = 0; j < selectedExtras.length; j++) 
	{
			text1 = text1+selectedExtras[j]+"<br>";
			if (extrasCount <= 1) 
			{
				extrasCount = extrasCount - 1;
			} else if (extrasCount == 2) 
			{
				extrasCount = extrasCount - 1;
			} else 
			{
				extrasCount = extrasCount - 1;
			}
	}
	getMeat(runningTotal,text1);
};


/* ===================================================================*/

function getMeat(runningTotal,text1) 
{
	var meatTotal = 0;
	var selectedMeat = [];
	var meatArray = document.getElementsByClassName("meats");
	for (var j = 0; j < meatArray.length; j++) {
		if (meatArray[j].checked) {
			selectedMeat.push(meatArray[j].value);
			/*==console.log("selected meat item: ("+meatArray[j].value+")");==*/
			text1 = text1+meatArray[j].value+"<br>";
		}
	}
	var meatCount = selectedMeat.length;
	if (meatCount > 1) {
		meatTotal = (meatCount - 1);
	} else {
		meatTotal = 0;
	}
	runningTotal = (runningTotal + meatTotal);
	/*--------------------------------------------------
	console.log("total selected meat items: "+meatCount);
	console.log(meatCount+" meat - 1 free meat = "+"$"+meatTotal+".00");
	console.log("meat text1: "+text1);
	console.log("Purchase Total: "+"$"+runningTotal+".00");
	------------------------------------------------------*/
	document.getElementById("cart").style.opacity=1;
	document.getElementById("showText").innerHTML=text1;
	document.getElementById("totalPrice").innerHTML = "<h3>Total: <strong>$"+runningTotal+".00"+"</strong></h3>";
		
};

function clearAll() {
	document.getElementById("frmMenu").reset();
	document.getElementById("cart").style.opacity=0;
};

