# SDL Input Joystick for LZDoom v3.88b (SIJL) for RetroPie  
![lzdoom-sijl.png](https://raw.githubusercontent.com/RapidEdwin08/sijl/3.88b/lzdoom-sijl.png)  

Add support for SDL Input from Joystick in Menus eliminating the need for a Keyboard.  
Additionally includes Pre-Configured Joypad Mappings + Raspberry Pi specific Tweaks  
**NOTE:** *You must COMPLIE LZDOOM yourself, the Menu Script just helps you load the DIFFs*  

This isn't really new, it was started a long time ago under this topic:  
*Zdoom and Gampad Fully Working in MENU with NO KEYBOARD*  
This is just Updated [rpi_fixes.diff] and slightly tweaked [lzdoom.sh] for lzdoom  

# How To  
1- Use [lzdoom-sijl.sh] Menu driven Script to assist with [sh/diff] files placement.  
2- **Compile/Install [lzdoom] from [RetroPie-Setup]:**  
0ptional Packages -> Ports -> lzdoom -> *INSTALL FROM SOURCE*  
When Compiled from Source [lzdoom.ini] will populate your Selected Joy Pad Bindings by *Default*  

# Installation  
Can be ran from retropiemenu:  

```bash
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/3.88b/lzdoom-sijl.sh -P ~/RetroPie/retropiemenu
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/3.88b/lzdoom-sijl.png -P ~/RetroPie/retropiemenu/icons
```
0r Can be ran manually from any directory:  
```bash
cd ~
git clone -b 3.88b https://github.com/RapidEdwin08/sijl.git
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

# Changes to lzdoom v3.88b Source before compiling:  

***[lzdoom.sh] v3.88b RetroPie-Setup Installer Script:***  
local params=("+fullscreen 1 -config $romdir/ports/doom/lzdoom.ini")  
snd_mididevice, -2 (Timidity++)  
mkRomDir "ports/doom/mods"  

***00_sbc_tweaks.diff: (0nly Applied to rPi/arm)***  
cl_rockettrails, 0  
r_maxparticles, 2500 (Lowered from 4000)  

***01_sijl_tweaks.diff:***  
~~CNTRLMNU_OPEN_MAIN = "Open Main Menu";~~ (No Longer Needed in v3.88b)  
use_joystick, true  

***03_Preferences.diff:***  
am_colorset, 1 (Traditional Doom)  
~~cl_run, false (Always Run?)~~  
st_scale, 2  
Crosshair (Cross 1 Green)  
save_dir=$DOOMWADDIR  
disableautosave=2'  

***02_JoyMappings_0SFA.diff:*** *(Neutral Axes - Multiple D-Pad Support - 0ut-0f-Box Config for 8+Button JoyPads - togglemap @Joy9)*  
const EJoyAxis SDLInputJoystick::DefaultAxes[5] = {JOYAXIS_Yaw, JOYAXIS_Forward, JOYAXIS_None, JOYAXIS_None, JOYAXIS_None};  
Joy1 +jump  
Joy2 +use  
Joy3 +attack  
Joy4 weapnext  
Joy5 +moveleft  
Joy6 +moveright  
Joy7 "toggle cl_run"  
Joy8 menu_main  
Joy9 togglemap  
  
// D-Pad Bindings Hat  
POV1Up +forward  
POV1Down +back  
POV1Left +left  
POV1Right +right  
  
**0ptional:**
*You can Tweak the [02_JoyMappings_CUSTOM.diff] file, just make sure to maintain the same number of +//Lines #80+ #81Empty.*  

***SOURCES:***
[https://github.com/drfrag666/gzdoom](https://github.com/drfrag666/gzdoom/releases/tag/3.88b)  
[https://github.com/RetroPie/RetroPie-Setup/tree/master/scriptmodules/ports/lzdoom](https://github.com/RetroPie/RetroPie-Setup/blob/master/scriptmodules/ports/lzdoom.sh)  
