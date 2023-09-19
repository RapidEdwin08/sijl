#!/usr/bin/env bash
# https://github.com/RapidEdwin08/sijl
version=202212
ZDversion=3.88b
sijlREPO=$ZDversion

customJOYpad=$(
echo ""
echo '      JOY ?  /=====\            CUSTOM             /=====\  JOY ?  '
echo '    JOY ? ,-`/=====\`.--------------------------.-`/=====\``. JOY ? '
echo '         /   |JOY??|  `.    <-)         |=|    .`  |JOY? |   \   '
echo '        / ___| /|\ |___ \ JOY ??       JOY ?? / ___| (_) |___ \   '
echo '       / |JOY?? | JOY??| ;  __           _   ; |?_JOY   JOY_?| ;   '
echo '       | |<--- POV --->| | |__|         |_:> | |(_)       (_)| |   '
echo '       | |___   |   ___| ; JOY ??     JOY ?? ; |___JOY_?  ___| ;   '
echo '       |\    |JOY??|    /  _      ___     _   \    | (_) |    /|   '
echo '       | \   |_\|/_|  .`,`` ``,  |___| ,`` ``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /       \ JOY??/       \  `-._____.-`   |   '
echo '       |               | Axis? |------| Axis? |                |   '
echo '       |              /\   ?   /      \   ?   /\               |   '
echo '       |             /  `.___.`        `.___.`  \              |   '
echo '        \           /    JOY??          JOY??    \            /   '
echo '         \_________/                              \__________/   '
)

blankJOYpad=$(
echo ""
echo '             /=====\                               /=====\         '
echo '          ,-`/=====\`.--------------------------.-`/=====\``.      '
echo '         /   | /|\ |  `.-----------------------.`  |     |   \     '
echo '        / ___|  |  |___ \                     / ___| /_\ |___ \    '
echo '       / |      |      | ;  __           _   ; | _         _ | ;   '
echo '       | |<---     --->| | |__|         |_:> | ||_|       (_)| |   '
echo '       | |___   |   ___| ;                   ; |___       ___| ;   '
echo '       |\    |  |   |    /  _     ___     _   \    | (X) |    /|   '
echo '       | \   |_\|/_|  .`,`` ``,  |___| ,`` ``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /       \      /       \  `-._____.-`   |   '
echo '       |               |       |------|       |                |   '
echo '       |              /\       /      \       /\               |   '
echo '       |             /  `.___.`        `.___.`  \              |   '
echo '        \           /                            \            /   '
echo '         \_________/                              \__________/   '
)

osfa8JOYpad=$(
echo ""
echo '     JOY 5 /========\  8-Button 0ne-Size-Fits-All  /========\ JOY 6 '
echo '          /   _____  `----------------------------`     Joy3 \    '
echo '         /   | /|\ |                            Joy4   ,```,  \   '
echo '        / ___|  |  |__                          ,```,  `._.`   \   '
echo '       ; |      |      |    Joy_7     Joy_8     `._.`          ;   '
echo '       | |<--- POV --->|      / /       / /             Joy2   |   '
echo '       | |___   |   ___|     /_/       /_/       Joy1   ,```,  ;   '
echo '       |     |  |  |                             ,```,  `._.`  |   '
echo '       |     |_\|/_|                             `._.`         |   '
echo '       |                /`````````````````````\                |   '
echo '       |               /  PLACEMENT MAY VARY   \               |   '
echo '        \             /                         \             /   '
echo '         \___________/                           \___________/   '
)

snes8JOYpad=$(
echo ""
echo '     JOY 5 /========\         8-Button SNES       /========\ JOY 6 '
echo '          /   _____  `----------------------------`     Joy3 \    '
echo '         /   | /|\ |                            Joy4   ,```,  \   '
echo '        / ___|  |  |__                          ,```,  `._.`   \   '
echo '       ; |      |      |    Joy_7     Joy_8     `._.`          ;   '
echo '       | |<--- POV --->|      / /       / /             Joy2   |   '
echo '       | |___   |   ___|     /_/       /_/       Joy1   ,```,  ;   '
echo '       |     |  |  |                             ,```,  `._.`  |   '
echo '       |     |_\|/_|                             `._.`         |   '
echo '       |                /`````````````````````\                |   '
echo '       |               /  PLACEMENT MAY VARY   \               |   '
echo '        \             /                         \             /   '
echo '         \___________/                           \___________/   '
)

