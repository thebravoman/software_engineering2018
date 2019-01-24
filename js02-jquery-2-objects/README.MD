Objects in JavaScript

*Objects in JavaScript are associative arrays

Creating an object:
var object = {};

Adding an attribute to an object:

object["attribute1"] = "value1";
//creates object.attribute1;

Objects can nest other objects and compose complex structures:

object["innerObject"] = {};
object.innerObject["test"] = "test"; //can be accessed via: object.innerObject.test;

Deleting object attrributes:
delete object[innerObject];

In class - looking into jQuery application that dynamically composes an object with attributes set as its first siblings.

Homework: Create a frontend application that dynamically composes an object with attributes set at an arbitrary level, i.e. create a complex object 