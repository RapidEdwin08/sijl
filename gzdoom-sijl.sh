#!/usr/bin/env bash
# https://github.com/RapidEdwin08/sijl
version=202506
ZDversion=4.14.2
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
echo '       | \   |_\|/_|  .`,``A``,  |___| ,``A``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /   x   \ JOY??/   x   \  `-._____.-`   |   '
echo '       |               | Axis? |------| Axis? |                |   '
echo '       |              /\   s   /      \   s   /\               |   '
echo '       |             /  `._?_.`        `._?_.`  \              |   '
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
echo '       | \   |_\|/_|  .`,``A``,  |___| ,``A``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /   x   \ JOY11/   x   \  `-._____.-`   |   '
echo '       |               | Axis1 |------| Axis3 |                |   '
echo '       |              /\   s   /      \   s   /\               |   '
echo '       |             /  `._2_.`        `._4_.`  \              |   '
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
echo '       | \   |_\|/_|  .`,``A``,  |___| ,``A``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /   x   \ JOY11/   x   \  `-._____.-`   |   '
echo '       |               | Axis1 |------| Axis4 |                |   '
echo '       |              /\   s   /      \   s   /\               |   '
echo '       |             /  `._2_.`        `._5_.`  \              |   '
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

xbox360aJOYpad=$(
echo ""
echo '     Axis 3/  ===  \                               /  ===  \  Axis 6 '
echo '    JOY 5 / ======= \-----------------------------/ ======= \  JOY 6 '
echo '         /   _       -----------------------------           \   '
echo '        / ,``A``,         Joy_7       Joy_8         JOY4      \   '
echo '       | /   x   \         |__|         |_:>         (_)       ;   '
echo '       | | Axis1 |   _____         _            3_JOY   JOY_2  |   '
echo '       | \   s   /  |JOY14|      ,```,          (_)       (_)  ;   '
echo '       |  `._2_.` __| /|\ |__    `._.`       _     JOY_1       |   '
echo '       | JOY10   |<--- | --->|   Joy 9    ,``A``,    (_)       |   '
echo '       |         |__  POV  __|           /   x   \             |   '
echo '       |      JOY12 |  |  | JOY13        | Axis4 |             |   '
echo '       |            |_\|/_|              \   s   /             |   '
echo '       |             JOY15                `._5_.`JOY11         |   '
echo '        \           /````````````````````````````\            /   '
echo '         \_________/   XBOX 360 Triggers As Axes  \__________/   '
)

sijlREFS=$(
echo ""
echo '           Compile/Install [gzdoom] from [RetroPie-Setup]: '
echo '      0ptional Packages -> Ports -> gzdoom -> *INSTALL FROM SOURCE*  '
echo ""
)

diffsREF=$(
echo '
[00_sbc_tweaks.diff]: (0nly Applied to rPi/arm)
cl_rockettrails, 0
r_maxparticles, 2500

[01_sijl_tweaks.diff]:
use_joystick, true
showendoom, 0

[03_Preferences.diff]:
am_colorset, 1 (Traditional Doom)
st_scale, 2
uiscale, 2
con_scale, 4
con_scaletext, 4
crosshair, 2
crosshairhealth, 2
disableautosave, 2
simpleoptions, false'
)

xpadPATCHinfo=$(
echo '
                        *Deprecated 202406*
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
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '# SDL Input Joystick for LZDoom' ; echo $?)" == '0' ]; then
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_0SFA.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$osfa8JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_8Button.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$snes8JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_N64.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$n64JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_PS2.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$ps2JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_PS34.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$ps34JOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_PS34MKX.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$mkxJOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_XBOX360_TriggerAxis' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$xbox360aJOYpad; fi
	if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_CUSTOM.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$customJOYpad; fi
fi

# Confirm Configurations
confLZJOY=$(dialog --no-collapse --title "SDL Input Joystick for GZDoom v$ZDversion [sijl] by: RapidEdwin08 [$version]" \
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
		--menu "                          ? ARE YOU SURE ?              $sijlREFS $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' ) $lineDIV  RetroPie Setup -> Manage Packages -> Manage driver packages -> xpad $(cat ~/RetroPie-Setup/scriptmodules/supplementary/xpad.sh | grep '01_enable_leds' | awk '{$1=$1};1' )" 25 75 20 \
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
	echo '      [gzdoom] Files: ~/RetroPie-Setup/scriptmodules/ports  '
	echo ""
	echo "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' )"
	echo ""
	echo '============[DIFFs]============================{gzdoom.sh}============'
	echo "      00_sbc_tweaks.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/00_sbc_tweaks.diff ]; then echo "???"; fi)                    gzdoom.sh $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh ]; then echo "???"; fi)"
	echo "      01_sijl_tweaks.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/01_sijl_tweaks.diff ]; then echo "???"; fi)                   gzdoom.sh.b4sijl $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh.b4sijl ]; then echo "???"; fi)"
	echo "      03_Preferences.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/03_Preferences.diff ]; then echo "???"; fi)"
	echo ""
	echo "      02_JoyMappings_0SFA.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_0SFA.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_8Button.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_8Button.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_CUSTOM.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_CUSTOM.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_N64.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_N64.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_PS2.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS2.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_PS34.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS34.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_PS34MKX.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS34MKX.diff ]; then echo "???"; fi)                           "
	echo "      02_JoyMappings_XBOX360_TriggerAxis.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_XBOX360_TriggerAxis.diff ]; then echo "???"; fi)                           "
	echo "======================================================================"
	echo ""
	)
	
	dialog --no-collapse --title "SDL Input Joystick for GZDoom [sijl] REFERENCES" --ok-label Back --msgbox "$sijlREFS $diffSIJLsh $diffsREF $lineDIV $snes8JOYpad $lineDIV $n64JOYpad $lineDIV $ps2JOYpad $lineDIV $ps34JOYpad $lineDIV $mkxJOYpad $lineDIV $xbox360aJOYpad"  25 75
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

