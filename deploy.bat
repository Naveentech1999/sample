@echo off
setlocal enabledelayedexpansion

rem Get arguments
set "STAGE=%1"
set "REGION=%2"
set "TAG=%3"
set "GIT_USERNAME=%4"
set "GIT_PASSWORD=%5"
set "BUILD_NUMBER=%6"
set "BUILD_URL=%7"
set "RELEASE_VERSION=%8"

rem Define ORIGIN variable
set "ORIGIN=https://github.com/Naveentech1999/sample.git
echo %ORIGIN%

rem Temporarily disable the error-checking flag
set +e

rem Delete the tag if it already exists
git tag -d %TAG%

rem Push the tag to the remote repository
git push %ORIGIN% :refs/tags/%TAG%

rem Re-enable the error-checking flag
set -e

rem Create and push the new tag
git tag -a %TAG% -m "Tagged by Jenkins build no.%BUILD_NUMBER% on %date%, STAGE: %STAGE%, REGION: %REGION%, URL: %BUILD_URL%"
git push %ORIGIN% --tags

echo TAG %TAG% added to %ORIGIN%

endlocal
