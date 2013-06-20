call ../../ros/env.bat %1 %2 %3
call %~dp0env.bat
if not ["%CASDEB%"] == [""] call "../../ros/msvc.bat" %VCVER% win%ARCH% %CASDEB% All-%VCVER%.sln
if ["%CASDEB%"] == [""] call "../../ros/msvc.bat" %VCVER% win%ARCH% "" All-%VCVER%.sln