#!/bin/bash

############################## Add dotfiles here ##############################
declare -a dotfiles=(   ".vimrc"
                        ".bashrc"
                        ".tmux.conf"
                        ".screenrc"
                    )

############################# Change nothing here #############################

date=$(date +"%Y-%m-%d-%T")
backup_folder="./backups/backup_$date"

for file in "${dotfiles[@]}"
do
    if [ -e "$HOME/$file" ]
    then
        if [ ! -L "$HOME/$file" ]
        then
            echo "Creating backup of $file"
            if [ ! -d "./backups" ]
            then
                mkdir "./backups"
            fi
            
            if [ ! -d $backup_folder ]
            then
                mkdir $backup_folder 
            fi
            cp "$HOME/$file" "$backup_folder"
        fi
        echo "Removing $file"
        rm "$HOME/$file"
    fi
    
    echo "Linking $file"
    ln -s "$PWD/$file" "$HOME/$file"
done

