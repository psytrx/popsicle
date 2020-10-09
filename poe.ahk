#SingleInstance, force

windowActive := False
SetTimer, UpdateWindowActive, 25
UpdateWindowActive() {
    global windowActive
    windowActive := WinActive("Path of Exile")
}

~F3::
    global windowActive
    If Not windowActive {
        Return
    }
    Send {Return}/remaining{Return}
    Return

~XButton2::
    global windowActive
    If Not windowActive {
        Return
    }
    
    ; Random, rnd, 25, 100
    ; Sleep, rnd
    ; Send, 1
    
    Random, rnd, 25, 100
    Sleep, rnd
    Send, 2
    
    Random, rnd, 25, 100
    Sleep, rnd
    Send, 3
    
    Random, rnd, 25, 100
    Sleep, rnd
    Send, 4
    
    Random, rnd, 25, 100
    Sleep, rnd
    Send, 5

    Return