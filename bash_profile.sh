if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export ARCHFLAGS="-arch x86_64"

#export ANDROID_HOME=/Users/wpantoja/Applications/adt-bundle-mac-x86_64-20140702/sdk
export ANDROID_HOME=/Applications/Android_SDK/sdk
export ANDROID_SDK=/Applications/Android_SDK/sdk
export ANDROID_NDK_HOME=/Applications/Android_SDK/NDK/android-ndk-r10e
export PATH=$ANDROID_NDK_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

export EDITOR="$HOME/bin/mate -w"

export JAVA_8_0_45_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export JAVA_8_0_05_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home
export JAVA_8_0_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
export JAVA_7_0_60_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home
export JAVA_7_0_45_HOME=/Applications/corona-java-1.1.0/jdk-7u45-macosx-x64/Contents/Home
export JAVA_7_0_72_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_72.jdk/Contents/Home
export JAVA_6_0_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME=$JAVA_8_0_45_HOME
export JRE_HOME=$JAVA_HOME
export PATH=$HOME/bin:$JRE_HOME/bin:$JAVA_HOME/bin:$PATH

export IDE_HOME=/Applications/corona-java-1.1.0
export ECLIPSE_HOME=$IDE_HOME

# export M2_HOME=$IDE_HOME/apache-maven-3.0.5

#export JRE_HOME=$IDE_HOME/jdk-7u45-macosx-x64/Contents/Home/jre
#export JAVA_HOME=$IDE_HOME/jdk-7u45-macosx-x64/Contents/Home
#export PATH=$JRE_HOME/bin:$JAVA_HOME/bin

# export JBOSS_HOME=$IDE_HOME/jboss-as-7.1.3.Final
# export PATH=$M2_HOME/bin:$JBOSS_HOME/bin:$PATH
export PATH=$HOME/.jenv/bin:$PATH

export PYENV_ROOT=/usr/local/var/pyenv

if [ -f ~/bin/common_functions.sh ]; then
	source ~/bin/common_functions.sh
	normalTerminal
fi


alias ssh-c3='ssh -i /Users/wpantoja/Documents/pem/c3_mbp.pem stack@nimbus2-441230.slc01.ext.ebayc3.com'
alias ssh-c3-prod='ssh -i /Users/wpantoja/Documents/pem/c3_mbp.pem stack@nimbus-heritage-proxy-prod-483513.slc01.ext.ebayc3.com'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#Hierarchy Viewer Variable 
export ANDROID_HVPROTO=ddm

export PATH=/usr/local/bin:$PATH

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
