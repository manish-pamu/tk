#set the window name
wm title . "Menubar"


#set window aspect ratio
#width  - 800
#height  - 500
#offset from left side - 500
#offset from top side - 300
wm geometry . 800x500+500+300

#variables:::
set menubar_tab_width 7


#create a frame
frame .menubar -relief groove \
               -bd 2
pack .menubar  -fill x

#create menu buttons
#FILE menu button
menubutton .menubar.options_tab \
                   -text "Options" \
                   -justify left \
                   -menu .menubar.options_tab.menu \
                   -relief raised \
                   -width $menubar_tab_width

                   #initialize and configure the drop-down menu
                   menu .menubar.options_tab.menu

			#config a radio button
			.menubar.options_tab.menu add radiobutton \
						      -label "Reconcile" \
						      -accelerator "^R" \
						      -command {bell}

			#create a check button
			.menubar.options_tab.menu add checkbutton \
						      -label "Duplicate" \
						      -accelerator "^D" \
						      -command {bell}

















