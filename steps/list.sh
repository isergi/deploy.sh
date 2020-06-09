## Gets the list of all releases
if [ "$1" = "list" ]; then
  if [ -d $DIR_RELEASES ]; then
    cd $DIR_RELEASES && echo $LG"INFO:"$R" Change directory to $DIR_RELEASES." && ls -gcr;
  else
    echo $LR"ERROR:"$R" Directory $DIR_RELEASES not exist.";
  fi
  exit 1;
fi