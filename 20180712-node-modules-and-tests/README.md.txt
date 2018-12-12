User defined modules and unit tests

A module in node.js looks similar to:
---
extract form math.js
exports.add = function (x, y) { 
  return x + y; 
}; 
exports.subtract = function (x, y) { 
  return x - y; 
};

or a more complicated one, that uses other modules:

extract from http-module.js
----
function handleGetRequest(response) {
  response.writeHead(200, {'Content-Type' : 'text/plain'});
  response.end('Get action was requested');
}

function handlePostRequest(response) {
  response.writeHead(200, {'Content-Type' : 'text/plain'});
  response.end('Post action was requested');
}

function handlePutRequest(response) {
  response.writeHead(200, {'Content-Type' : 'text/plain'});
  response.end('Put action was requested');
}

function handleDeleteRequest(response) {
  response.writeHead(200, {'Content-Type' : 'text/plain'});
  response.end('Delete action was requested');
}

function handleBadRequest(response) {
  console.log('Unsupported http mehtod');
  response.writeHead(400, {'Content-Type' : 'text/plain'  });
  response.end('Bad request');
}

exports.handleRequest = function(request, response) {
  switch (request.method) {
    case 'GET':
      handleGetRequest(response);
      break;
    case 'POST':
      handlePostRequest(response);
      break;
    case 'PUT':
      handlePutRequest(response);
      break;
    case 'DELETE':
      handleDeleteRequest(response);
      break;
    default:
      handleBadRequest(response);
      break;
  }
  console.log('Request processing completed');
}

It may have many functions, still the module is free to export to the outer world just few of them, in our case the handleRequest

To use a module, one has to require an instance of it:
---extract from main.js
var http = require('http');
var port = 8180;

var httpModule = require('./modules/http-module');

http.createServer(httpModule.handleRequest).listen(8180, '127.0.0.1', () => {
  console.log('Started Node.js http server at http://127.0.0.1:8180');
});


To test a module:
1) Install nodeunit globally npm install -g nodeunit, nodeunit is not the onlychoice out there, we'll have a look at mocha later.
2) Create a unit test, it is like a module:
extract from text-math.js
---
var math = require('../modules/math');
exports.addTest = function (test) {
  test.equal(math.add(1, 1), 2);
  test.done();
};
exports.subtractTest = function (test) {
  test.equals(math.subtract(4,2), 2);
  test.done();
};

and run it with nodeunit test/test-math.js

Result will be:
nodeunit test/test-math.js   
test-math.jstest-math.js
 addTest
 subtractTest

OK: 2 assertions (5ms)

I we break it, e.g. use wrong assertation

exports.addTest = function (test) {
  test.equal(math.add(1, 1), 2);
  test.done();
};

we will get:

nodeunit test-math.js
test-math.js
 addTest
at Object.equal (/usr/lib/node_modules/nodeunit/lib/types.js:83:39)
at Object.exports.addTest (../hello-node/test/test-math.js:
(..)

AssertionError: 2 == 3
 subtractTest
FAILURES: 1/2 assertions failed (12ms)

Mocking:

We just created our Nodeunit's first unit test. However, it tests math function in a rather isolated way. 
I suppose you are wondering how we can use Nodeunit to test functions with complex arguments such as HTTP request and response, that are bound to a context. 
This is possible using so-called mock objects. 
They are a predefined version of the state of complex context-based arguments or functions, 
in objects that we want to use in our unit test in order to test the behavior of our module for the exact state of the object.
To use mock objects, we will need to install a module that supports object mocking.

non.JS is a very flexible JavaScript testing library providing functionality for mocking, stubbing, and spying on JavaScript objects. 
It is available at http://sinonjs.org and can be used with any JavaScript testing framework. 
Let's see what we need in order to test our HTTP module. 
It exports a single method, handleRequest, which takes the HTTP request and response objects as arguments. 
Based on the requested method, the module calls its internal functions to handle different requests. 
Each request handler writes a different output to the response.

To test this functionality in an isolated environment such as Nodeunit, we need mock objects, which will then be passed as arguments. 
To ensure that the module behaves as expected, we will need to have access to the data stored in those objects.

Working with mock objects
Here are the steps that need to be carried out when using mock objects:

Call the require function with sinon as a parameter and export a test function from it:

var sinon = require('sinon'); 
exports.testAPI(test){...} 
Define an API description of the method you want to mock as follows:

var api = {'methodX' : function () {},  
  'methodY' : function() {},  
  'methodZ' : function() {}}; 

Use sinon within the exported function in order to create mock objects out of the api description:

var mock = sinon.mock(api);

Set the expectations on the mock objects. Expectations are set on the mocked objects by describing how the mocked method should behave, what arguments it is supposed to take,
 and what value it is supposed to return. 
When the mocked method is called with a different state than what is described, the expectation will fail when verified later:

mock.expects('methodX').once().withArgs('xyz') 
.returns('abc'); 
api.methodX('xyz') 

The preceding sample expects that methodX gets called exactly once with the xyz argument, and it will force the method to return abc. 
The Sinon.JS module makes that possible for us.

NOTE:
The method of the description object is called and not that of the mocked object. The mocked object is used to set the expectations for the mocked method, and later to check whether those expectations have been fulfilled.


Use the mocked object in the test environment and, later, call its verify() method. 
This method will check whether the code being tested interacted correctly with mock, that is, how many times the method has been called and whether it has been called with the expected arguments. 
If any of the expectations is not met, then an error will be thrown, causing the test to fail.
The exported test function of our test module has an argument. 
That argument provides assert methods that can be used to check test conditions. 
In our example, we mocked the method to always return abc when called with the 'xyz' arguments. 
So, to complete the test, the following assert can be done, and in the end, the mock object needs to be verified:

mock.expects('methodX').once().withArgs('xyz') 
.returns('abc');           
test.equals(api.methodX('xyz'), 'abc'); 
mock.verify(); 

Let's put these steps into practice and create the following test-http-module.js file in the test directory:

extract from test-http-module.js
---
var sinon = require('sinon');
exports.handleGetRequestTest =  (test) => {
  var response = {'writeHead' : () => {}, 'end': () => {}};
  var responseMock = sinon.mock(response);
    responseMock.expects('end').once().withArgs('Get action was requested');
    responseMock.expects('writeHead').once().withArgs(200, {
      'Content-Type' : 'text/plain'});

  var request = {};
  var requestMock = sinon.mock(request);
  requestMock.method = 'GET';

  var http_module = require('../modules/http-module');
  http_module.handleRequest(requestMock, response);
  responseMock.verify();
  test.done();
};

nodeunit test/test-http-module.js 

test-http-module.js
Request processing completed
 handleGetRequestTest

OK: 0 assertions (32ms)


-----------------------------
Homework:

Create a user defined module that exports a function today();
something like:

exports.today  function {
  return Date.getYear() +'-'+ Date.getMonth() +'-'+ Date.getDay();
};

that returns the current date in format 'Hello, today is YYYY-MM-DD'
Where YYYY-MM-DD is the current date, e.g. 2018-12-12
hint on using dates in node.js https://stackoverflow.com/questions/3066586/get-string-in-yyyymmdd-format-from-js-date-object

Use this module in an http server /either express or plain http doesn't matter/ so that it serves GET request on http://localhost:30XY where 30XY is your number in class, i.e. 01, 02, 10, 23, etc...
This gives you 1pt
Create unit test for the module by mocking the today() function 
The test should pass when executed with nodeunit.

this would give one extra point, so in total 2pts.