
#!/bin/bash

# Build
hugo -t hugo-theme-shell

# public directory is a the deploy repo git submodule
cd public
git add .

msg="feat: Site update on `date`"
if [ $# -gt 0 ]; then
    msg="$1"
fi

git commit -m "$msg"

git push origin master
cd ..