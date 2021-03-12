var helloWorldController = new WebSocket('ws://localhost:8000/HelloWorldController');

helloWorldController.onopen = function (event) {
    var name = prompt('Your name?');
    helloWorldController.send(name);
};

helloWorldController.onmessage = function (event) {
    console.log(event.data);
};
