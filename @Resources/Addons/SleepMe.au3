#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

ShellExecute("powercfg",  "-hibernate off", "", "", @SW_HIDE)
Sleep(500)
ShellExecute("rundll32.exe", "powrprof.dll,SetSuspendState 0,1,0", "", "", @SW_HIDE)
