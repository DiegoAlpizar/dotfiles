# https://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there/753948#753948
appendToPath() {

  for DIR in "$@"
  do
    if [ -d "$DIR" ] && [[ ":$PATH:" != *":$DIR:"* ]];
    then
        PATH="${PATH:+"$PATH:"}$DIR"
    fi
  done

}

prependToPath() {

  for ((i=$#; i>0; i--));
  do
    DIR=${!i}

    if [ -d "$DIR" ] && [[ ":$PATH:" != *":$DIR:"* ]];
    then
        PATH="$DIR${PATH:+":$PATH"}"
    fi
  done

}

updateEverything() {

	sudo  apt update  &&  apt full-upgrade
	
}

# GIT_WORK_TREE=~ GIT_DIR=~/.dotfiles/  smerge -n ~
# https://stackoverflow.com/questions/11856690/setting-the-work-tree-of-each-bare-repo
# Unrelated: https://stackoverflow.com/questions/52742435/what-does-git-config-core-worktree-mean
dotfilesUnbare () {

  dotfiles config --bool core.bare false
  dotfiles config --get-regexp core.bare
  
  dotfiles config --path core.worktree ~
  dotfiles config --get-regexp core.worktree

  ln --symbolic ~/.dotfiles ~/.git
  ls -l --directory ~/.git ~/.dotfiles

}

dotfilesRebare () {

  dotfiles config --unset core.worktree
  dotfiles config --bool core.bare true
  unlink ~/.git

  dotfiles config --get-regexp core.bare
  dotfiles config --get-regexp core.worktree
  ls -l --directory ~/.git ~/.dotfiles

}
