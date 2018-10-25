var objectDisplay = document.getElementById("objectDisplay");
//var btn = document.getElementById("btnSubmit");
var inputs = document.getElementById("inputs");
//var btn1 = document.getElementById("btnRemove");

objectsCounter = 0;

objects = [];

var addObject = (element) => {
	console.log(inputs.children);

	var div = element.parentElement;

	var key = div.children[0].value;
	var value = div.children[1].value;

	obj = {};

	obj[key] = value;

	objects.push(JSON.stringify(obj));

	objectDisplay.value = objects.toString();

	objectsCounter+=1;

	div = document.createElement("div");

	div.id = objectsCounter.toString();

	div.appendChild(document.createElement("input", {type: "text"}));
 	
	div.appendChild(document.createElement("input", {type: "text"}));

	var btn1 = document.createElement("button");

	btn1.appendChild(document.createTextNode("Submit"));

	div.appendChild(btn1);

	btn1.onclick = () => {addObject(btn1)};
	
	btn1 = document.createElement("button");

	btn1.appendChild(document.createTextNode("Remove"));

	div.appendChild(btn1);

	inputs.appendChild(div);

	btn1.onclick = () => {removeObject(btn1)};

	inputs.appendChild(div);
}

var removeObject = (element) => {
	objects = objects.splice(parseInt(element.parentElement.id), 1);
	objectDisplay.value = objects.toString();
	var id = parseInt(element.parentElement.id);

	var parent = element.parentElement.parentElement

	parent.removeChild(document.getElementById(element.parentElement.id));
}