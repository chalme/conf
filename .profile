# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_73
export JDK_HOME=/usr/lib/jvm/jdk1.8.0_73
export JDK=/usr/lib/jvm/jdk1.8.0_73
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib

# Ubuntu make installation of Ubuntu Make binary symlink
export PATH=/home/chalme/.local/share/umake/bin:$PATH

export PATH=~/Documents/command:$PATH
export GOPATH=/home/chalme/data/go/mygo

# Ubuntu make installation of Go Lang
export GOROOT=/home/chalme/.local/share/umake/go/go-lang
export PATH=/home/chalme/.local/share/umake/go/go-lang/bin:$PATH
export PATH=${JAVA_HOME}/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$GOROOT/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH
export PATH=${GOPATH}/bin:${PATH}

export PATH=${PATH}:/usr/share/redis-desktop-manager/bin:/home/chalme/.node_modules/bin/
#http_proxy="http://127.0.0.1:8123/"
