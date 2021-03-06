Create an HTTP app (using Express/HTTP module/something else) which listens on port 20xy (xy is your class number). When a GET request comes through, the app should return a response. This response's header should specify content-type as 'application/json'. There must be a JSON object in the body. This JSON object must have one key ('studentNr') with your class number as the corresponding value.
The app must also handle POST requests. If there is a JSON object in the request which includes 'action': 'id', the response's header must specify that content-type is 'application/json'. The response must also have a body which contains your class number. If there is a JSON object in the request which includes 'whoami': 'id', the response's header must specify content-type as 'application/json' and the body should be a JSON object consisting of one key ('I am') and your id as the corresponding value.

Example of a GET response:<br>
header:<br>
{
    'content-type': 'application/json'
}
<br>body:<br>
{
    'studentNr': 10
}

Example of a POST request and response:<br>
request:<br>
    body:<br>
    {
        'action' : 'id'
    }

response:<br>
    header:<br>
    {
        'content-type': 'application/json'
    }
    <br>body:<br>
    3

Another example of a POST request and response:<br>
request:<br>
    body:<br>
    {
        'whoami': 'id'
    }

response:<br>
    header:<br>
    {
        'content-type': 'application/json'
    }
    <br>body:<br>
    {
        'I am': YZ
    }
