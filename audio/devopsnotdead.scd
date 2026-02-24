s.boot

(
b = Buffer.read(s, "/Users/jessicagarson/Downloads/scream2.wav");

SynthDef("playbuf",{ arg out=0,bufnum=0, rate=1, trigger=1, startPos=0, loop=1;
Out.ar(out,
Pan2.ar(PlayBuf.ar(1,bufnum, BufRateScale.kr(bufnum)*rate, trigger, BufFrames.ir(bufnum)*startPos, loop),0.0)
)
}).add;
)

Synth(\playbuf, [\out, 0, \bufnum, b.bufnum]);

Synth(\playbuf, [\out, 0, \bufnum, b.bufnum, \rate, 200]);

Synth(\playbuf, [\out, 0, \bufnum, b.bufnum, \rate, 200000]);


SynthDef(\loudWhiteNoise, {
    var noise = WhiteNoise.ar();
    var loudNoise = noise * 2090.0;
    Out.ar(0, loudNoise ! 2);
}).add;

x = Synth(\loudWhiteNoise)


SynthDef(\brownI, {
var v = BrownNoise.ar(20, 5);
    var b = v * 200.0;
    Out.ar(0, b ! 2);
}).add;

y = Synth(\brownI);

y.free
x.free