#!/bin/bash
echo "Searching fuel/app/classes"
grep -R $1 fuel/app/classes/
echo "##################"
echo "Searching fuel/app/tasks"
grep -R $1 fuel/app/tasks/
echo "##################"
echo "Searching fuel/app/views"
grep -R $1 fuel/app/views/
echo "##################"
echo "Searching fuel/packages"
grep -R $1 fuel/app/packages/
echo "##################"

