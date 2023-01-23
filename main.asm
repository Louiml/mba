include \masm32\include\masm32.inc
includelib \masm32\lib\masm32.lib

message db 'Message Box Assembly',0
caption db 'Message Box Assembly',0

type db MB_OK or MB_ICONINFORMATION

push 0
push offset caption
push offset message
push 0
call [MessageBoxA]

push 0
call [ExitProcess]
