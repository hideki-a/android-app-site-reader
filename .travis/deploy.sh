#!/bin/sh
chmod 600 ~/.ssh/id_rsa
git clone git@github.com:hideki-a/android-app-api-sdk-dev.git -b master
cp -af repository android-app-api-sdk-dev
cd android-app-api-sdk-dev
git merge origin/develop
git add .
git commit -m "Release by Travis CI Job $TRAVIS_JOB_NUMBER"
git push origin master > /dev/null 2>&1