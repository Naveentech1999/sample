
rem Get the tag name from the environment variable
set TAG=$(1)

rem Delete the tag locally
git tag -d %TAG%
rem Delete the tag remotely
git push origin :refs/tags/%TAG%
  bjb