androidpcps3JOYpad=$(
echo ""
echo '      JOY 9  /=====\         Android/PC/PS3        /=====\  JOY 10  '
echo '    JOY 7 ,-`/=====\`.--------------------------.-`/=====\``. JOY 8 '
echo '         /   | /|\ |  `.    <-)         |=|    .`  |JOY5 |   \   '
echo '        / ___|  |  |___ \ WebBack      Apps   / ___| /_\ |___ \   '
echo '       / |      |      | ;  __           _   ; |4_JOY   JOY_2| ;   '
echo '       | |<--- POV --->| | |__|         |_:> | ||_|       (_)| |   '
echo '       | |___   |   ___| ; JOY 11     JOY 12 ; |___JOY_1  ___| ;   '
echo '       |\    |  |  |    /  _      ___     _   \    | (X) |    /|   '
echo '       | \   |_\|/_|  .`,`` ``,  |___| ,`` ``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /       \      /       \  `-._____.-`   |   '
echo '       |               | Axis1 |------| Axis3 |                |   '
echo '       |              /\   2   /      \   4   /\               |   '
echo '       |             /  `.___.`        `.___.`  \              |   '
echo '        \           /    JOY14          JOY15    \            /   '
echo '         \_________/                              \__________/   '
)

n64JOYpad=$(
echo ""
echo '      JOY 5 /======\      N64 Z-Axis Z-Trigger      /======\ JOY 6 '
echo '          ,- _____  `------------------------------` JOY_1 `~      '
echo '         /  | /|\ |                                    (_)    \    '
echo '        /___|  |  |___          Joy10            JOY_4  JOY_2  \   '
echo '       /|      |      |         ,```,       Joy9   (_)    (_)  ;   '
echo '       ||<--- POV --->|         `._.`        ,```,   JOY_3     |   '
echo '       ||___   |   ___|           _          `._.`     (_)     ;   '
echo '       |    |  |  |            ,`` ``,            Joy7         |   '
echo '       |    |_\|/_| /```````\ /       \ /```````\  ,```,       |   '
echo '       |           |         || Axis1 ||         | `._.`       |   '
echo '       |           |         |\   2   /|         |             |   '
echo '       |           |         | `. _ .` |         |             |   '
echo '       |           |         | Joy_ 8  |         |             |   '
echo '        \          /         \   |=|   /         \            /   '
echo '         \________/           \__|Z|_ /           \__________/   '
)

ps2JOYpad=$(
echo ""
echo '      JOY 7  /=====\              PS2              /=====\  JOY 8   '
echo '    JOY 5 ,-`/=====\`.--------------------------.-`/=====\``. JOY 6 '
echo '         /   | /|\ |  `.-----------------------.`  |JOY1 |   \   '
echo '        / ___|  |  |___ \                     / ___| /_\ |___ \   '
echo '       / |      |      | ;  __           _   ; |4_JOY   JOY_2| ;   '
echo '       | |<--- POV --->| | |__|         |_:> | ||_|       (_)| |   '
echo '       | |___   |   ___| ; JOY 9      JOY 10 ; |___JOY_3  ___| ;   '
echo '       |\    |  |  |    /  _      ___     _   \    | (X) |    /|   '
echo '       | \   |_\|/_|  .`,`` ``,  |___| ,`` ``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /       \ JOY11/       \  `-._____.-`   |   '
echo '       |               | Axis1 |------| Axis3 |                |   '
echo '       |              /\   2   /      \   4   /\               |   '
echo '       |             /  `.___.`        `.___.`  \              |   '
echo '        \           /    JOY12          JOY13    \            /   '
echo '         \_________/                              \__________/   '
)

