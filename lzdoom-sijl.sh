#!/usr/bin/env bash
# https://github.com/RapidEdwin08/sijl

pijoysdlLOGO=$(
echo ""
echo '      JOY 7  /=====\                               /=====\  JOY 8   '
echo '    JOY 5 ,-`/=====\`.--------------------------.-`/=====\``. JOY 6 '
echo '         /   |JOY14|  `.-----------------------.`  |JOY 4|   \   '
echo '        / ___| /|\ |___ \                     / ___| /_\ |___ \   '
echo '       / |JOY16 | JOY17| ;  __           _   ; |3_JOY   JOY_2| ;   '
echo '       | |<--- POV --->| | |__|         |_:> | ||_|       (_)| |   '
echo '       | |___   |   ___| ; JOY 9      JOY 10 ; |___ JOY 1 ___| ;   '
echo '       |\    |JOY15|    /  _     ___      _   \    | (X) |    /|   '
echo '       | \   |_\|/_|  .`,`` ``, |___|  ,`` ``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /       \JOY11 /       \  `-._____.-`   |   '
echo '       |               | JOY12 |------| JOY13 |                |   '
echo '       |              /\       /      \       /\               |   '
echo '       |             /  `.___.`        `.___.`  \              |   '
echo '        \           /                            \            /   '
echo '         \_________/     *PLACEMENT MAY VARY*     \__________/   '
)

pijoysdlLOGOblank=$(
echo ""
echo '             /=====\                               /=====\          '
echo '          ,-`/=====\`.--------------------------.-`/=====\``.       '
echo '         /   |     |  `.-----------------------.`  |     |   \   '
echo '        / ___| /|\ |___ \                     / ___| /_\ |___ \   '
echo '       / |      |      | ;  __           _   ; | _         _ | ;   '
echo '       | |<---     --->| | |__|         |_:> | ||_|       (_)| |   '
echo '       | |___   |   ___| ;                   ; |___       ___| ;   '
echo '       |\    |  |   |    /  _    ___      _   \    | (X) |    /|   '
echo '       | \   |_\|/_|  .`,`` ``, |___|  ,`` ``, `.  |_____|  .` |   '
echo '       |  `-.______.-` /       \      /       \  `-._____.-`   |   '
echo '       |               |       |------|       |                |   '
echo '       |              /\       /      \       /\               |   '
echo '       |             /  `.___.`        `.___.`  \              |   '
echo '        \           /                            \            /   '
echo '         \_________/                              \__________/   '
)

pijoysdlREFS=$(
echo ""
echo ' Joy1 +jump   (doublebind +flyup)  Joy5 +weapprev (doublebind +invprev)  '
echo ' Joy2 +use    (doublebind +invuse) Joy6 +weapnext (doublebind +invnext)  '
echo ' Joy3 +strafe (doublebind +crouch) Joy7 +altattack (doublebind +land)   '
echo ' Joy4 +speed  (doublebind+flydown) Joy8 +attack    (+map_zoom  1.2)   '
#echo ""
echo '  Joy9 +togglemap         Joy10 *menu_main*       Joy11 +toggle cl_run'
#echo ""
echo '     Joy12 +speed        Joy13 +centerview (doublebind showpop 1)'
echo "      ------------------------------------------------------------- "
echo '                          D-Pad Bindings '
echo '              Joy14 +forward          POV1Up +forward   '
echo '              Joy15 +back             POV1Down +back   '
echo '              Joy16 +left             POV1Left +left   '
echo '              Joy17 +right            POV1Right +right   '
#echo "      ------------------------------------------------------------- "
)

sijlREFS=$(
echo ""
echo "      ------------------------------------------------------------- "
echo '           Compile/Install [lzdoom] from [RetroPie-Setup]: '
echo '      0ptional Packages -> Ports -> lzdoom -> *INSTALL FROM SOURCE*  '
echo ""
echo '       [lzdoom] Setup Files: ~/RetroPie-Setup/scriptmodules/ports  '
echo ""
)

sijlREFSremove=$(
echo ""
echo "      ------------------------------------------------------------- "
echo '        Remove/Uninstall [lzdoom] from [RetroPie-Setup]: '
echo '            0ptional Packages -> Ports -> lzdoom -> *REMOVE*  '
echo ""
echo '       [lzdoom] Setup Files: ~/RetroPie-Setup/scriptmodules/ports  '
echo ""
)

mainMENU()
{

pijoysdlLOGOmenu=$pijoysdlLOGO
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '01_sijl_tweaks.diff' ; echo $?)" == '1' ]; then pijoysdlLOGOmenu=$pijoysdlLOGOblank; fi

