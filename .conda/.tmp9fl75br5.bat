@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "C:\machinelearningpython\condabin\conda.bat" activate "c:\ml_tutorial_project\NetworkSecurity\.conda"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@c:\ml_tutorial_project\NetworkSecurity\.conda\python.exe -Wi -m compileall -q -l -i C:\Users\voldi\AppData\Local\Temp\tmpe9zxudpl -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