ps34JOYpad=$(
echo ""
echo '      JOY 7  /=====\            PS3/PS4            /=====\  JOY 8   '
echo '    JOY 5 ,-`/=====\`.--------------------------.-`/=====\``. JOY 6 '
echo '         /   |JOY14|  `.-----------------------.`  |JOY4 |   \   '
echo '        / ___| /|\ |___ \                     / ___| /_\ |___ \   '
echo '       / |JOY16 | JOY17| ;  __           _   ; |3_JOY   JOY_2| ;   '
echo '       | |<--- POV --->| | |__|         |_:> | ||_|       (_)| |   '
echo '       | |___   |   ___| ; JOY 9      JOY 10 ; |___JOY_1  ___| ;   '
echo '       |\    |JOY15|    /  _      ___     _   \    | (X) |    /|   '
echo '       | \   |_\|/_|  .`,`` ``,  |___| ,`` ``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /       \ JOY11/       \  `-._____.-`   |   '
echo '       |               | Axis1 |------| Axis4 |                |   '
echo '       |              /\   2   /      \   5   /\               |   '
echo '       |             /  `.___.`        `.___.`  \              |   '
echo '        \           /    JOY12          JOY13    \            /   '
echo '         \_________/                              \__________/   '
)

mkxJOYpad=$(
echo ""
echo '     JOY 7 /========\                Joy9  Joy10   /========\ JOY 8 '
echo '          /   _____  `----------------/=\---/=\---`    Joy5  \    '
echo '         /   | /|\ |                            Joy4   ,```,  \   '
echo '        / ___|  |  |__           ,```,   Joy1   ,```,  `._.`   \   '
echo '       ; |      |      |         `._.`   ,```,  `._.`          ;   '
echo '       | |<--- POV --->|         Joy13   `._.`          Joy6   |   '
echo '       | |___   |   ___|                         Joy3   ,```,  ;   '
echo '       |     |  |  |                      Joy2   ,```,  `._.`  |   '
echo '       |     |_\|/_|                      ,```,  `._.`         |   '
echo '       |                                  `._.`                |   '
echo '       |                                                       |   '
echo '       |               /````````````````````````\              |   '
echo '        \             /                          \            /   '
echo '         \___________/ MKX Fight Pad For PS3/PS4  \__________/   '
)

psxJOYpad=$(
echo ""
echo '      JOY 5  /=====\              PSX              /=====\  JOY 6   '
echo '    JOY 7 ,-`/=====\`.--------------------------.-`/=====\``. JOY 8 '
echo '         /   | /|\ |  `.-----------------------.`  |JOY 1|   \   '
echo '        / ___|  |  |___ \                     / ___| /_\ |___ \   '
echo '       / |      |      | ;  __           _   ; |4_JOY   JOY_2| ;   '
echo '       | |<--- POV --->| | |__|         |_:> | ||_|       (_)| |   '
echo '       | |___   |   ___| ; JOY 9      JOY 10 ; |___JOY_3  ___| ;   '
echo '       |\    |  |  |    /        ___          \    | (X) |    /|   '
echo '       | \   |_\|/_|  .`        |___|          `.  |_____|  .` |   '
echo '       |  `-.______.-`          JOY11            `-._____.-`   |   '
echo '       |               /----------------------\                |   '
echo '       |              /                        \               |   '
echo '       |             /                          \              |   '
echo '        \           /                            \            /   '
echo '         \_________/                              \__________/   '
)

xbox360aJOYpad=$(
echo ""
echo '     Axis 3/  ===  \                               /  ===  \  Axis 6 '
echo '    JOY 5 / ======= \-----------------------------/ ======= \  JOY 6 '
echo '         /   _       -----------------------------           \   '
echo '        / ,`` ``,         Joy_7       Joy_8         JOY4      \   '
echo '       | /       \         |__|         |_:>         (_)       ;   '
echo '       | | Axis1 |   _____         _            3_JOY   JOY_2  |   '
echo '       | \   2   /  |JOY14|      ,```,          (_)       (_)  ;   '
echo '       |  `.___.` __| /|\ |__    `._.`       _     JOY_1       |   '
echo '       | JOY10   |<--- | --->|   Joy 9    ,`` ``,    (_)       |   '
echo '       |         |__  POV  __|           /       \             |   '
echo '       |      JOY12 |  |  | JOY13        | Axis4 |             |   '
echo '       |            |_\|/_|              \   5   /             |   '
echo '       |             JOY15                `.___.`JOY11         |   '
echo '        \           /````````````````````````````\            /   '
echo '         \_________/   XBOX 360 Triggers As Axes  \__________/   '
)

