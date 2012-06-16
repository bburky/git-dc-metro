#!/bin/sh

# Create first branch
# This will fail if master has never been committed
git checkout --orphan red
git rm -rf .

# Alternately, forcibly rename master before it has ever been committed
#sed -i -e 's/master$/red/' .git/HEAD

git commit --allow-empty -m "Glenmont"

git commit --allow-empty -m "Wheaton"

git commit --allow-empty -m "Forest Glen"

git commit --allow-empty -m "Silver Spring"

git commit --allow-empty -m "Takoma"

# Create green branch
git checkout --orphan green
git commit --allow-empty -m "Greenbelt"

git commit --allow-empty -m "College Park-U of Md"

git commit --allow-empty -m "Prince George's Plaza"

git commit --allow-empty -m "West Hyattsvile"

# Create yellow branch
# Update other branches to return here later
git merge -s ours --commit -m "Fort Totten" red
git branch yellow HEAD
git branch -f red HEAD

git commit --allow-empty -m "Georgia Ave-Petworth"

git commit --allow-empty -m "Columbia Heights"

git commit --allow-empty -m "U St/African-Amer Civil War Memorial/Cardozo"

git commit --allow-empty -m "Shaw-Howard U"

# Move yellow branch here to return later
git commit --allow-empty -m "Mt Vernon Sq/7th St Convention Center"
git branch -f yellow HEAD

# Go back to red branch
git checkout red
git commit --allow-empty -m "Brookland-CUA"

git commit --allow-empty -m "Rhode Island Ave-Brentwood"

git commit --allow-empty -m "New York Ave-Florida Ave-Gallaudet U"

git commit --allow-empty -m "Union Station"

git commit --allow-empty -m "Judiciary Sq"

# Merge red branch with yellow and green
# 
git merge --commit -m "Gallery Pl-Chinatown" green  yellow
git branch -f yellow HEAD
git branch -f green HEAD

# Back to yellow/green branch
git checkout yellow
git commit --allow-empty -m "Archives-Navy Mem'l-Penn Quarter"
git branch -f green HEAD

# Create orange branch
git checkout --orphan orange
git commit --allow-empty -m "New Carrollton"

git commit --allow-empty -m "Landover"

git commit --allow-empty -m "Cheverly"

git commit --allow-empty -m "Deanwood"

git commit --allow-empty -m "Minnesota Ave"

# Create blue branch
git checkout --orphan blue
git commit --allow-empty -m "Largo Town Center"

git commit --allow-empty -m "Morgan Boulevard"

git commit --allow-empty -m "Addison Road-Seat Pleasant"

git commit --allow-empty -m "Capitol Heights"

git commit --allow-empty -m "Benning Road"

# Merge blue branch with orange
git merge --commit -m "Stadium-Armory" orange

git commit --allow-empty -m "Potomac Ave"

git commit --allow-empty -m "Eastern Market"

git commit --allow-empty -m "Capitol South"

# Move the orange branch here to come back later
git commit --allow-empty -m "Federal Center SW"
git branch -f orange HEAD

# Merge in orange/blue branch with yellow/green
# Move the branches here so we can return later
git merge -s ours --commit -m "L'Enfant Plaza" yellow
git branch -f orange HEAD
git branch -f yellow HEAD
git branch -f green HEAD

# Go to green branch and finish it
git checkout green
git commit --allow-empty -m "Waterfront-SEU"

git commit --allow-empty -m "Navy Yard"

git commit --allow-empty -m "Anacostia"

git commit --allow-empty -m "Congress Heights"

git commit --allow-empty -m "Southern Ave"

git commit --allow-empty -m "Naylor Road"

git commit --allow-empty -m "Suitland"

git commit --allow-empty -m "Branch Ave"

# Go to blue branch
git checkout blue
git commit --allow-empty -m "Smithsonian"

git commit --allow-empty -m "Federal Triangle"

# Merge red branch into orange/blue
# This sequence (merging blue into red) and --no-ff forces a merge commit
git checkout red
git merge --no-ff --commit -m "Metro Center" blue
git branch -f orange HEAD
git branch -f blue HEAD

# Finish red branch
git commit --allow-empty -m "Farragut North"

git commit --allow-empty -m "Dupont Circle"

git commit --allow-empty -m "Woodley Park-Zoo/Adams Morgan"

git commit --allow-empty -m "Cleveland Park"

git commit --allow-empty -m "Van Ness-UDC"

git commit --allow-empty -m "Tenleytown-AU"

git commit --allow-empty -m "Friendship Heights"

git commit --allow-empty -m "Bethesda"

git commit --allow-empty -m "Medical Center"

git commit --allow-empty -m "Grosvenor-Strathmore"

git commit --allow-empty -m "White Flint"

git commit --allow-empty -m "Twinbrook"

git commit --allow-empty -m "Rockville"

git commit --allow-empty -m "Shady Grove"

# Continue orange branch
git checkout orange

git commit --allow-empty -m "McPherson Sq"

git commit --allow-empty -m "Farragut West"

git commit --allow-empty -m "Foggy Bottom-GWU"

# Move blue branch here to return later
git commit --allow-empty -m "Rosslyn"
git branch -f blue HEAD

# Finish orange branch
git commit --allow-empty -m "Court House"

git commit --allow-empty -m "Clarendon"

git commit --allow-empty -m "Virginia Sq-GMU"

git commit --allow-empty -m "Ballston-MU"

git commit --allow-empty -m "East Falls Church"

git commit --allow-empty -m "West Falls Church-VT/UVA"

git commit --allow-empty -m "Dunn Loring-Merrifield"

git commit --allow-empty -m "Vienna/Fairfax-GMU"

# Return to blue branch
git checkout blue
git commit --allow-empty -m "Arlington Cemetery"

# Go back to yellow branch and merge into blue
git checkout yellow
git merge --no-ff --commit -m "Pentagon" blue

git commit --allow-empty -m "Pentagon City"

git commit --allow-empty -m "Crystal City"

git commit --allow-empty -m "Ronald Regan Washington National Airport"

git commit --allow-empty -m "Braddock Road"

# Leave blue branch here and finish yellow
git commit --allow-empty -m "King Street"
git branch -f blue HEAD

git commit --allow-empty -m "Eisenhower Ave"

git commit --allow-empty -m "Huntington"

# Finish blue branch
git checkout blue
git commit --allow-empty -m "Van Dorn Street"

git commit --allow-empty -m "Franconia-Springfield"
