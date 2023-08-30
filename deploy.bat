@echo off

rem Set the git user name and email
git config user.name "Naveentech1999"
git config user.email "naveenbhupathi22@gmail,com"

rem Define the ORIGIN variable
set ORIGIN="https://github.com/Naveentech1999/sample.git"

rem Delete the tag
git tag -d %DEV%

rem Push the changes to the remote repository
git push %ORIGIN%
