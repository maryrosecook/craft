---
layout: post
title: Jan Willem Nijman, game feel
---
Alright, let’s try this.

When you fire the pistol in Nuclear Throne, first of all the Pistol sound effect plays. Then a little shell is ejected at relatively low speed (2-4 pixels per frame, at 30fps and a 320×240 resolution) in the direction where you’re aiming + 100-150 degrees offset. The bullet flies out at 16 pixels per frame, with a 0-4 degree offset to either direction.

We then kick the camera back 6 pixels from where you are aiming, and “add 4 to the screenshake”. The screenshake degenerates quickly, the total being the amount of pixels the screen can shake up, down, left or right.

Weapon kick is then set to 2, which makes the gun sprite move back just a little bit after which it super quickly slides back into place. A really cool thing we do with that is when a shotgun reloads, (which is when the shell pops out) we add some reverse weapon kick. This makes it look as if the character is reloading manually.

The bullet is circular the first frame, after that it’s more of a bullet shape. This is a simple way to pretend we have muzzle flashes.

So now we have this projectile flying. It could either hit a wall, a prop or an enemy. The props are there to add some permanence to the battles. We’d rather have a loose bullet flying and hitting a cactus (to show you that there has been a battle there) than for it to hit a wall. Filling the levels with cacti might be weird though.

If the bullet hits something it creates a bullet hit effect and plays a nice impact sound.

Hitting an enemy also creates that hit effect, plays that enemies own specific impact sounds (which is a mix of a material – meat, plant, rock or metal – getting hit and that characters own hit sound), adds some motion to the enemy in the bullet’s direction (3 pixels per frame) and triggers their ‘get hit’ animation. The get hit animation always starts with a frame white, then two frames of the character looking hit with big eyes. The game also freezes for about 10-20 milliseconds whenever you hit something.

This is just the basic shooting. So much more systems come in to play here. Enemies dying send out flying corpses that can damage other enemies, radiation flies out at just the right satisfying speed, etc. We could keep going on and on. It’s that attention to details and the relationships of all those systems that matter. You might miss an enemy and hit a radiation canister, forcing you to run into danger to grab all that exp before it expires, etc. It’s the mix of things that matters, not the things themselves. I guess what our games have is our view on what makes those values feel and play good. That’s the Vlambeer “feel”.

From a [Rock, Paper, Shotgun interview](https://www.rockpapershotgun.com/2013/10/21/interview-jan-willem-nijman-on-nuclear-thrones-feel/).
