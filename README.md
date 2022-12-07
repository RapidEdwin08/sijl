# SDL Input Joystick for LZDoom v3.87c (SIJL) for RetroPie  
![lzdoom-sijl.png](https://raw.githubusercontent.com/RapidEdwin08/sijl/main/lzdoom-sijl.png)  

Add support for SDL Input from Joystick in Menus eliminating the need for a Keyboard.  
Additionally includes Pre-Configured Joypad Mappings + Raspberry Pi specific Tweaks  
**NOTE:** *You must COMPLIE LZDOOM yourself, the Menu Script just helps you load the DIFFs*  

This isn't really new, it was started a long time ago under this topic:  
*Zdoom and Gampad Fully Working in MENU with NO KEYBOARD*  
This is just Updated [rpi_fixes.diff] and slightly tweaked [lzdoom.sh] for lzdoom v3.87c  

# Installation  
1- Use [lzdoom-sijl.sh] Menu driven Script to assist with [sh/diff] files placement.  
2- **Compile/Install [lzdoom] from [RetroPie-Setup]:**  
0ptional Packages -> Ports -> lzdoom -> *INSTALL FROM SOURCE*  

Can be ran from retropiemenu:  

```bash
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/lzdoom-sijl.sh -P ~/RetroPie/retropiemenu
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/lzdoom-sijl.png -P ~/RetroPie/retropiemenu/icons
```
0r Can be ran manually from any directory:  
```bash
cd ~
git clone https://github.com/RapidEdwin08/sijl.git
sudo chmod 755 ~/sijl/lzdoom-sijl.sh
cd ~/sijl && ./lzdoom-sijl.sh
```
0ptionally you can Add an Entry to retropiemenu [gamelist.xml]:  
```
	<game>
		<path>./lzdoom-sijl.sh</path>
		<name>[lzdoom] SIJL</name>
		<desc>INSTALL/REMOVE [lzdoom-sijl] for [RetroPie].</desc>
		<image>/home/pi/RetroPie/retropiemenu/icons/lzdoom-sijl.png</image>
	</game>
```

# Changes to lzdoom v3.87c Source before compiling:  

***[lzdoom.sh] v3.87c RetroPie-Setup Installer Script:***  
local params=("+fullscreen 1 -config $romdir/ports/doom/lzdoom.ini")  
snd_mididevice, -2 (Timidity++)  
mkRomDir "ports/doom/mods"  

***00_sbc_tweaks.diff: (0nly Applied to rPi/Odroid)***  
cl_rockettrails, 0  
r_maxparticles, 3000 (Lowered from 4000)  

***01_sijl_tweaks.diff:***  
CNTRLMNU_OPEN_MAIN = "Open Main Menu";  
use_joystick, true  

***03_Preferences.diff:***  
am_colorset, 1 (Traditional Doom)  
cl_run, false (Always Run?)  
st_scale, 2  
Crosshair (Cross 1 Green)  
save_dir=$DOOMWADDIR  
disableautosave=2'  

***02_JoyMappings.diff:*** *(0ne-Size-Fits-All)*  
const EJoyAxis SDLInputJoystick::DefaultAxes[5] = {JOYAXIS_Yaw, JOYAXIS_Forward, JOYAXIS_None, JOYAXIS_None, JOYAXIS_None};  
Joy1 +jump   (doublebind +flyup)  
Joy2 +use    (doublebind +invuse)  
Joy3 +strafe (doublebind +crouch)   
Joy4 +speed  (doublebind +flydown)  
Joy5 +weapprev (doublebind invprev)  
Joy6 +weapnext (doublebind invnext)  
Joy7 +altattack (doublebind land)  
Joy8 +attack    (+map_zoom  1.2)  
Joy9 +togglemap  
Joy10 ***menu_main***  
Joy11 +toggle cl_run  
Joy12 +speed  
Joy13 +centerview (doublebind showpop 1)  
Joy14 +forward  
Joy15 +back  
Joy16 +left  
Joy17 +right  
POV1Up +forward  
POV1Down +back  
POV1Left +left  
POV1Right +right  

**0ptional:**
The [02_JoyMappings.diff] is configured for 0ne-Size-Fits-All by Default.  
*You can Tweak the [02_JoyMappings_CUSTOM.diff] file, just make sure to maintain the same number of //Lines.*  

**NOTE:** If you don't want to use the Menu driven script, Simply COPY the Modified [lzdoom.sh] RetroPie-Setup Script + [sijl.diff] files to:  
~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh  
~/RetroPie-Setup/scriptmodules/ports/lzdoom/*.diff  
Then proceed to Compile/Install [lzdoom] from [RetroPie-Setup] -> *INSTALL FROM SOURCE*  

***SOURCES:***
[https://github.com/drfrag666/gzdoom](https://github.com/drfrag666/gzdoom/releases/tag/3.87c)  
[https://github.com/RetroPie/RetroPie-Setup/tree/master/scriptmodules/ports](https://github.com/RetroPie/RetroPie-Setup/blob/master/scriptmodules/ports/lzdoom.sh)  
