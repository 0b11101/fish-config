function fish_prompt
	#Battery
	set battery_percent (pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
	set battery_integer (math $battery_percent + 0)

	# Colors
	set INFO_COLOR0 FECD95
	set INFO_COLOR1 FC514C
	set INFO_COLOR2 FC8D18
	set INFO_COLOR3 FEB256
	set INFO_COLOR4 E2B759
	
	# Battery Colors
	set UNPLUG BC00FF #purple
	set ALMOST_EIGHTY 1BA0D4 #blue
	set HEALTHY 59BF3E #green
	set ALMOST_TWENTY FC8D18 #orange
	set CHARGE FC514C #RED

	
	#Extra space before printing
	printf %s \n

	
	# Date info
	set_color $INFO_COLOR4
	date "+%a %d[%H:%M:%S]"
	
	# Color logic 
	if test $battery_integer -ge 80
		set_color $UNPLUG 
	else if test $battery_integer -ge 68
		set_color $ALMOST_EIGHTY
	else if test $battery_integer -ge 46
		set_color $HEALTHY 
	else if test $battery_integer -ge 32
		set_color $ALMOST_TWENTY
	else 
		set_color $CHARGE
	end
	
	# Battery
	printf ⊙[- %d%s \+]⊙ $battery_integer %
	
	# Directory Info
	set_color $INFO_COLOR1
	printf %s [

	set_color $INFO_COLOR2
	printf %s $(pwd)

	set_color $INFO_COLOR1 
	printf ' ∈ '

	set_color $INFO_COLOR3
	printf %s $(hostname | sed 's/\.local$//') 
	
	set_color $INFO_COLOR1
	printf %s ]
	
	# Typing prompt
	set_color $INFO_COLOR0
	printf %s ' λ ' 
end
