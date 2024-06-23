# SDL Input Joystick for GZDoom v4.12.2 for RetroPie  
*SDL Input Joystick for LZDoom **(SIJL)** has moved to GZDoom*  
***SIJL** will retain it's Name + Older LZDoom Branches for now*  
![gzdoom-sijl.png](https://raw.githubusercontent.com/RapidEdwin08/sijl/4.12.2/gzdoom-sijl.png)  

Add support for SDL Input from Joystick in Menus eliminating the need for a Keyboard.  
Additionally includes Pre-Configured Joypad Mappings + Raspberry Pi specific Tweaks  
**NOTE:** *You must COMPLIE GZDOOM yourself, the Menu Script just helps you load the DIFFs*  

This isn't really new, it was started a long time ago under this topic:  
*Zdoom and Gampad Fully Working in MENU with NO KEYBOARD*  
This is just Updated [rpi_fixes.diff] and slightly tweaked [gzdoom.sh] for gzdoom  

# How To  
1- Use [gzdoom-sijl.sh] Menu driven Script to assist with [sh/diff] files placement.  
2- **Compile/Install [gzdoom] from [RetroPie-Setup]:**  
0ptional Packages -> Ports -> gzdoom -> *INSTALL FROM SOURCE*  
When Compiled from Source [gzdoom.ini] will populate your Selected Joy Pad Bindings by *Default*  

# Installation  
If you want 1-Run-N-Done:
```bash
curl -sSL https://raw.githubusercontent.com/RapidEdwin08/sijl/4.12.2/gzdoom-sijl.sh  | bash
```

If you want to Put the Install Script in the retropiemenu [+Icon]:  

```bash
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/4.12.2/gzdoom-sijl.sh -P ~/RetroPie/retropiemenu
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/4.12.2/gzdoom-sijl.png -P ~/RetroPie/retropiemenu/icons
```

0ptionally you can Add an Entry [+Icon] to your retropiemenu [gamelist.xml]:  
*Example Entry:*  
```
	<game>
		<path>./gzdoom-sijl.sh</path>
		<name>[gzdoom] SIJL</name>
		<desc>Configure [gzdoom-sijl] for [RetroPie].</desc>
		<image>/home/pi/RetroPie/retropiemenu/icons/gzdoom-sijl.png</image>
	</game>
```

If you want to GIT it All:  
```bash
cd ~
git clone -b 4.12.2 https://github.com/RapidEdwin08/sijl.git
chmod 755 ~/sijl/gzdoom-sijl.sh
cd ~/sijl && ./gzdoom-sijl.sh

```

# Changes to gzdoom v4.12.2 Source before compiling:  

***[gzdoom.sh] v4.12.2 RetroPie-Setup Installer Script:***  
local params=("+fullscreen 1 -config $romdir/ports/doom/gzdoom.ini -savedir $romdir/ports/doom/gzdoom-saves")  
+gl_maplightmode 8 (Software)  
snd_mididevice, -1 (Fluidsynth)  
mkRomDir "ports/doom/mods"  
mkRomDir "ports/doom/gzdoom-saves"  

***00_sbc_tweaks.diff: (0nly Applied to rPi/arm)***  
cl_rockettrails, 0  
r_maxparticles, 2500  

***01_sijl_tweaks.diff:***  
use_joystick, true  
showendoom, 0  

***03_Preferences.diff:***  
am_colorset, 1 (Traditional Doom)  
st_scale, 2  
uiscale, 2  
crosshair, 2  
crosshairhealth, 2  
disableautosave, 2  
simpleoptions, false'  

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
*You can Tweak the [02_JoyMappings_CUSTOM.diff] file, just make sure to maintain the same number of +//Lines #115+ #116Empty.*  

***SOURCES:***
[https://github.com/ZDoom/gzdoom](https://github.com/ZDoom/gzdoom/tree/g4.12.2)  
[https://github.com/RetroPie/RetroPie-Setup/tree/master/scriptmodules/ports/gzdoom](https://github.com/RetroPie/RetroPie-Setup/blob/master/scriptmodules/ports/gzdoom.sh)  
