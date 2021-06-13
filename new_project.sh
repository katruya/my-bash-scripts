#!/bin/bash

# Script to automate making a NodeJS project

echo "JavaScript Project Creator v1.0"
echo "Created by DemonKat"

echo "" # creates space between output sections

projectName="$1"

if [ "$1" == "" ]
then
    projectName="newKatJSProject" || exit 1   
fi

mkdir "$projectName" || exit 1

cd "$projectName" || exit 1

mkdir src
mkdir src/components
mkdir src/logic
mkdir src/models
mkdir src/utils
mkdir src/views
mkdir database
mkdir tests
mkdir logs
mkdir public
touch src/index.js
mkdir public/img
touch public/index.html
touch public/style.css

curl -o - "https://raw.githubusercontent.com/katruya/KatJS/main/public/index.html" > public/index.html


echo "Directory ${projectName} created. Files:"
ls -la
ls -la src/
ls -la public/

echo ""

echo "Running npm init..."

echo ""

npm init

echo ""

echo "Setting up for use with git..."
git init
touch .gitignore
touch README.md

echo ""

read -ep "Edit the .gitignore now (y/n - default: n)? " -i "n" answer

if [ "$answer" == "y" ]
then
    code .gitignore
else
    echo "okay, repo initialized with an empty .gitignore - remember to update it!"
fi

echo ""

read -ep "Do you want to install helpful packages/frameworks/apis (y/n - default: n)?" -i "n" answer

if [ "$answer" == "y" ]
then
    echo "Now installing popular node packages..."
    echo ""
    npm install mocha --save-dev
    npm install express --save-dev
    npm install socket.io --save-dev
    npm install @hapi/hapi --save-dev
    npm install nodemailer --save-dev
    npm install nodemon --save-dev
    npm install mysql --save-dev
    npm install pug --save-dev
    npm install passport --save-dev
    npm install commonjs --save-dev
    npm install commander --save-dev
    npm install bower --save-dev
    npm install create-react-app --save-dev
    npm install webpack --save-dev
    npm install webpack webpack-cli --save-dev
    npm install lodash --save-dev
    npm install tsc --save-dev
    echo "If you need additional packages, run $ npm install <package_name>"
    echo "To uninstall a package, run $ npm uninstall <package_name>"
else
   echo ""
   echo "You will need to install additional packages manually using $ npm install <package_name>" 
fi

echo ""
echo "New NodeJS project, ${projectName}, created!"
echo "Happy coding!"



