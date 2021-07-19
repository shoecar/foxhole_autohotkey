#MaxThreadsPerHotkey, 2
; To use install Autohokey, copy this code into a blank script (right click, "New->AutoHotkey script") save and run it. https://www.autohotkey.com/

;Right Mouse Hold - Ideal for continuous aim in vehicle or on foot 
F2:: ;hotkey
Toggle1 := !Toggle1

If Toggle1
{
   Click, Down, Right
  }
else
   Click, Up, Right
return

;Left Mouse Hold - "Auto Build" - Ideal for cv work, eg building/upgrading all garrison buildings in a town solo
; script holds right mouse initially, just before left hold, to skip you having to do that in cv
F3:: ;hotkey
Toggle2 := !Toggle2
If Toggle2
{
   Click, Down, Right
   sleep, 100
   Click, Down
   Click, Up, Right
  }
else
   Click, Up
return


;Right Mouse Auto Clicker - "Auto Pull" - Ideal for pulling slow items into truck, eg filling a fuel truck
F4:: ;hotkey
Toggle3 := !Toggle3
while (Toggle3=1)
{
	
	Click, Down
	sleep, 1000 ;1 Second between clicks
}
return

;Holds down "W" key for walking/driving
F5:: ;hotkey
Toggle4 := !Toggle4
If Toggle4
	Send, {w down}
else
	Send, {w up}
return
