## Switch dirs
if [ "$1" = "switch" ]; then
  test -z "$VERSION_SW" && usage;
  if [ -d $DIR_RELEASES/$VERSION_SW ]; then

    OK=0 && cd $DIR_RELEASES && echo $LG"INFO:"$R" Change directory to $DIR_RELEASES." && ln -sfn $DIR_RELEASES/$VERSION_SW $DIR_CURRENT && cd $DIR_CURRENT && OK=1;

    if [ $OK = 0 ]; then
      echo $LR"ERROR:"$R" FAIL rollback version $DIR_RELEASES/$VERSION_SW.";
      exit 1;
    fi
    echo $LY"INFORMATION:"$R" Successfull rollback version $DIR_RELEASES/$VERSION_SW.";
    exit 0;
  else
    echo $LR"ERROR:"$R" Directory $DIR_RELEASES/$VERSION_SW not exist.";
    usage;
  fi
  exit 0;
fi