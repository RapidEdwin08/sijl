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

***02_JoyMappings_0SFA.diff:*** *(Neutral Axes - Multiple D-Pad Support - 0ut-0f-Box Config for 8+Button JoyPads - NO Doublebinds)*  
const EJoyAxis SDLInputJoystick::DefaultAxes[5] = {JOYAXIS_Yaw, JOYAXIS_Forward, JOYAXIS_None, JOYAXIS_None, JOYAXIS_None};  
joy1 "toggle cl_run"  
joy2 +use  
joy3 +attack  
joy4 weapnext  
joy5 +moveleft  
joy6 +moveright  
joy7 togglemap  
joy8 menu_main  
joy9 +jump  
pov1up +forward  
pov1down +back  
pov1left +left  
pov1right +right  

***02_JoyMappings_8Button.diff:*** *(SNES/Generic 8-Button Neutral Axes - 0ut-0f-Box Config for 8+Button JoyPads ++Doublebinds)*  
const EJoyAxis SDLInputJoystick::DefaultAxes[5] = {JOYAXIS_Yaw, JOYAXIS_Forward, JOYAXIS_None, JOYAXIS_None, JOYAXIS_None};  
joy1 +jump *++joy1* land  
joy2 +use *++joy2* invuse  
joy3 +attack  
joy4 weapnext *++joy4* invnext  
joy5 +moveleft *++joy5* +movedown  
joy6 +moveright *++joy6* +moveup  
joy7 "toggle cl_run" *++joy7* togglemap  
joy8 menu_main  
pov1up +forward  
pov1down +back  
pov1left +left  
pov1right +right  

***02_JoyMappings_XBOX360_TriggerAxis.diff:*** *(Xbox360 Specific Axes - Triggers as Axes ++Doublebinds)*  
const EJoyAxis SDLInputJoystick::DefaultAxes[5] = {JOYAXIS_Side, JOYAXIS_Forward, JOYAXIS_None, JOYAXIS_Yaw, JOYAXIS_Pitch};  
joy1 +jump  
joy2 +use *++joy2* land  
joy3 crouch *++joy3* +movedown  
joy4 +speed *++joy4* +reload  
joy5 weapprev  
joy6 weapnext  
axis3plus +altattack  
axis6plus +attack  
joy7 togglemap  
joy8 menu_main  
joy9 "showpop 1" *(Mission Objectives)*  
joy10 +speed *++joy10* +movedown  
joy11 centerview *++joy11* +jump  
pov1up "toggle cl_run"  *++pov1up* +moveup  
pov1down invuse  
pov1left invprev  
pov1right invnext  


***02_JoyMappings_PS34.diff:*** *(PS3/PS4 Specific Axes - Triggers as Buttons ++Doublebinds)*  
const EJoyAxis SDLInputJoystick::DefaultAxes[5] = {JOYAXIS_Side, JOYAXIS_Forward, JOYAXIS_None, JOYAXIS_Yaw, JOYAXIS_Pitch};  
joy1 +jump  
joy2 +use *++joy2* land  
joy3 +speed *++joy3* +reload  
joy4 crouch *++joy4* +movedown  
joy5 weapprev  
joy6 weapnext  
joy7 +altattack  
joy8 +attack  
joy9 togglemap  
joy10 menu_main  
joy11 "showpop 1" *(Mission Objectives)*  
joy12 +speed *++joy12* +movedown  
joy13 centerview *++joy13* +jump  
pov1up "toggle cl_run" *++pov1up* +moveup  
pov1down invuse  
pov1left invprev  
pov1right invnext  

**0ptional:**
*You can Tweak the [02_JoyMappings_CUSTOM.diff] file, just make sure to maintain the same number of +//Lines #115+ #116Empty.*  

***SOURCES:***  
[https://github.com/UZDoom/UZDoom](https://github.com/UZDoom/UZDoom/wiki/Compilation#linux)  
Based on RetroPie's [gzdoom.sh](https://github.com/RetroPie/RetroPie-Setup/blob/master/scriptmodules/ports/gzdoom.sh) module script  
