# common alias
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias gmom="git merge origin/master"

# shells
alias gacp='sh /etc/profile.d/git/git-add-commit-push.sh'
alias conflict='sh /etc/profile.d/git/conflict-merge.sh'
alias delete='sh /etc/profile.d/git/branch-delete.sh'

# maven command alias
alias minst='mvn install -Dmaven.test.skip=true'

alias mcc='mvn clean compile -U -X -e -Dmaven.test.skip=true'
alias mci='mvn clean install -Dmaven.test.skip=true'
alias mpkg='mvn package -Dmaven.test.skip=true'
alias md='mvn deploy -Dmaven.test.skip=true'
alias mp='mkdir /tmp/eless & mkdir /tmp/eless/conf/ & cd /tmp/eless/conf/ & touch config.properties & mvn package -Dmaven.test.skip=true -Pdeploy'
alias tree='mvn dependency:tree>tree.log'

# java
export JAVA_8_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home"
export JAVA_7_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_65.jdk/Contents/Home"
export PATH=".:$PATH:$JAVA_HOME/bin"
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
export CATALINA_HOME="/Users/yuanlang/binary/apache-tomcat-8.5.4"
export PATH=".:$PATH:$CATALINA_HOME/bin"
export CLASS_PATH="$JAVA_HOME/lib"
export PATH=$PATH:$CLASS_PATH

# spark
export SPARK_HOME="/Users/yuanlang/binary/spark-2.0.0-bin-hadoop2.7"
export PATH=$PATH:$SPARK_HOME/bin

# scala
export SCALA_HOME="/Users/yuanlang/binary/scala-2.11.8"
export PATH=$PATH:$SCALA_HOME/bin

# hadoop
export HADOOP_HOME="/Users/yuanlang/binary/hadoop-2.7.3"
export PATH=$PATH:$HADOOP_HOME/bin
alias start-hadoop='sh $HADOOP_HOME/sbin/start-all.sh'

# hive
export HIVE_HOME="/Users/yuanlang/binary/apache-hive-2.1.0"
export PATH=$PATH:$HIVE_HOME/bin

# maven
export M2_HOME="/Users/yuanlang/binary/apache-maven-3.3.9"
export PATH="$JAVA_HOME/bin:$M2_HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH"