xbox360bJOYpad=$(
echo ""
echo '      Joy 7/  ===  \                               /  ===  \   Joy 8 '
echo '    JOY 5 / ======= \-----------------------------/ ======= \  JOY 6 '
echo '         /   _       -----------------------------           \   '
echo '        / ,`` ``,         Joy_9       Joy_10        JOY4      \   '
echo '       | /       \         |__|         |_:>         (_)       ;   '
echo '       | | Axis1 |   _____         _            3_JOY   JOY_2  |   '
echo '       | \   2   /  |JOY14|      ,```,          (_)       (_)  ;   '
echo '       |  `.___.` __|  |  |__    `._.`       _     JOY_1       |   '
echo '       | JOY12   |<--- | --->|  Joy 11    ,`` ``,    (_)       |   '
echo '       |         |__  POV  __|           /       \             |   '
echo '       |      JOY16 |  |  | JOY17        | Axis3 |             |   '
echo '       |            |_\|/_|              \   4   /             |   '
echo '       |             JOY15                `.___.`JOY13         |   '
echo '        \           /````````````````````````````\            /   '
echo '         \_________/ XBOX 360 Triggers As Buttons \__________/   '
)

sijlREFS=$(
echo ""
echo '           Compile/Install [lzdoom] from [RetroPie-Setup]: '
echo '      0ptional Packages -> Ports -> lzdoom -> *INSTALL FROM SOURCE*  '
echo ""
)

diffsREF=$(
echo '
[00_sbc_tweaks.diff]: (0nly Applied to rPi/arm)
cl_rockettrails, 0
r_maxparticles, 2500 (Lowered from 4000)

[01_sijl_tweaks.diff]:
CNTRLMNU_OPEN_MAIN = "Open Main Menu";
use_joystick, true

[03_Preferences.diff]:
am_colorset, 1 (Traditional Doom)
~~cl_run, false (Always Run?)~~
st_scale, 2
Crosshair (Cross 1 Green)
save_dir=$DOOMWADDIR
disableautosave=2'
)

xpadPATCHinfo=$(
echo '
Default [xpad] Driver contains [01_enable_leds_and_trigmapping.diff]
This Patch can cause Issues with SDL Right Stick Axis on some JoyPads

See More Here: https://github.com/RetroPie/RetroPie-Setup/issues/3379
xpad triggers_to_buttons=1 patch breaks SDL gamepad mappings #3379

DISABLE [trigmapping] IF your Right Stick Axis is not fully functional
eg. in 0ther Ports such as eduke32 tyrquake yquake2 ect...

With trigmapping Patch ENABLED the Triggers are Mapped as Buttons
With trigmapping Patch DISABLED the Triggers are Mapped as Axes
'
)

lineDIV=$(
echo ""
echo "======================================================================"
echo ""
)

mainMENU()
{
pijoysdlLOGOmenu=$blankJOYpad
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '01_sijl_tweaks.diff' ; echo $?)" == '0' ]; then
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_0SFA.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$osfa8JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_8Button.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$snes8JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_AndroidPCPS3.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$androidpcps3JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_N64.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$n64JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_PS2.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$psxJOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_PS34.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$ps34JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_PS34MKX.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$mkxJOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_PSXJoyRetro.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$psxJOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_XBOX360_TriggerAxis' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$xbox360aJOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_XBOX360_TriggerButtons' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$xbox360bJOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_CUSTOM.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$customJOYpad; fi
fi

# Confirm Configurations
confLZJOY=$(dialog --no-collapse --title "SDL Input Joystick for LZDoom v$ZDversion [sijl] by: RapidEdwin08 [$version]" \
	--ok-label OK --cancel-label EXIT \
	--menu "$pijoysdlLOGOmenu" 25 75 20 \
	J "><  SELECT [JoyMapping.diff]  ><" \
	P "><  TOGGLE [Preferences.diff]  ><" \
	S "><  OPEN [RetroPie-Setup]  ><" \
	I "><  INSTALL [sijl]  to  [RetroPie-Setup\..\ports]  ><" \
	U "><  REMOVE  [sijl] from [RetroPie-Setup\..\ports]  ><" \
	X "><  TOGGLE  [xpad] Driver TriggerButton Patch  ><" \
	R "><  REFERENCES  ><" 2>&1>/dev/tty)

if [ "$confLZJOY" == 'J' ]; then mappingLZJOY; fi
if [ "$confLZJOY" == 'P' ]; then preferencesLZJOY; fi
if [ "$confLZJOY" == 'X' ]; then xpadDRIVERpatch; fi

