# SDL Input Joystick for UZDoom v4.14.3 for RetroPie  
*SDL Input Joystick for LZDoom **(SIJL)** has moved to UZDoom*  
***SIJL** will retain it's Name + Older LZDoom/GZDoom Branches*  
![uzdoom-sijl.png](https://raw.githubusercontent.com/RapidEdwin08/sijl/4.14.3/uzdoom-sijl.png)  

Add support for SDL Input from Joystick in Menus eliminating the need for a Keyboard.  
Additionally includes Pre-Configured Joypad Mappings + SBC specific Tweaks  
**NOTE:** *You must COMPLIE UZDOOM yourself, the Menu Script just helps you load the DIFFs*  

This isn't really new, it was started a long time ago under this topic:  
*Zdoom and Gampad Fully Working in MENU with NO KEYBOARD*  
This is just Updated [joypad_fixes.diff] and slightly tweaked [uzdoom.sh] for uzdoom  

# How To  
1- Use [uzdoom-sijl.sh] Menu driven Script to assist with [sh/diff] files placement.  
2- **Compile/Install [uzdoom] from [RetroPie-Setup]:**  
0ptional Packages -> Ports -> uzdoom -> *INSTALL FROM SOURCE*  
Loading any/all IWADs will now populate [uzdoom.ini] with your Selected Joy Pad Bindings by *Default*  

# Installation  
If you want 1-Run-N-Done:
```bash
curl -sSL https://raw.githubusercontent.com/RapidEdwin08/sijl/4.14.3/uzdoom-sijl.sh  | bash
```

If you want to Put the Install Script in the retropiemenu [+Icon]:  

```bash
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/4.14.3/uzdoom-sijl.sh -P ~/RetroPie/retropiemenu
wget https://raw.githubusercontent.com/RapidEdwin08/sijl/4.14.3/uzdoom-sijl.png -P ~/RetroPie/retropiemenu/icons
```

0ptionally you can Add an Entry [+Icon] to your retropiemenu [gamelist.xml]:  
*Example Entry:*  
```
	<game>
		<path>./uzdoom-sijl.sh</path>
		<name>[uzdoom] SIJL</name>
		<desc>Configure [uzdoom-sijl] for [RetroPie].</desc>
		<image>/home/pi/RetroPie/retropiemenu/icons/uzdoom-sijl.png</image>
	</game>
```

If you want to GIT it All:  
```bash
cd ~
git clone -b 4.14.3 https://github.com/RapidEdwin08/sijl.git
chmod 755 ~/sijl/uzdoom-sijl.sh
cd ~/sijl && ./uzdoom-sijl.sh

```

# Changes to [uzdoom.sh] v4.14.3 RetroPie Module Script:  
local params=("+fullscreen 1 -config $romdir/ports/doom/uzdoom.ini -savedir $romdir/ports/doom/uzdoom-saves")  
~~+gl_maplightmode 8 (Software)~~  
+gl_lightmode 1 (Software)  
snd_mididevice, -5 (Fluidsynth)  
mkRomDir "ports/doom/mods"  
mkRomDir "ports/doom/uzdoom-saves"  

# Changes to uzdoom v4.14.3 [Source] before compiling:  
***00_sbc_tweaks.diff: (0nly Applied to rPi/arm)***  
r_maxparticles, 2500  
gl_texture_filter_anisotropic, 8 / 2  

***01_sijl_tweaks.diff:***  
use_joystick, true  

***03_Preferences.diff:***  
cl_run, true  
disableautosave, 2  
hud_scale, 0  
uiscale, 3  
st_scale, 2  
con_scale, 4  
con_scaletext, 4  
crosshair, 2  
crosshairhealth, 2   

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
[https://github.com/UZDoom/UZDoom](https://github.com/UZDoom/UZDoom/wiki/Compilation#linux)  
Based on RetroPie's [gzdoom.sh](https://github.com/RetroPie/RetroPie-Setup/blob/master/scriptmodules/ports/gzdoom.sh) module script  
