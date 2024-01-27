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
