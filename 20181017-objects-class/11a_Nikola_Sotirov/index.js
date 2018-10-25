var objectDisplay = document.getElementById("objectDisplay");
//var btn = document.getElementById("btnSubmit");
var inputs = document.getElementById("inputs");
//var btn1 = document.getElementById("btnRemove");

objectsCounter = 0;

objects = [];

var addObject = (element) => {
	var div = element.parentElement;

	var key = div.children[0].value;
	var value = div.children[1].value;

	obj = {};

	obj[key] = value;

	objects.push(JSON.stringify(obj));

	objectDisplay.value = objects.toString();

	objectsCounter++;

	div = document.createElement("div", {id: objectsCounter.toString()});

	div.appendChild(document.createElement("input", {type: "text"}));
 	
	div.appendChild(document.createElement("input", {type: "text"}));

	var btn1 = document.createElement("button");

	btn1.appendChild(document.createTextNode("Submit"));

	div.appendChild(btn1);

	btn1.onclick = () => {addObject(this)};

	inputs.appendChild(div);

	element.disabled = true;
}

var removeObject = (element) => {
	objects.splice(element.parentElement.id, 1);
	objectDisplay.value = objects.toString();
	element.parentElement.children[2].disabled = false;
}