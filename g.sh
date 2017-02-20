#!/bin/bash
echo "#Searching fuel/app/classes"
grep -R $2 $1 fuel/app/classes/ |grep -v swp
echo "##################"
echo "#Searching fuel/app/tasks"
grep -R $2 $1 fuel/app/tasks/ |grep -v swp
echo "##################"
echo "#Searching fuel/app/views"
grep -R $2 $1 fuel/app/views/ |grep -v swp
echo "##################"
echo "#Searching fuel/packages"
grep -R $2 $1 fuel/packages/ |grep -v vendor |grep -v swp
echo "##################"