if [ "$confLZJOY" == 'S' ]; then
	confiRPsetup=$(dialog --no-collapse --title " RetroPie Setup -> Manage Packages" \
		--ok-label OK --cancel-label Back \
		--menu "                          ? ARE YOU SURE ?              $sijlREFS $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' ) $lineDIV  RetroPie Setup -> Manage Packages -> Manage driver packages -> xpad $(cat ~/RetroPie-Setup/scriptmodules/supplementary/xpad.sh | grep '01_enable_leds' | awk '{$1=$1};1' )" 25 75 20 \
		Y "YES OPEN [RetroPie-Setup]" \
		B "BACK" 2>&1>/dev/tty)
	if [ "$confiRPsetup" == 'Y' ]; then
		cd ~/RetroPie-Setup/ && sudo bash ~/RetroPie-Setup/retropie_setup.sh
		#sudo bash ~/RetroPie-Setup/retropie_packages.sh retropiemenu launch "/home/$USER/RetroPie-Setup/retropie_setup.sh" </dev/tty > /dev/tty
		exit 0
	fi
	mainMENU
fi

if [ "$confLZJOY" == 'R' ]; then
	# Update before entering menu
	diffSIJLsh=$(
	echo ""
	echo "======================================================================"
	echo '      [lzdoom] Files: ~/RetroPie-Setup/scriptmodules/ports  '
	echo ""
	echo "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' )"
	echo ""
	echo '============[DIFFs]============================{lzdoom.sh}============'
	echo "      00_sbc_tweaks.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/00_sbc_tweaks.diff ]; then echo "???"; fi)                    lzdoom.sh $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh ]; then echo "???"; fi)"
	echo "      01_sijl_tweaks.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_sijl_tweaks.diff ]; then echo "???"; fi)                   lzdoom.sh.b4sijl $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4sijl ]; then echo "???"; fi)"
	echo "      03_Preferences.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/03_Preferences.diff ]; then echo "???"; fi)"
	echo ""
	echo "      02_JoyMappings_0SFA.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_0SFA.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_8Button.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_8Button.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_AndroidPCPS3.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_AndroidPCPS3.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_CUSTOM.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_CUSTOM.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_N64.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_N64.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_PS2.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS2.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_PS34.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS34.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_PS34MKX.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS34MKX.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_PSXJoyRetro.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PSXJoyRetro.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_XBOX360_TriggerAxis.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_XBOX360_TriggerAxis.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_XBOX360_TriggerButtons.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_XBOX360_TriggerButtons.diff ]; then echo "???"; fi)                           "
	echo "======================================================================"
	echo ""
	)
	
	dialog --no-collapse --title "SDL Input Joystick for LZDoom [sijl] REFERENCES" --ok-label Back --msgbox "$sijlREFS $diffSIJLsh $diffsREF $lineDIV $snes8JOYpad $lineDIV $androidpcps3JOYpad $lineDIV $n64JOYpad $lineDIV $ps2JOYpad $lineDIV $ps34JOYpad $lineDIV $mkxJOYpad $lineDIV $psxJOYpad $lineDIV $xbox360aJOYpad $lineDIV $xbox360bJOYpad"  25 75
	mainMENU
fi

if [ "$confLZJOY" == 'I' ]; then
	confiSIJLinstall=$(dialog --no-collapse --title "INSTALL [sijl]  to  [~/RetroPie-Setup/scriptmodules/ports]" \
		--ok-label OK --cancel-label Back \
		--menu "                          ? ARE YOU SURE ?             " 25 75 20 \
		Y "YES INSTALL [sijl]  to  [RetroPie-Setup\..\ports]" \
		B "BACK" 2>&1>/dev/tty)
	if [ "$confiSIJLinstall" == 'Y' ]; then installLZJOY; fi
	mainMENU
fi

if [ "$confLZJOY" == 'U' ]; then
	confiSIJLremove=$(dialog --no-collapse --title "REMOVE [sijl]  from  [~/RetroPie-Setup/scriptmodules/ports]" \
		--ok-label OK --cancel-label Back \
		--menu "                          ? ARE YOU SURE ?             \n             *INTERNET CONNECTION REQUIRED* TO RE-INSTALL\n" 25 75 20 \
		Y "YES REMOVE [sijl]  from  [RetroPie-Setup\..\ports]" \
		B "BACK" 2>&1>/dev/tty)
	if [ "$confiSIJLremove" == 'Y' ]; then removeLZJOY; fi
	mainMENU
