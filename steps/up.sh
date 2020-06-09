## Deploys to the new dir
if [ "$1" = "up" ]; then
    ## checks and creates dir with a new branch
    if [ ! -d $DIR_NEW_BRANCH ]; then
      OK=0 && mkdir $DIR_NEW_BRANCH && echo $LG"INFO:"$R" Directory $DIR_NEW_BRANCH created." && OK=1;
      if [ $OK = 0 ]; then
  echo $LR"ERROR:"$R" FAIL create directory $DIR_NEW_BRANCH";
  exit 1;
      fi
    else
      echo $LR"ERROR:"$R" Directory $DIR_NEW_BRANCH aleardy exist.";
    fi
    ## Shows error if we can not create branch
    if [ -d $DIR_NEW_BRANCH ]; then
      chown $DIR_USER $DIR_NEW_BRANCH && cd $DIR_NEW_BRANCH && echo $LG"INFO:"$R" Change directory to $DIR_NEW_BRANCH.";
    else
      echo $LR"ERROR:"$R" Directory $DIR_NEW_BRANCH not exist.";
      exit 1;
    fi
    ##
    echo $LG"INFO:"$R" Begin cloning ..." && git clone $REPO_URL ./ && echo $LG"INFO:"$R" End cloning.";
    echo $LG"INFO:"$R" Begin init ..." && $PHP_PATH init --env=$TYPE_ENVIROMENT --overwrite=All && echo $LG"INFO:"$R" Init complete.";

    cd $DIR_NEW_BRANCH && echo $LG"INFO:"$R" Setup simlink $DIR_VENDOR to $DIR_NEW_BRANCH/vendor" && ln -sf $DIR_VENDOR $DIR_NEW_BRANCH/vendor;    
    cd $DIR_NEW_BRANCH && echo $LG"INFO:"$R" Setup simlink $DIR_STORAGE to $DIR_NEW_BRANCH/frontend/web/storage" && ln -sf $DIR_STORAGE $DIR_NEW_BRANCH/frontend/web/storage;    
    cd $DIR_NEW_BRANCH && rm -rf $DIR_NEW_BRANCH/frontend/runtime && echo $LG"INFO:"$R" Setup simlink $DIR_RUNTIME to $DIR_NEW_BRANCH/frontend/runtime" && ln -sf $DIR_RUNTIME $DIR_NEW_BRANCH/frontend/runtime;    
    exit 0
fi;