# IF [gzdoom.sh] NOT FOUND then GET IT from [RetroPie-Setup/master]
if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh ]; then wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/gzdoom.sh -P ~/RetroPie-Setup/scriptmodules/ports; fi
if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/lzma_armv7_crc.diff ]; then wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/gzdoom/lzma_armv7_crc.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom; fi
if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/armv8_gcc12_fix.diff ]; then wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/gzdoom/armv8_gcc12_fix.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom; fi

if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '# SDL Input Joystick for LZDoom' ; echo $?)" == '1' ]; then
	# Backup if not exist already
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh.b4sijl ]; then mv ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh.b4sijl 2>/dev/null; fi
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom/00_sbc_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom/01_sijl_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings*.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom/03_Preferences.diff 2>/dev/null
	mkdir ~/RetroPie-Setup/scriptmodules/ports/gzdoom 2>/dev/null
	
	# Get DIFFs
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom.sh -P ~/RetroPie-Setup/scriptmodules/ports
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/00_sbc_tweaks.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/01_sijl_tweaks.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/03_Preferences.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	
	# Multiple JoyMappings Options
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_0SFA.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_8Button.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_CUSTOM.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_N64.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS2.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS34.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS34MKX.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/$sijlREPO/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_XBOX360_TriggerAxis.diff -P ~/RetroPie-Setup/scriptmodules/ports/gzdoom
	
fi

# Update before entering menu
diffSIJLsh=$(
echo ""
echo "======================================================================"
echo '      [gzdoom] Files: ~/RetroPie-Setup/scriptmodules/ports  '
echo ""
echo "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' )"
echo ""
echo '============[DIFFs]============================{gzdoom.sh}============'
echo "      00_sbc_tweaks.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/00_sbc_tweaks.diff ]; then echo "???"; fi)                    gzdoom.sh $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh ]; then echo "???"; fi)"
echo "      01_sijl_tweaks.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/01_sijl_tweaks.diff ]; then echo "???"; fi)                   gzdoom.sh.b4sijl $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh.b4sijl ]; then echo "???"; fi)"
echo "      03_Preferences.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/03_Preferences.diff ]; then echo "???"; fi)"
echo ""
echo "      02_JoyMappings_0SFA.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_0SFA.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_8Button.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_8Button.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_CUSTOM.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_CUSTOM.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_N64.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_N64.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_PS2.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS2.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_PS34.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS34.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_PS34MKX.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_PS34MKX.diff ]; then echo "???"; fi)                           "
echo "      02_JoyMappings_XBOX360_TriggerAxis.diff $(if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings_XBOX360_TriggerAxis.diff ]; then echo "???"; fi)                           "
echo "======================================================================"
echo ""
)

# FINISHED
dialog --no-collapse --title "INSTALL SDL Input Joystick for GZDoom [sijl] to RetroPie-Setup *COMPLETE!* " --ok-label Back --msgbox "$sijlREFS $diffSIJLsh $diffsREF"  25 75

mainMENU
}

removeLZJOY()
{
tput reset

# Check [gzdoom.sh] for [01_sijl_tweaks] - Remove IF Found
if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh ]; then echo '# SDL Input Joystick for LZDoom' > ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '# SDL Input Joystick for LZDoom' ; echo $?)" == '0' ]; then
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom/00_sbc_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom/01_sijl_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom/03_Preferences.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom/02_JoyMappings*.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/gzdoom -d 2>/dev/null
	if [ -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh.b4sijl ]; then
		mv ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh.b4sijl ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
	else
		# IF [gzdoom.sh] Backup NOT FOUND then GET IT from [RetroPie-Setup/master]
		wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/gzdoom.sh -P /dev/shm
		if [ -f /dev/shm/gzdoom.sh ]; then mv /dev/shm/gzdoom.sh ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh; fi
		rm /dev/shm/gzdoom.sh 2>/dev/null
	fi
fi

# FINISHED
dialog --no-collapse --title "REMOVE SDL Input Joystick for GZDoom [sijl] from RetroPie-Setup  *COMPLETE!* " --ok-label Back --msgbox "$blankJOYpad"  25 75

mainMENU
}

