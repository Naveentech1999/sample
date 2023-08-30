@echo off

rem Set the git user name and email
git config user.name %GIT_USERNAME%
git config user.email %GIT_USERNAME%

rem Define the ORIGIN variable
set ORIGIN="https://%GIT_USERNAME%:%GIT_PASSWORD%@https://github.com/Naveentech1999/sample.git"
echo %ORIGIN%

rem Temporarily disable the error-checking flag
set +e

rem Delete the tag if it already exists
git tag -d %TAG%

rem Push the tag to the remote repository
git push %ORIGIN% :refs/tags/%TAG%

rem Re-enable the error-checking flag
set -e

rem Print a message to confirm that the tag was added
echo "TAG %TAG% added to %ORIGIN%"
