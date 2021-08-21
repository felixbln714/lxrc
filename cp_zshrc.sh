#!/bin/sh

# Variables & Setup
cd /home/
echo -en "Location (path/to/destination/): "
read location

# Copys all available zshrc's
for i in *; do
	if [[ -f $i/.zshrc ]]; then 
		cd $i; sudo cp ".zshrc" "${location}zshrc_$i" && 
			echo -e "Successfully copied zshrc of user $i..."
		cd /home/
	fi
done

# Copy root zshrc 
sudo cp "/root/.zshrc" "${location}zshrc_root" && 
	echo -e "Successfully copied zshrc of root account..."


