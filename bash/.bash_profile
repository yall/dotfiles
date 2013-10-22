#!/bin/bash

## PROMPT & ALIASES
for bash_file in ~/.bash_{prompt,aliases}; do
	if [ -f $bash_file ]; then
	. $bash_file
	fi
done

## ENV HOMES
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
export PLAY_HOME=/usr/local/play
export SCALA_HOME=/usr/local/scala
export PIG_HOME=/usr/local/pig

# ENV OPTS
export MAVEN_OPTS="-Xmx2G -XX:MaxPermSize=1G"

## PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$HOME/bin:$PATH
export PATH=$PLAY_HOME:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=$PIG_HOME/bin:$PATH
export PATH=$HOME/.jenv/bin:$PATH

## INIT jenv
eval "$(jenv init -)"

## Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