fi

tput reset
exit 0
}

installLZJOY()
{
tput reset

# Check for Internet Connection - internetSTATUS Displayed on Main Menu
wget -q --spider http://google.com
if [ ! $? -eq 0 ]; then
	# No Internet - Back to Main Menu
	dialog --no-collapse --title "               [ERROR]               " --msgbox "   *INTERNET CONNECTION REQUIRED*"  25 75
	mainMENU
fi

# IF [lzdoom.sh] NOT FOUND then GET IT from [RetroPie-Setup/master]
if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh ]; then wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/lzdoom.sh -P ~/RetroPie-Setup/scriptmodules/ports; fi

if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '01_sijl_tweaks.diff' ; echo $?)" == '1' ]; then
	# Backup if not exist already
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4sijl ]; then mv ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4sijl 2>/dev/null; fi
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/00_sbc_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_sijl_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings*.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/03_Preferences.diff 2>/dev/null
	mkdir ~/RetroPie-Setup/scriptmodules/ports/lzdoom 2>/dev/null
	
	# Get DIFFs
	if [ "$ZDversion" == "3.88b" ]; then
		if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_remove_cmake_arm_options.diff ]; then wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/lzdoom/01_remove_cmake_arm_options.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom; fi
		if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_lzma_sdk_dont_force_arm_crc32.diff ]; then wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/lzdoom/02_lzma_sdk_dont_force_arm_crc32.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom; fi
	fi
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom.sh -P ~/RetroPie-Setup/scriptmodules/ports
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/00_sbc_tweaks.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/01_sijl_tweaks.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/03_Preferences.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	
	# Multiple JoyMappings Options
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_0SFA.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_8Button.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_AndroidPCPS3.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_CUSTOM.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_N64.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS2.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS34.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS34MKX.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PSXJoyRetro.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_XBOX360_TriggerAxis.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_XBOX360_TriggerButtons.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	
fi

# Update before entering menu
diffSIJLsh=$(
echo ""
echo "======================================================================"
echo '      [lzdoom] Files: ~/RetroPie-Setup/scriptmodules/ports  '
echo ""
echo "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' )"
echo ""
echo '============[DIFFs]============================{lzdoom.sh}============'
echo "      00_sbc_tweaks.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/00_sbc_tweaks.diff ]; then echo "???"; fi)                    lzdoom.sh $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh ]; then echo "???"; fi)"
echo "      01_sijl_tweaks.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_sijl_tweaks.diff ]; then echo "???"; fi)                   lzdoom.sh.b4sijl $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4sijl ]; then echo "???"; fi)"
echo "      03_Preferences.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/03_Preferences.diff ]; then echo "???"; fi)"
echo ""
echo "      02_JoyMappings_0SFA.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_0SFA.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_8Button.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_8Button.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_AndroidPCPS3.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_AndroidPCPS3.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_CUSTOM.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_CUSTOM.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_N64.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_N64.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_PS2.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS2.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_PS34.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS34.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_PS34MKX.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS34MKX.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_PSXJoyRetro.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PSXJoyRetro.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_XBOX360_TriggerAxis.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_XBOX360_TriggerAxis.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_XBOX360_TriggerButtons.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_XBOX360_TriggerButtons.diff ]; then echo "???"; fi)                           "
echo "======================================================================"
echo ""
)

# FINISHED
dialog --no-collapse --title "INSTALL SDL Input Joystick for LZDoom [sijl] to RetroPie-Setup *COMPLETE!* " --ok-label Back --msgbox "$sijlREFS $diffSIJLsh $diffsREF"  25 75

mainMENU
}