# Confirm Configurations
confLZJOY=$(dialog --stdout --no-collapse --title "SDL Input Joystick for LZDoom [sijl] by: RapidEdwin08 [202203]" \
	--ok-label OK --cancel-label EXIT \
	--menu "$pijoysdlLOGOmenu" 25 75 20 \
	1 "><  INSTALL [sijl]  to  [RetroPie-Setup\..\ports]  ><" \
	2 "><  REMOVE  [sijl] from [RetroPie-Setup\..\ports]  ><" \
	3 "><  OPEN [RetroPie-Setup]  ><" \
	4 "><  REFERENCES  ><")

if [ "$confLZJOY" == '1' ]; then
	confiSIJLinstall=$(dialog --stdout --no-collapse --title "INSTALL [sijl]  to  [~/RetroPie-Setup/scriptmodules/ports]" \
		--ok-label OK --cancel-label Back \
		--menu "                          ? ARE YOU SURE ?             " 25 75 20 \
		Y "YES INSTALL [sijl]  to  [RetroPie-Setup\..\ports]" \
		B "BACK")
	if [ "$confiSIJLinstall" == 'Y' ]; then installLZJOY; fi
	mainMENU
fi

if [ "$confLZJOY" == '2' ]; then
	confiSIJLremove=$(dialog --stdout --no-collapse --title "REMOVE [sijl]  from  [~/RetroPie-Setup/scriptmodules/ports]" \
		--ok-label OK --cancel-label Back \
		--menu "                          ? ARE YOU SURE ?             " 25 75 20 \
		Y "YES REMOVE [sijl]  from  [RetroPie-Setup\..\ports]" \
		B "BACK")
	if [ "$confiSIJLremove" == 'Y' ]; then removeLZJOY; fi
	mainMENU
fi

if [ "$confLZJOY" == '3' ]; then
	confiRPsetup=$(dialog --stdout --no-collapse --title " QUIT SIJL MENU AND GO TO [RetroPie-Setup] TO COMPILE [LZDOOM] FROM SOURCE" \
		--ok-label OK --cancel-label Back \
		--menu "                          ? ARE YOU SURE ?             \nRetroPie Setup -> Manage Packages -> Manage optional packages -> lzdoom\n" 25 75 20 \
		Y "YES OPEN [RetroPie-Setup]" \
		B "BACK")
	if [ "$confiRPsetup" == 'Y' ]; then
		sudo bash ~/RetroPie-Setup/retropie_setup.sh
		#sudo bash ~/RetroPie-Setup/retropie_packages.sh retropiemenu launch "/home/$USER/RetroPie-Setup/retropie_setup.sh" </dev/tty > /dev/tty
		exit 0
	fi
	mainMENU
fi

if [ "$confLZJOY" == '4' ]; then
	dialog --no-collapse --title "SDL Input Joystick for LZDoom [sijl] 10+ Button REFERENCES" --ok-label Back --msgbox "$pijoysdlLOGO $pijoysdlREFS $sijlREFS"  25 75
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

if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '01_sijl_tweaks.diff' ; echo $?)" == '1' ]; then
	# Backup if not exist already
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4joy ]; then mv ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4joy 2>/dev/null; fi
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/00_sbc_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_sijl_tweaks.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings*.diff 2>/dev/null
	mkdir ~/RetroPie-Setup/scriptmodules/ports/lzdoom 2>/dev/null
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom.sh -P ~/RetroPie-Setup/scriptmodules/ports
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/00_sbc_tweaks.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/01_sijl_tweaks.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	
	# Multiple JoyMappings Options
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_0SFA.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_8ButtonGPi.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_AndroidXBOX.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PS34.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_PSXJoyRetro.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_XBOX.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
	
	# 0ne-Size-Fits-All Neutral Axes
	cp ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings_0SFA.diff ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings.diff 2>/dev/null
fi

# FINISHED
dialog --no-collapse --title "INSTALL SDL Input Joystick for LZDoom [sijl] to RetroPie-Setup *COMPLETE!* " --ok-label Back --msgbox "$pijoysdlLOGO $sijlREFS"  25 75

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
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/02_JoyMappings*.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom -d 2>/dev/null
	if [ -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4joy ]; then
		mv ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4joy ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
	else
		wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/lzdoom.sh -P /dev/shm
		if [ -f /dev/shm/lzdoom.sh ]; then mv /dev/shm/lzdoom.sh ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh; fi
		rm /dev/shm/lzdoom.sh 2>/dev/null
	fi
fi

# FINISHED
dialog --no-collapse --title "REMOVE SDL Input Joystick for LZDoom [sijl] from RetroPie-Setup  *COMPLETE!* " --ok-label Back --msgbox "$pijoysdlLOGOblank $sijlREFSremove"  25 75

mainMENU
}

mainMENU
tput reset
exit 0
