Function.prototype.bind = function(name, fn) {
    this.prototype[name] = fn;
    return this;
};

var Timer = function() {
    let interval;
};

Timer.bind('start', function() {
    var i = 0;
    interval = setInterval(function() {
        console.log(++i);
    }, 1000);
}).bind('stop', function() {
    clearInterval(interval);
});

var timer = new Timer();
timer.start();
timer.stop();