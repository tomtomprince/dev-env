# Dev env Bootstrap

## Up next
1. Need to move root level dotfiles like `.bashrc` into this root and use copy_file to overwrite them
2. Consider installing zsh and all that. I miss the completions
3. Add fzf install script and get back to the course

## Overview
This is based on ThePrimeagen's course and then customized

There are two foundational scripts: run and dev-env. The goal is to be able to execute run to download and install all the things and then dev-env to set up all the config files.

run assumes that there is a directory called runs containing executable bash files that install a thing and its dependencies.

dev-env assumes that there is a directory called .config with actual scripts and directories to copy over. This differs from most dotfile management methods in that it does not use simlinks.

My goals are:

1. Aside from setting up git, I just want to run a script to set up a few key tools and languages so I can be productive coding fast.
2. This needs to be light on loc because I want to review it before actually using it.
3. not have to look up a DSL to understand what it's going to do. Ansible is out
4. not to use a tool to sync my dot files. I always forget how they work as it's another DSL
5. lean more on bedrock open source tools that are super stable so I don't have to relearn them all the time. I do enough of this with React.
6. be more proficient with Linux use

This aligned with ThePrimagen's course, so here we are.

## Directions
1. clone down to ~/personal/
2. You can add dev-env and/or run (rename it) to your path if you want. I've been just running them
3. Run "run" to install all the things
4. Run dev-env to copy over config files
5. Add `~/.local/scripts` to beginning of PATH. This should be handled by dev-env, but I haven't done it yet. I guess .profile is the appropriate place to do this?

Both scripts have a --dry option for a dry run

## Uses
There are a few choices on tools

1. zsh as a shell. I throw oh my zsh on top and call it a day. It's easy to install on linux if it's not the default and it's the default on Mac, which I use daily
2. You might need a terminal emulator other than what your OS comes with. I'm on Qterminal which is default in lubuntu, but Ghostty, XTerm, etc will be nice experiences
3. Neovim for text editing. I almost went in on Vim instead
4. Tmux for managing terminal real estate
5. fzf for searching. I've been using it for years and it's awesome

## Tmux
Reiterating goals from Prime's course:

1. sessions last even when I close my terminal
2. multiple running sessions, and these sessions are based on directory
3. "tabs" within a session
4. navigate to any session by directory name "instantly"
5. navigate to any session by directory with fuzzy find
6. run scripts or whatever programs I want when navigating to a directory

To this end, the home directory has a .ready-tmux script that has a general initial set up and is configured to run when tmux is opened. If a folder contains a .ready-tmux script, that script is run instead. This is handled by the ready-tmux script in `.local` which gets added to path.
