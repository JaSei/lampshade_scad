# lampshades models

My lampshade on the Ikea lamp is similar to [HEKTOGRAM](https://www.ikea.com/cz/cs/p/hektogram-stojaci-cteci-lampa-stribrna-bila-80477710/) was broken. As a owner of 3D printing I tried to make new lapmshade.

I have two versions of lampshades; both are made in amazing [OpenSCAD](https://openscad.org) and are fully customizable.

The first model which I made is `lampshade_conical.scad`. That was the easier one. But I wanted to have the lampshade more curved, so I did the second model, `lampshade_curved.scad`.

Configuration of the `lampshade_conical` is pretty simple, and the second is a little bit complex - you need to play with `curved_factor` to find a proper design and height.

And btw. I lost the nut for the lampshade.

My first models contain nuts as part of lampshade, but it wasn't a good design, so I made a separate `./nut.scad` again - fully customizable.

Thanks to decision to separate lampshade and nut (the original set up of the lamp btw.) I'm fully flexible.

I wish you a lot of fun with modeling (and printing).

## how to install dependencies for nut?
I use [threadlib](https://github.com/adrianschlatter/threadlib)

you need to install (download or checkout) to the [OpenSCAD library folder](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Libraries)
those repositories:
* [threadlib](https://github.com/adrianschlatter/threadlib)
* [scad-utils](https://github.com/openscad/scad-utils)
* [list-compohension](https://github.com/openscad/list-comprehension-demos)
* [thread_profile.scad](https://github.com/MisterHW/IoP-satellite/blob/master/OpenSCAD%20bottle%20threads/thread_profile.scad)
