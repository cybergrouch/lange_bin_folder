if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export ANDROID_HOME=/Users/wpantoja/Applications/adt-bundle-mac-x86_64-20140702/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

export EDITOR="$HOME/bin/mate -w"

export JAVA_8_0_05_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home
export JAVA_8_0_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
export JAVA_7_0_60_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home
export JAVA_7_0_45_HOME=/Applications/corona-java-1.1.0/jdk-7u45-macosx-x64/Contents/Home
export JAVA_6_0_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME=$JAVA_7_0_45_HOME
export JRE_HOME=$JAVA_HOME
export PATH=$HOME/bin:$JRE_HOME/bin:$JAVA_HOME/bin:$PATH

export IDE_HOME=/Applications/corona-java-1.1.0
export ECLIPSE_HOME=$IDE_HOME
export M2_HOME=$IDE_HOME/apache-maven-3.0.5

#export JRE_HOME=$IDE_HOME/jdk-7u45-macosx-x64/Contents/Home/jre
#export JAVA_HOME=$IDE_HOME/jdk-7u45-macosx-x64/Contents/Home
#export PATH=$JRE_HOME/bin:$JAVA_HOME/bin

export JBOSS_HOME=$IDE_HOME/jboss-as-7.1.3.Final
export PATH=$M2_HOME/bin:$JBOSS_HOME/bin:$HOME/.jenv/bin:$PATH

eval "$(jenv init -)"
eval "$(rbenv init -)"

if [ -f ~/bin/common_functions.sh ]; then
	source ~/bin/common_functions.sh
	normalTerminal
fi
