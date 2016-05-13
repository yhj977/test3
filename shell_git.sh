 #!/bin/bash

#USER_NAME="[your username]"
USER_NAME="yhj977"
PROJECT_NAME="test3"
PROJECT_DESCRIPTION="prictic for study git command"

git init
git add .
git commit -m 'first commit'

curl -u $USER_NAME https://api.github.com/user/repos -d "{\"name\":\"$PROJECT_NAME\", \"description\": \"$PROJECT_DESCRIPTION\"}"

git remote add origin git@github.com:$USER_NAME/"$PROJECT_NAME".git
git push -u origin master
