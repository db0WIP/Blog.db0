#!/bin/bash
## ########################################################################## ##
## Project: Blog.db0, Blog module for Ocsigen                                 ##
## Description: Installation script                                           ##
## Author: db0 (db0company@gmail.com, http://db0.fr/)                         ##
## Latest Version is on GitHub: https://github.com/db0company/Blog.db0        ##
## ########################################################################## ##

function	delete_files() {
    echo -n "  Cleaning..."

    rm -f "pathname.eliom" "pathname.eliomi"
    rm -f "tools.eliom" "tools.eliomi"
    rm -f "otools.ml" "otools.mli"
    rm -rf "bootstrap"
    echo "Done."
}

function	install_modules() {
    delete_files
    install_directories && \
    wget "https://raw.github.com/db0company/Pathname/master/Ocsigen/pathname.eliom" && \
    wget "https://raw.github.com/db0company/Pathname/master/Ocsigen/pathname.eliomi" && \

    wget "https://raw.github.com/db0company/OcsiTools/master/tools.eliom" && \
    wget "https://raw.github.com/db0company/OcsiTools/master/tools.eliomi" && \
    wget "https://raw.github.com/db0company/OcsiTools/master/otools.ml" && \
    wget "https://raw.github.com/db0company/OcsiTools/master/otools.mli" && \

    wget "http://twitter.github.com/bootstrap/assets/bootstrap.zip" && \
    unzip "bootstrap.zip" && \
    rm "bootstrap.zip" && \

    return 0
    return 1
}

function	install_modules_links() {
    delete_files
    defaultpath=/home/$USER/dev/eip/
    echo -n "  Depositories path ("$defaultpath")? " && \
    read path && \
    if [ -z $path ]
    then path=$defaultpath
    fi && \
    # get the absolute path if the path is relative
    cd $path && path=`pwd` && cd - > /dev/null && \
    ln -s $path"/Pathname/Ocsigen/pathname.eliom" && \
    ln -s $path"/Pathname/Ocsigen/pathname.eliomi" && \
    ln -s $path"/OcsiTools/tools.eliom" && \
    ln -s $path"/OcsiTools/tools.eliomi" && \
    ln -s $path"/OcsiTools/otools.ml" && \
    ln -s $path"/OcsiTools/otools.mli" && \
    ln -s $path"/bootstrap" && \
    return 0
    return 1
}

if [ $1 = "-clean" ]
then
    delete_files
    exit 0
fi

echo "Install Modules... " && \

    if [ $1 = "-link" ]
    then install_modules_links
    else install_modules
    fi && \
 
    echo "Done."

