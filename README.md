# SDLInputJoystick for LZDoom v3.87c (SIJL)  
![lzdoom-sijl.png](https://raw.githubusercontent.com/RapidEdwin08/sijl/main/lzdoom-sijl.png)  

Add support for SDL Input from Joystick in Menus eliminating the need for a Keyboard.  
Additionally includes Pre-Configured Joypad Mappings + Raspberry Pi specific Tweaks  
**NOTE:** *You must COMPLIE LZDOOM yourself, the Menu Script just helps you load the DIFFs*  

This isn't really new, it was started a long time ago under this topic:  
*Zdoom and Gampad Fully Working in MENU with NO KEYBOARD*  
This is just Updated [rpi_fixes.diff] and slightly tweaked [lzdoom.sh] for lzdoom v3.87c  

# Installation  
1- **Replace RetroPie-Setup Scripts with modified ones that Support SDL Input from Joystick:**  
2- **Compile/Install [lzdoom] + [sijl] from [RetroPie-Setup]:**  
0ptional Packages -> Ports -> lzdoom -> *UPDATE FROM SOURCE*  

Use [lzdoom-sijl.sh] Menu driven Script to assist with [sh/diff] files placement.  
Can be ran manually from any directory:  
```bash
cd ~
git clone https://github.com/RapidEdwin08/sijl.git
sudo chmod 755 ~/sijl/lzdoom-sijl.sh
cd ~/sijl && ./lzdoom-sijl.sh
```
0r can be ran from retropiemenu:  

```bash
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/lzdoom-sijl.sh -P ~/RetroPie/retropiemenu
```
0ptionally you can Add an Entry and Icon to your retropiemenu [gamelist.xml]:  
```bash
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/lzdoom-sijl.png -P ~/RetroPie/retropiemenu/icons
```
Example Entry:  
```
	<game>
		<path>./lzdoom-sijl.sh</path>
		<name>SIJL [lzdoom]</name>
		<desc>INSTALL/REMOVE [lzdoom-sijl] for [RetroPie].</desc>
		<image>/home/pi/RetroPie/retropiemenu/icons/lzdoom-sijl.png</image>
	</game>
```

If you don't want to use the Menu driven script, Simply COPY the Modified [lzdoom.sh] RetroPie-Setup Script + [sijl.diff] files to:  
~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh  
~/RetroPie-Setup/scriptmodules/ports/lzdoom/*.diff  
Then proceed to Compile/Install [lzdoom] + [sijl] from [RetroPie-Setup]  

# diffs  
**Changes to lzdoom v3.87c Source before compiling:**  
am_colorset,			1 (Traditional Doom)  
cl_run,			false (Always Run?)  
gl_texture_usehires, false  
st_scale, 2 (HUD)  
Crosshair (Cross 1 Green)  
use_joystick, true  
cl_rockettrails, 0  
r_maxparticles, 3000 (Lowered from 4000)  
save_dir=$DOOMWADDIR  
disableautosave=2  
const EJoyAxis SDLInputJoystick::DefaultAxes[5] = {JOYAXIS_Yaw, JOYAXIS_Forward, JOYAXIS_None, JOYAXIS_None, JOYAXIS_None};  
Joy1 +jump   (doublebind +land)  
Joy2 +use    (doublebind +invuse)  
Joy3 +strafe (doublebind +invnext   
Joy4 +speed  (doublebind +crouch)  
Joy5 +weapprev (+map_zoomout)  
Joy6 +weapnext (+map_zoomin)  
Joy7 +altattack (+map_zoom -1.2)  
Joy8 +attack    (+map_zoom  1.2)  
Joy9 +togglemap  
Joy10 *menu_main*  
Joy11 +toggle cl_run  
Joy12 +speed (doublebind +up)  
Joy13 +centerview (doublebind +down)  
Joy14 +forward  
Joy15 +back  
Joy16 +left  
Joy17 +right  
POV1Up +forward  
POV1Down +back  
POV1Left +left  
POV1Right +right  

**Changes to lzdoom v3.87c Installer Script before compiling:**  
local params=("+fullscreen 1 -config $romdir/ports/doom/lzdoom.ini")  
snd_mididevice, -2 (Timidity++)  
mkRomDir "ports/doom/mods"  
