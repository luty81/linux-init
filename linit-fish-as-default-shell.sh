cp /etc/shells /etc/shells.bak
pathToFish=$(which fish)
sed -i '2i '$pathToFish /etc/shells 
chsh -s $pathToFish
echo "Done! Close all terminal windows and restart. Fish should be the default one."