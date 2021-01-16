var Timer = function() {
    let interval;

    this.start = function() {
        var i = 0;
        interval = setInterval(function() {
            console.log(++i);
        }, 1000);
    };

    this.stop = function() {
        clearInterval(interval);
    }
}

var timer = new Timer();
timer.start();