# README
*A minimal docker lab for react*
----------
## DEPENDENCIES
1. DOCKER
----------
## USAGE
1. use the scripts/create-app.sh to create a new react project
    - Example : scripts/create-app.sh firsttest
2. use the scripts/update-app.sh to install updates to any project
    - Example : scripts/update-app.sh firsttest
3. use the scripts/run.sh to start the react project in watch mode
    - Example : scripts/run.sh firsttest
4. use the scripts/stop.sh to stop and cleanup the app
    - Example : scripts/stop.sh firsttest
----------
### NOTE
- All new projects are created by script/create-app.sh are created inside the root folder.
- The user:group in the script/create-app.sh and script/update.sh  is defaulted to root:root.
- Change the user:group by changing the USER_GROUP variable in the scripts.