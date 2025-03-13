# Dev env Bootstrap

This is based on ThePrimeagen's course and then customized

There are two foundational scripts: run and dev-env. The goal is to be able to execute run to download and install all the things and then dev-env to set up all the config files.

run assumes that there is a directory called runs containing executable bash files that install a thing and its dependencies.

dev-env assumes that there is a directory called .config with actual scripts and directories to copy over. This differs from most dotfile management methods in that it does not use simlinks.


## Up next
1. I should install neovim and some light customization?
2. Then back to the dev env course to install tmux and start building that habit
3. Also, need to set up some aliases and configure the default text editor for git
4. Think about how to do root config files like .bashrc. My first thought is to have a dir called root next to the .config dir that dev-env loops through and uses copy_file on
