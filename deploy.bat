@echo off
setlocal

rem Define variables
set TAG=DEV
set ORIGIN=https://github.com/Naveentech1999/sample.git

echo %ORIGIN%

rem Disable breaking on errors
setlocal enabledelayedexpansion
set "errorlevel="
goto :noError

:noError
  rem Delete the Git tag locally
  git tag -d %TAG%
  rem Push the deletion of the Git tag to the remote repository
  git push %ORIGIN% :refs/tags/%TAG%

rem Re-enable breaking on errors
endlocal

echo TAG %TAG% deleted from %ORIGIN%

endlocal
