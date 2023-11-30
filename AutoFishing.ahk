#SingleInstance, Force
SendMode Input

Menu, Tray, Icon, C:\RifalJo\AHK\faljo.ico
 
#MaxThreadsPerHotkey 2
loopRunning := false


^x::  ; Ketika tombol Ctrl + X ditekan
    loopRunning := !loopRunning  ; Toggle status loop

; Program Mancing
 casting: 
    if (loopRunning) {
        Loop {    

                ; Tekan tombol spasi
                Send, {Space Down}
                Sleep, 2020
               
                ; Lepaskan tombol spasi
                Send, {Space Up}
                sleep 350

                ; Periksa apakah tombol Ctrl + X ditekan lagi untuk menghentikan loop
                if (!loopRunning)
                    Break 1

                goto,kondisi
            
            
        }
    }
     else {
      MsgBox, Loop dihentikan.  ; Menampilkan pesan saat loop dihentikan
       }
     return



 kondisi:
 if (loopRunning) {
    loop{
            x1 := 500
            y1 := 0
            x2 := 897
            y2 := 1080

                send, {^ down} 

                PixelSearch, FoundX, FoundY, 185, 91, 774, 450, 0x7ED322, 5, Fast RGB
                if (!ErrorLevel) {
                goto, naiklevel
                }


                PixelSearch, FoundX, FoundY, 285, 268, 325, 305, 0x7ED322, 5, Fast RGB
                if (!ErrorLevel) {
                goto, penghargaan
                } 


                PixelSearch, FoundX, FoundY, %x1%, %y1%, %x2%, %y2%, 0x459AF7, 5, Fast RGB
                if (!ErrorLevel) {
                send, {^ down} 

                MouseMove, FoundX, FoundY
                Click
                sleep 9000
                goto, gantihari
                send, {^ up}
                }else{
                goto, gantihari
                }

                if (!loopRunning)
                Break 1

                goto,casting
        }
                send, {^ up}
 } else {
      MsgBox, Loop dihentikan.  ; Menampilkan pesan saat loop dihentikan
       }
return





   
 
 gantihari:
 
 send, {^ down} 

 PixelSearch, FoundX, FoundY, 69, 152, 114, 202, 0xffc300, 5, Fast RGB
 if (!ErrorLevel) {

 ; MouseMove, 812, 953
 ;sleep 1000

 ;Click
 sleep 5000
  
 send t
 sleep 3000

 MouseMove, 962, 881
 sleep 1000

 click
 Sleep 8000
 
 MouseMove, 769, 831
 sleep 1000

 click
 sleep 5000

 MouseMove, 788, 648
 sleep 1000

 Click
 sleep 2000

 send, {^ up}
 goto casting

 } else {
    goto, casting
 }
 

; Jika naik level

naiklevel:
 send, {^ down}
 sleep 1000

 MouseMove, 958, 892
 sleep 3000

 click
 Sleep 1000

 MouseMove, 674, 924
 sleep 3000
 
 click
 Sleep 1000
 
  MouseMove, 1635, 85
 sleep 3000

 click
 Sleep 1000

  click
 Sleep 1000

  click
 Sleep 1000

 send, {^ up}

 goto casting


;Jika mendapatkan achievment

 penghargaan:

 
 MouseMove, 530, 760
 sleep 3000
 
 click

 Sleep 2000
 send, {^ down}
  MouseMove, 1635, 85
 sleep 3000

 click
 Sleep 1000

  click
 Sleep 1000

  click
 Sleep 1000

 goto casting
 send, {^ up}

