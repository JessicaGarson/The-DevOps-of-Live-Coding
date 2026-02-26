// main checks
s.boot;
s.reboot;
s.quit;

ServerOptions.devices;

// changing the out device

(
s.quit;
s.options.outDevice = "MacBook Pro Speakers";   // change this based on what you want
s.boot;
)

s.quit;

/* Boot + confirm device */
(
s.boot;

s.waitForBoot({
    s.options.outDevice;   // prints active device
    s.meter;               // confirm signal
});
)