# SDL Input Joystick for LZDoom v3.87c (SIJL) for RetroPie  
![lzdoom-sijl.png](https://raw.githubusercontent.com/RapidEdwin08/sijl/main/lzdoom-sijl.png)  

Add support for SDL Input from Joystick in Menus eliminating the need for a Keyboard.  
Additionally includes Pre-Configured Joypad Mappings + Raspberry Pi specific Tweaks  
**NOTE:** *You must COMPLIE LZDOOM yourself, the Menu Script just helps you load the DIFFs*  

This isn't really new, it was started a long time ago under this topic:  
*Zdoom and Gampad Fully Working in MENU with NO KEYBOARD*  
This is just Updated [rpi_fixes.diff] and slightly tweaked [lzdoom.sh] for lzdoom v3.87c  

# Installation  
1- **Replace RetroPie-Setup Scripts with modified ones that Support SDL Input from Joystick:**  
2- **Compile/Install [lzdoom] from [RetroPie-Setup]:**  
0ptional Packages -> Ports -> lzdoom -> *INSTALL FROM SOURCE*  

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
		<name>[lzdoom] SIJL</name>
		<desc>INSTALL/REMOVE [lzdoom-sijl] for [RetroPie].</desc>
		<image>/home/pi/RetroPie/retropiemenu/icons/lzdoom-sijl.png</image>
	</game>
```

If you don't want to use the Menu driven script, Simply COPY the Modified [lzdoom.sh] RetroPie-Setup Script + [sijl.diff] files to:  
~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh  
~/RetroPie-Setup/scriptmodules/ports/lzdoom/*.diff  
Then proceed to Compile/Install [lzdoom] from [RetroPie-Setup] -> *INSTALL FROM SOURCE*  

# Changes to lzdoom v3.87c Source before compiling:  

***Changes to [lzdoom.sh] v3.87c Installer Script before compiling:***  
local params=("+fullscreen 1 -config $romdir/ports/doom/lzdoom.ini")  
snd_mididevice, -2 (Timidity++)  
mkRomDir "ports/doom/iwads"  
mkRomDir "ports/doom/mods"  

***00_sbc_tweaks.diff:*** (0nly Applied to rPi/Odroid)  
gl_texture_usehires, false  
cl_rockettrails, 0  
r_maxparticles, 3000 (Lowered from 4000)  

***01_sijl_tweaks.diff:***  
define KEY_JOY14				(KEY_FIRSTJOYBUTTON+13)	// PS3 button  
define KEY_JOY15				(KEY_FIRSTJOYBUTTON+14)	// PS3 button  
CNTRLMNU_OPEN_MAIN				= "Open Main Menu";  
use_joystick, true  
am_colorset,			1 (Traditional Doom)  
cl_run,			false (Always Run?)  
st_scale, 2  
Crosshair (Cross 1 Green)  
save_dir=$DOOMWADDIR  
disableautosave=2  

***02_JoyMappings.diff:***  
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
Included are a handful of Additional .DIFFs that are for Specific Joypads.  
Simply rename to [02_JoyMappings.diff] before Compiling lzdoom.  
Possibly will add a Selection for these DIFFs to the Menu Script in the future...  
**NOTE:** *You can Tweak the [02_JoyMappings.diff] file, but you must maintain the number of Lines.*  
