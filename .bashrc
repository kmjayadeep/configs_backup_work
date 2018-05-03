# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions



#Path
PATH="$PATH:$HOME/.yarn/bin:~/Apps/neo/tools:/home/I341935/Apps/jarvis"


#Alias
alias bashrc='nano ~/.bashrc;source ~/.bashrc'
alias runsteam='LIBGL_DRI3_DISABLE=1 steam'
alias o='xdg-open'
alias hana='cd ~/Apps/SAP\ Hana\ Studio;./hdbstudio -vmargs -Djava.net.preferIPv4Stack=true'
#alias python='/bin/python3.6'
#alias pip='/bin/pip3.6'
alias push='git push origin --all'
alias pull='git pull origin --all'
alias c='xclip -selection c'
alias v='xclip -o'
alias pass='~/Apps/pass/src/password-store.sh'
alias playnotif='mplayer ~/Music/notification.mp3'

#work alias
alias deploy-stlucia='neo.sh deploy --host eu1.hana.ondemand.com  --account a41626a5e --application reportingapplication --source ~/workspace/projects/lms_loc_rep/SFLMSReporting/target/SFLMSReporting.war --user I341935 -p $(pass sap/i341935)'
alias restart-stlucia='neo.sh restart --application reportingapplication --account a41626a5e --host eu1.hana.ondemand.com --user I341935 -y -p $(pass sap/i341935)'
alias update-stlucia='cd ~/workspace/projects/lms_loc_rep/SFLMSReporting; mvn clean install && deploy-stlucia  && restart-stlucia && playnotif'

alias deploy-telefonica='neo.sh deploy --host eu1.hana.ondemand.com  --account a4cf48a66 --application lmsclient --source ~/workspace/projects/lms_loc_rep/SFLMSReporting/target/SFLMSReporting.war --user I341935 -p $(pass sap/i341935)'
alias restart-telefonica='neo.sh restart --application lmsclient --account a4cf48a66 --host eu1.hana.ondemand.com --user I341935 -y -p $(pass sap/i341935)'
alias update-telefonica='cd ~/workspace/projects/lms_loc_rep/SFLMSReporting; mvn clean install && deploy-telefonica  && restart-telefonica && playnotif'

alias deploy-sabadell='neo.sh deploy --host eu1.hana.ondemand.com  --account a3dd5186f --application lmsreporting --source ~/workspace/projects/lms_loc_rep/SFLMSReporting/target/SFLMSReporting.war --user I341935 -p $(pass sap/i341935)'
alias restart-sabadell='neo.sh restart --application lmsreporting --account a3dd5186f --host eu1.hana.ondemand.com --user I341935 -y -p $(pass sap/i341935)'
alias update-sabadell='cd ~/workspace/projects/lms_loc_rep/SFLMSReporting; mvn clean install && deploy-sabadell  && restart-sabadell && playnotif'

alias deploy-viesgo='neo.sh deploy --host eu1.hana.ondemand.com  --account a71230b2a --application lmsreporting --source ~/workspace/projects/lms_loc_rep/SFLMSReporting/target/SFLMSReporting.war --user I341935 -p $(pass sap/i341935)'
alias restart-viesgo='neo.sh restart --application lmsreporting --account a71230b2a --host eu1.hana.ondemand.com --user I341935 -y -p $(pass sap/i341935)'
alias update-viesgo='cd ~/workspace/projects/lms_loc_rep/SFLMSReporting; mvn clean install && deploy-viesgo  && restart-viesgo && playnotif'

alias update-local='cd ~/workspace/projects/lms_loc_rep/SFLMSReporting; mvn clean install -DskipTests -Dfindbugs.skip=true  && neo.sh deploy-local -s target/SFLMSReporting.war'

alias derbystart='java -jar /opt/Apache/derby/lib/derbyrun.jar server start'
alias ij='java org.apache.derby.tools.ij'
alias razorsql='/home/I341935/Apps/razorsql/razorsql/RazorSQL'

alias tunnelsabadell='https_proxy="" neo.sh open-db-tunnel -h eu1.hana.ondemand.com -u I341935 -a a3dd5186f --id sabadelldb'
alias tunneltelefonica='https_proxy="" neo.sh open-db-tunnel -h eu1.hana.ondemand.com -u I341935 -p $(pass sap/i341935) -a a4cf48a66 --id lmslocframework'
alias serverlogs='subl /home/I341935/Apps/neo/server/log/catalina.out'

alias mta='java -jar /home/I341935/Apps/mta/mta.jar'
alias vpn='f5connect.sh https://connectblrl04.sap.com/my.policy'

#variables
export SNC_LIB=/home/I341935/Apps/ssoclient_skript/libsapcrypto.so; export SECUDIR=/dev/shm/ssoclient-3341935
export JAVA_HOME=/usr/java/sapjvm_8.1.005
export JRE_HOME=/usr/java/sapjvm_8.1.005/jre
export DERBY_HOME=/opt/Apache/derby
export DERBY_INSTALL=/opt/Apache/derby
export CLASSPATH=$DERBY_INSTALL/lib/derby.jar:$DERBY_INSTALL/lib/derbytools.jar:.
export PATH=/root/anaconda3/bin:$PATH

alias fucking="sudo yum"


#powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
/usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
