 
set TAG=$(1)

rem Delete the tag locally
git tag -d %TAG%
rem Delete the tag remotelymvmvkm
git push origin :refs/tags/%TAG%
  bjb
