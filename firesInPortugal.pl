#!/usr/bin/perl

my @A = qw(
For a 3 days I could see the fires burning on the mountains to both the east and the west and I was on a promontory in
the valley between them.  Ash had been falling like light snow.  The electricity went out.  The phone stopped working.
No Internet.  Cooked dinner by candle light. Makes one appreciate the ease of use of electricity.  It had not rained for 5 months
- since May 24th.  The grass was totally dry. Any one who wanted to start fire simply had to stand outside, drop a lighted
match to the ground and the flames would roar away. It made cooking dinner inside on gas seem rather daring when one could
just stand outside and wait to be barbecued.

The weather forecast had been predicting thunderstorms for days, but they were dry too and their lightening just started
more fires in the mountains.  Fire fighting planes overhead during the day in the pink, and grey and orange haze that was
the sky. The smell of burnt oak and eucalyptus: quite pleasant. At night the sky pink from the flames made visible by darkness.
The mountains down the valley with the wind turbines with red lights on top lost in the fog of smoke. It made me think of Los
Angeles during fire season. The fact that the Sun must run on some process other then chemical combustion.  The Duke of
Wellington's defense of Portugal during the Napoleonic wars.  The height of the trees around the village.

The fire planes have one engine and just one propeller mounted on the left wing and none such on the right - I think they
carry water in the right wing instead. They fly very low, laboring upwards as they head up to the fire, higher and faster
on the downhill return trip to the nearby lake.

I had cleared the vegetation around the house earlier in the year. The house itself is surrounded by a stone
terrace (I think for this very reason), the walls are solid stone and two feet thick and the house is set into the hill,
so downstairs against the back wall seemed safe enough if the fire broke across the river. Air quality was gradually becoming
a problem. I was slowly coming to the conclusion that this could be serious and that perhaps one should should do something or
go somewhere or start dousing the pine trees planted near the house with water while the water was still on. But if one went,
where would one go? One might get trapped in a traffic jam as people did earlier this year on a small road at night with a
fire racing up the hill towards you. Or perhaps it would rain and this would make any watering I could do pointless or deprive
people who were actually fighting a fire who really needed the water. And what would one do if one wanted a cup of tea made from
rosmarinho from the garden? One could hardly drive around all night and expect to be safe or comfortable. So in the end I did some
programming and found that the absence of all the usual pleasant distractions that one could make surprisingly good progress.

The last seen weather forecast had said thunderstorms on Saturday, but no rain came, only a few tiny drops, so fleeting, so
evanescent that they evaporated as soon as they touched the ground, so light that they would not have been noticed normally
unless one was desperate for rain.  Sunday the same. Would the rain ever arrive?  How useless the weather forecast that could not
even predict a thunderstorm correctly one day in advance? Life continued in suspended animation - something should be done but
there was nothing to be done but wait for the rain and hope that it got here before the first fire.  Finally on Monday night
after it was well and truly dark, when it seemed that we had entered a new permanent reality in which the warm wind always
carried smoke and ash and the residual scent of fire and burnt mountains, down came the rain: by morning everything was pretty
much back to normal again - the air nice and clean and the rose bush, by the front door, opening three fresh, red, rose scented buds.
);

my $searchA = grep(/^a$/i, @A);
my $searchThe = grep(/^the$/i, @A);

if ($searchA > $searchThe) {
  print "There are $searchA instances of the word, 'a', and $searchThe insances of the word, 'the'.\n";
} else {
  print "There are $searchThe instances of the word, 'the', and $searchA insances of the word, 'a'.\n";
}
