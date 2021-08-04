@rmdir /s /q build
@mkdir build
@xcopy /S /y assets build\assets\
@pushd build
@REM /wd5105 suppressed because it causes an error in winbase.h
cl /std:c17 /Zi /W3 /WX /wd5105 /D SOGL_MAJOR_VERSION=4 /D SOGL_MINOR_VERSION=5 /Fespace-shooter ..\src\game\*.c ..\src\platform\win32\*.c user32.lib gdi32.lib opengl32.lib xinput.lib ole32.lib
@popd
 