#!/bin/bash

# Directory structure
# --------------------
# project/
#   |
#   components/
#   |
#   utils/
#   |
#   public/ - index.html; style.css
#   |
#   models/
#   |
#   views/ 
#   |
#   index.js

echo "NodeJS Project Creator v1.0"
echo "Created by DemonKat"

echo "" # creates space between output sections

projectName="$1"

if [ "$1" == "" ]
then
    projectName="newNodeJSProject";   
fi

mkdir "$projectName" || exit

cd "$projectName" || exit

mkdir components
mkdir logic
mkdir models
mkdir public
mkdir utils
mkdir views
touch index.js

cd public/ || exit
touch index.html style.css
cd - || exit

echo "Directory ${projectName} created. Files:"
ls -la
echo ""
echo "Files in public: "
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
    vi .gitignore
else
    echo "okay, repo initialized with an empty .gitignore - remember to update it!"
fi

echo ""

read -ep "Do you want to install helpful packages/frameworks/apis (y/n)?" -i "y" answer

if [ "$answer" == "y" ]
then
    echo "Now installing popular node packages..."
    echo ""
    npm install mocha
    npm install express
    npm install socket.io
    npm install @hapi/hapi
    npm install nodemailer
    npm install pug
    npm install passport
    npm install commonjs
    npm install commander
    npm install bower
    npm install create-react-app
    npm install webpack
    npm install lodash
    npm install tsc
    echo "If you need additional packages, run $ npm install <package_name>"
    echo "To uninstall a package, run $ npm uninstall <package_name>"
else
   echo ""
   echo "You will need to install additional packages manually using $ npm install <package_name>" 
fi

echo ""
echo "New NodeJS project, ${projectName}, created!"
echo "Happy coding!"



