var Timer = function() {
    let interval;
}


Timer.prototype = {
    start: function() {
        var i = 0;
        interval = setInterval(function() {
            console.log(++i);
        }, 1000);
    },
    stop: function() {
        clearInterval(interval);
    }
}

var timer = new Timer();
timer.start();
timer.stop();