function fish_greeting
	set info_color0 F2001F
	set info_color1 EB4711
	set info_color2 FC8D18
	set info_color3 FEB256
	set info_color4 E2B759
	set info_color5 FECD95
	set cat_color FFFFFF
	set fish_color FA870A
	set fish_version 
	set kitty_version (kitten --version)
	set architecture (uname -m)
	set os (sw_vers -productVersion)
	set up_for (uptime | sed 's/.*up \([^,]*\), .*/\1/')
	set battery_percent (pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)

	echo -n "$(set_color $info_color0)FISH $FISH_VERSION $(set_color $info_color1)$(string sub --length 14 $(kitten --version))$(set_color $cat_color)					  	 .--.
$(set_color $info_color2)Architecture:  $(uname -m)$(set_color $cat_color)				 			J    L
$(set_color $info_color3)OS: macOS Catarina $os$(set_color $cat_color)							|    |
$(set_color $info_color4)Up time: $up_for hrs$(set_color $cat_color)							F    F
$(set_color $info_color5)Battery: $battery_percent%$(set_color $cat_color)						 	       J    J
								      /    /
								     /    /
								   .'    /
					   .--\"\"--._              /     /
				       _.-'         `-.          /     /
			    __       .'                `.       /     /
			 _-'-.\"`-.  J                    \     /     /
		    .---(  `, _   `'|                     `.  J     /
		      `. )                                  \"\"     /
		       F                                          J
		       L                  |                      J
		       ` (/     /         |                      F
			|    ._'          |                      |
		       /'`--'`.           |                      J
		       '||\   |-._        `.  ___.               |
			 `     \  `.        |/    `-            J
				F   L       /       J           /
				|   J      J         F         J
				|    \     J         |        J
				|    |L    J         J        J
				|    FJ    |          L       | "
	set_color $fish_color 
	echo -n "
         /`·.¸                  " 
	set_color $cat_color
	echo -n "|   J  L   |          L\      F "

	set_color $fish_color
	echo -n " 
        /¸...¸`:·               "
	set_color $cat_color 
	echo -n "|   F  |   |           L\    J"

	set_color $fish_color
	echo -n "
    ¸.·´  ¸   `·.¸.·´)          "
	set_color $cat_color
	echo -n "F  F   |   |           | L   |"

	set_color $fish_color
	echo -n "
   : © ):´;      ¸  {          "
	set_color $cat_color
	echo -n "J  J    |   |           | |   F"

	set_color $fish_color
	echo -n "
    `·.¸ `·  ¸.·´\`·¸)         "
	set_color $cat_color
	echo -n "/  )    F  J            F F  J"

	set_color $fish_color
	echo -n "
	`\\´´\¸.·´            "
	set_color $cat_color
	echo -n "( .'      )   F           J J  F
			       `\"     (   J           /.'  J
			     	       `-'           ||-' |)
						       '-'k
		"
end
