#!/bin/sh

# DIR FOR KEEPING PROJECT RELEASES HISTORY
# EXAMPLE: /home/project_name/releases
DIR_RELEASES=$NOT_CONFIGURED_VALUE

# DIR FOR KEEPING PROJECT UPLOAD STORAGE FILES
# EXAMPLE: /home/project_name/storage
DIR_STORAGE=$NOT_CONFIGURED_VALUE

# PUBLIC DIR PATH WHERE index.php LOCATED
# EXAMPLE: /home/project_name/public/
DIR_PUBLIC=$NOT_CONFIGURED_VALUE

# DIR FOR KEEPING PROJECT VENDORS
# EXAMPLE: /home/project_name/vendor
DIR_VENDOR=$NOT_CONFIGURED_VALUE

# USER FOR CHOWN AND CHMOD DIRS
# EXAMPLE: poroject_user:project_user
DIR_USER=$NOT_CONFIGURED_VALUE

# TYPE OF CURRENT ENVIROMENT DEPLOYMENT
# EXAMPLE: ENV_TYPE_PRODUCTION
TYPE_ENVIROMENT=$NOT_CONFIGURED_VALUE

# URL FOR CODE KEEPING REPOSITORY
# EXAMPLE: "git@gitlab.example.com:P/project.ru.git"
REPO_URL=$NOT_CONFIGURED_VALUE