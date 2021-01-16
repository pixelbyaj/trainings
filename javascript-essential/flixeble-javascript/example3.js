/* Add a method to the Function object that can be used to declare methods. */

Function.prototype.bind = function(name, fn) {
    this.prototype[name] = fn;
};

var Timer = function() {
    let interval;
};

Timer.bind('start', function() {
    var i = 0;
    interval = setInterval(function() {
        console.log(++i);
    }, 1000);
});

Timer.bind('stop', function() {
    clearInterval(interval);
});

var timer = new Timer();
timer.start();