removeLZJOY()
{
tput reset

# Check [lzdoom.sh] for [01_sijl_tweaks] - Remove IF Found
if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh ]; then echo '01_sijl_tweaks.diff' > ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '01_sijl_tweaks.diff' ; echo $?)" == '0' ]; then
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/00_sbc_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_sijl_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/03_Preferences.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings*.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom -d 2>/dev/null
	if [ -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4sijl ]; then
		mv ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4sijl ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
	else
		# IF [lzdoom.sh] Backup NOT FOUND then GET IT from [RetroPie-Setup/master]
		wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/lzdoom.sh -P /dev/shm
		if [ -f /dev/shm/lzdoom.sh ]; then mv /dev/shm/lzdoom.sh ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh; fi
		rm /dev/shm/lzdoom.sh 2>/dev/null
	fi
fi

# Cleanup LZDoom v3.88b.DIFFs if NOT v3.88b
if [ $(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q "3.88b" ; echo $?) == '1' ]; then
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_remove_cmake_arm_options.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_lzma_sdk_dont_force_arm_crc32.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom -d 2>/dev/null
fi

# FINISHED
dialog --no-collapse --title "REMOVE SDL Input Joystick for LZDoom [sijl] from RetroPie-Setup  *COMPLETE!* " --ok-label Back --msgbox "$blankJOYpad"  25 75

mainMENU
}

mappingLZJOY()
{

confLZmapping=$(dialog --no-collapse --title "SELECT [JoyMapping.diff] from [~/RetroPie-Setup/scriptmodules/ports/lzdoom]" \
		--ok-label OK --cancel-label Back \
		--menu "   [JoyMapping.diff] will be Applied during Compile of [lzdoom] $(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep '02_JoyMappings' | awk '{$1=$1};1' )" 25 75 20 \
		1 "[0ne-Size-Fits-All]" \
		2 "[8-Button] SNES" \
		3 "[Android/PC/PS3]" \
		4 "[N64]" \
		5 "[PS2]" \
		6 "[PS3/PS4]" \
		7 "[PS3/PS4] MKX Fight Pad" \
		8 "[PSX] JoyRetro" \
		9 "[XBOX360] Triggers As Axes" \
		10 "[XBOX360] Triggers As Buttons" \
		11 "[CUSTOM]" \
		B "BACK" 2>&1>/dev/tty)

if [ "$confLZmapping" == '' ] || [ "$confLZmapping" == 'B' ]; then mainMENU; fi

if [ "$confLZmapping" == '1' ]; then
	joyMAPdiff=02_JoyMappings_0SFA.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_0SFA.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '2' ]; then
	joyMAPdiff=02_JoyMappings_8Button.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_8Button.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '3' ]; then
	joyMAPdiff=02_JoyMappings_AndroidPCPS3.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_AndroidPCPS3.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '4' ]; then
	joyMAPdiff=02_JoyMappings_N64.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_N64.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '5' ]; then
	joyMAPdiff=02_JoyMappings_PS2.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_PS2.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '6' ]; then
	joyMAPdiff=02_JoyMappings_PS34.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_PS34.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '7' ]; then
	joyMAPdiff=02_JoyMappings_PS34MKX.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_PS34MKX.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '8' ]; then
	joyMAPdiff=02_JoyMappings_PSXJoyRetro.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_PSXJoyRetro.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '9' ]; then
	joyMAPdiff=02_JoyMappings_XBOX360_TriggerAxis.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_XBOX360_TriggerAxis.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '10' ]; then
	joyMAPdiff=02_JoyMappings_XBOX360_TriggerButtons.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_XBOX360_TriggerButtons.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZmapping" == '11' ]; then
	joyMAPdiff=02_JoyMappings_CUSTOM.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_CUSTOM.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_0SFA.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$osfa8JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_8Button.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$snes8JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_AndroidPCPS3.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$androidpcps3JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_N64.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$n64JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_PS2.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$psxJOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_PS34.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$ps34JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_PS34MKX.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$mkxJOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_PSXJoyRetro.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$psxJOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_XBOX360_TriggerAxis' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$xbox360aJOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_XBOX360_TriggerButtons' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$xbox360bJOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '02_JoyMappings_CUSTOM.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$customJOYpad; fi

dialog --no-collapse --title "SELECT [$joyMAPdiff]  *COMPLETE!* " --ok-label Back --msgbox "$sijlREFS $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' ) $lineDIV $pijoysdlLOGOmenu $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom/$joyMAPdiff | grep "^+const EJoyAxis" | cut -d "{" -f2- | rev | cut -c 3- | rev) $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom/$joyMAPdiff | tail -n 52)"  25 75
mappingLZJOY
}

