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
echo '   Joy1 +jump   (doublebind +land)    Joy5 +weapprev (+map_zoomout)  '
echo '   Joy2 +use    (doublebind +invuse)  Joy6 +weapnext (+map_zoomin)  '
echo '   Joy3 +strafe (doublebind +invnext  Joy7 +altattack (+map_zoom -1.2)   '
echo '   Joy4 +speed  (doublebind +crouch)  Joy8 +attack    (+map_zoom  1.2)   '
#echo ""
echo '  Joy9 +togglemap         Joy10 *menu_main*       Joy11 +toggle cl_run'
#echo ""
echo ' Joy12 +speed (doublebind +up)     Joy13 +centerview (doublebind +down)'
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
echo '        Compile/Install [lzdoom] + [sijl] from [RetroPie-Setup]: '
echo '      0ptional Packages -> Ports -> lzdoom -> *UPDATE FROM SOURCE*  '
echo ""
echo '       [lzdoom] Setup Files: ~/RetroPie-Setup/scriptmodules/ports  '
echo ""
)

sijlREFSremove=$(
echo ""
echo "      ------------------------------------------------------------- "
echo '        Remove/Uninstall [lzdoom] + [sijl] from [RetroPie-Setup]: '
echo '            0ptional Packages -> Ports -> lzdoom -> *REMOVE*  '
echo ""
echo '       [lzdoom] Setup Files: ~/RetroPie-Setup/scriptmodules/ports  '
echo ""
)

mainMENU()
{

pijoysdlLOGOmenu=$pijoysdlLOGO
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '01_rpi_fixes.diff' ; echo $?)" == '1' ]; then pijoysdlLOGOmenu=$pijoysdlLOGOblank; fi

# Confirm Configurations
confLZJOY=$(dialog --stdout --no-collapse --title "SDL Input Joystick for LZDoom [sijl] by: RapidEdwin08 [202203]" \
	--ok-label OK --cancel-label EXIT \
	--menu "$pijoysdlLOGOmenu" 25 75 20 \
	1 "><  INSTALL [sijl]  to  [RetroPie-Setup\..\ports]  ><" \
	2 "><  REMOVE  [sijl] from [RetroPie-Setup\..\ports]  ><" \
	3 "><  REFERENCES  ><")

if [ "$confLZJOY" == '1' ]; then installLZJOY; fi
if [ "$confLZJOY" == '2' ]; then removeLZJOY; fi

if [ "$confLZJOY" == '3' ]; then
	dialog --no-collapse --title "SDL Input Joystick for LZDoom [sijl] 10+ Button REFERENCES" --ok-label Back --msgbox "$pijoysdlLOGO $pijoysdlREFS $sijlREFS"  25 75
	mainMENU
fi

tput reset
exit 0
}

installLZJOY()
{
tput reset

if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '01_rpi_fixes.diff' ; echo $?)" == '1' ]; then
	# Backup if not exist already
	if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4joy ]; then mv ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4joy 2>/dev/null; fi
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_rpi_fixes.diff 2>/dev/null
	mkdir ~/RetroPie-Setup/scriptmodules/ports/lzdoom 2>/dev/null
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom.sh -P ~/RetroPie-Setup/scriptmodules/ports
	wget https://raw.githubusercontent.com/RapidEdwin08/sijl/main/RetroPie-Setup/scriptmodules/ports/lzdoom/01_rpi_fixes.diff -P ~/RetroPie-Setup/scriptmodules/ports/lzdoom
fi

# FINISHED
dialog --no-collapse --title "INSTALL SDL Input Joystick for LZDoom [sijl] to RetroPie-Setup *COMPLETE!* " --ok-label Back --msgbox "$pijoysdlLOGO $sijlREFS"  25 75

mainMENU
}

removeLZJOY()
{
tput reset

if [ ! -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh ]; then echo '01_rpi_fixes.diff' > ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh; fi
if [ "$(cat ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh | grep -q '01_rpi_fixes.diff' ; echo $?)" == '0' ]; then
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom/01_rpi_fixes.diff 2>/dev/null
	rm ~/RetroPie-Setup/scriptmodules/ports/lzdoom -d 2>/dev/null
	if [ -f ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4joy ]; then
		mv ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh.b4joy ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh
	else
		wget https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/scriptmodules/ports/lzdoom.sh -P /dev/shm
		if [ -f /dev/shm/lzdoom.sh ]; then mv /dev/shm/lzdoom.sh ~/RetroPie-Setup/scriptmodules/ports/lzdoom.sh; fi
	fi
fi

# FINISHED
dialog --no-collapse --title "REMOVE SDL Input Joystick for LZDoom [sijl] from RetroPie-Setup  *COMPLETE!* " --ok-label Back --msgbox "$pijoysdlLOGOblank $sijlREFSremove"  25 75

mainMENU
}

mainMENU
tput reset
exit 0