mappingLZJOY()
{

confLZmapping=$(dialog --no-collapse --title "SELECT [JoyMapping.diff] from [~/RetroPie-Setup/scriptmodules/ports/gzdoom]" \
		--ok-label OK --cancel-label Back \
		--menu "   [JoyMapping.diff] will be Applied during Compile of [gzdoom] $(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep '02_JoyMappings' | awk '{$1=$1};1' )" 25 75 20 \
		1 "[0ne-Size-Fits-All]" \
		2 "[8-Button] SNES" \
		3 "[N64]" \
		4 "[PS2]" \
		5 "[PS3/PS4]" \
		6 "[PS3/PS4] MKX Fight Pad" \
		7 "[XBOX360] Triggers As Axes" \
		8 "[CUSTOM]" \
		B "BACK" 2>&1>/dev/tty)

if [ "$confLZmapping" == '' ] || [ "$confLZmapping" == 'B' ]; then mainMENU; fi

if [ "$confLZmapping" == '1' ]; then
	joyMAPdiff=02_JoyMappings_0SFA.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_0SFA.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$confLZmapping" == '2' ]; then
	joyMAPdiff=02_JoyMappings_8Button.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_8Button.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$confLZmapping" == '3' ]; then
	joyMAPdiff=02_JoyMappings_N64.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_N64.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$confLZmapping" == '4' ]; then
	joyMAPdiff=02_JoyMappings_PS2.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_PS2.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$confLZmapping" == '5' ]; then
	joyMAPdiff=02_JoyMappings_PS34.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_PS34.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$confLZmapping" == '6' ]; then
	joyMAPdiff=02_JoyMappings_PS34MKX.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_PS34MKX.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$confLZmapping" == '7' ]; then
	joyMAPdiff=02_JoyMappings_XBOX360_TriggerAxis.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_XBOX360_TriggerAxis.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$confLZmapping" == '8' ]; then
	joyMAPdiff=02_JoyMappings_CUSTOM.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/applyPatch\ \"\$md\_data\/02\_JoyMappings.*/applyPatch\ \"\$md\_data\/02_JoyMappings_CUSTOM.diff\"/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_0SFA.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$osfa8JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_8Button.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$snes8JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_N64.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$n64JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_PS2.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$ps2JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_PS34.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$ps34JOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_PS34MKX.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$mkxJOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_XBOX360_TriggerAxis' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$xbox360aJOYpad; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep -q '02_JoyMappings_CUSTOM.diff' ; echo $?)" == '0' ]; then pijoysdlLOGOmenu=$customJOYpad; fi

dialog --no-collapse --title "SELECT [$joyMAPdiff]  *COMPLETE!* " --ok-label Back --msgbox "$sijlREFS $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' ) $lineDIV $pijoysdlLOGOmenu $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom/$joyMAPdiff | grep "^+const EJoyAxis" | cut -d "{" -f2- | rev | cut -c 3- | rev) $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom/$joyMAPdiff | tail -n 52)"  25 75
mappingLZJOY
}

preferencesLZJOY()
{

confLZprefs=$(dialog --no-collapse --title "SELECT [Preferences.diff] from [~/RetroPie-Setup/scriptmodules/ports/gzdoom]" \
		--ok-label OK --cancel-label Back \
		--menu "   [Preferences.diff] will be Applied during Compile of [gzdoom] $(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep '03_Preferences' | awk '{$1=$1};1' )" 25 75 20 \
		1 "[ENABLE]  Preferences.diff" \
		2 "[DISABLE] Preferences.diff" \
		B "BACK" 2>&1>/dev/tty)

if [ "$confLZprefs" == '' ] || [ "$confLZprefs" == 'B' ]; then mainMENU; fi

if [ "$confLZprefs" == '1' ]; then
	joyMAPdiff=03_Preferences.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/#applyPatch\ \"\$md\_data\/03\_Preferences.*/applyPatch\ \"\$md\_data\/03_Preferences.diff\"\ #ENABLED/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

if [ "$confLZprefs" == '2' ]; then
	joyMAPdiff=03_Preferences.diff
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/gzdoom/"$joyMAPdiff" ]; then joymapDIFFmissing; fi
	sed -i 's/#applyPatch\ \"\$md\_data\/03\_Preferences.*/applyPatch\ \"\$md\_data\/03_Preferences.diff\"\ #ENABLED/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
	sed -i 's/applyPatch\ \"\$md\_data\/03\_Preferences.*/#applyPatch\ \"\$md\_data\/03_Preferences.diff\"\ #DISABLED/g' ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh
fi

dialog --no-collapse --title "TOGGLE [$joyMAPdiff]  *COMPLETE!* " --ok-label Back --msgbox "$sijlREFS $lineDIV $(cat ~/RetroPie-Setup/scriptmodules/ports/gzdoom.sh | grep 'applyPatch' | awk '{$1=$1};1' ) $lineDIV $diffsREF"  25 75
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
dialog --no-collapse --title " [~/RetroPie-Setup/scriptmodules/ports/gzdoom/*.diff] " --ok-label CONTINUE --msgbox "["$joyMAPdiff"] MISSING...   INSTALL [SIJL] FIRST?..."  25 75
mainMENU
}

mainMENU
tput reset
exit 0