preferencesLZJOY()
{

confLZprefs=$(dialog --no-collapse --title "SELECT [Preferences.diff] from [~/RetroPie-Setup/scriptmodules/ports/lzdoom]" \
		--ok-label OK --cancel-label Back \
		--menu "   [Preferences.diff] will be Applied during Compile of [lzdoom] $(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep '03_Preferences' | awk '{$1=$1};1' )" 25 75 20 \
		1 "[ENABLE]  Preferences.diff" \
		2 "[DISABLE] Preferences.diff" \
		B "BACK" 2>&1>/dev/tty)

if [ "$confLZprefs" == '' ] || [ "$confLZprefs" == 'B' ]; then mainMENU; fi

if [ "$confLZprefs" == '1' ]; then
	joyMAPdiff=03_Preferences.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/#applyPatch\ \"\$md\_data\/03\_Preferences.*/applyPatch\ \"\$md\_data\/03_Preferences.diff\"\ #ENABLED/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

if [ "$confLZprefs" == '2' ]; then
	joyMAPdiff=03_Preferences.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/#applyPatch\ \"\$md\_data\/03\_Preferences.*/applyPatch\ \"\$md\_data\/03_Preferences.diff\"\ #ENABLED/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
	sed -i 's/applyPatch\ \"\$md\_data\/03\_Preferences.*/#applyPatch\ \"\$md\_data\/03_Preferences.diff\"\ #DISABLED/g' ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
fi

dialog --no-collapse --title "TOGGLE [$joyMAPdiff]  *COMPLETE!* " --ok-label Back --msgbox "$sijlREFS $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' ) $lineDIV $diffsREF"  25 75
preferencesLZJOY
}

xpadDRIVERpatch()
{

confXPADdriver=$(dialog --no-collapse --title "TOGGLE [MAP_TRIGGERS_TO_BUTTONS] Patch for [xpad] Driver" \
		--ok-label OK --cancel-label Back \
		--menu "   $xpadPATCHinfo $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/supplementary/xpad.sh | grep '01_enable_leds' | awk '{$1=$1};1' )" 25 75 20 \
		1 "[ENABLE]  MAP_TRIGGERS_TO_BUTTONS (DEFAULT)" \
		2 "[DISABLE] MAP_TRIGGERS_TO_BUTTONS (NO trigmapping)" \
		B "BACK" 2>&1>/dev/tty)

if [ "$confXPADdriver" == '' ] || [ "$confXPADdriver" == 'B' ]; then mainMENU; fi

if [ "$confXPADdriver" == '1' ]; then
	joyMAPdiff=01_enable_leds_and_trigmapping.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/supplementary/xpad/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/01\_enable_leds.*/applyPatch\ \"\$md\_data\/01_enable_leds_and_trigmapping.diff\"/g' ~/RetroPie-Setup/scriptmodules/supplementary/xpad.sh
fi

if [ "$confXPADdriver" == '2' ]; then
	joyMAPdiff=01_enable_leds_and_trigmapping.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/supplementary/xpad/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/01\_enable\_leds.*/applyPatch\ \"\$md\_data\/01_enable_leds.diff\"\ #N0trigmapping/g' ~/RetroPie-Setup/scriptmodules/supplementary/xpad.sh
	cat ~/RetroPie-Setup/scriptmodules/supplementary/xpad/01_enable_leds_and_trigmapping.diff | head -n 11 > ~/RetroPie-Setup/scriptmodules/supplementary/xpad/01_enable_leds.diff
fi

dialog --no-collapse --title "TOGGLE [$joyMAPdiff]  *COMPLETE!* " --ok-label Back --msgbox "RetroPie Setup -> Manage Packages -> Manage driver packages -> xpad -> Re-Install from SOURCE $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/supplementary/xpad.sh | grep '01_enable_leds' | awk '{$1=$1};1' )"  25 75
xpadDRIVERpatch
}

joymapDIFFmissing()
{
dialog --no-collapse --title " [~/RetroPie-Setup/scriptmodules/ports/lzdoom/*.diff] " --ok-label CONTINUE --msgbox "["$joyMAPdiff"] MISSING...   INSTALL [SIJL] FIRST?..."  25 75
mainMENU
}

mainMENU
tput reset
exit 0

