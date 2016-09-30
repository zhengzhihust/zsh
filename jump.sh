#!/usr/bin/expect -f
#access 自动登陆线上机器
#use ./ssh.sh ip ?jx (第二个参数指定去那个机房,为空默认去无锡机房，想去嘉兴机房请输入字母：jx)
#wiki http://wiki.mogujie.org/pages/viewpage.action?pageId=35000903
set timeout 3
set ip [lindex $argv 0 ]
set wuxi [lindex $argv 1 ]
set strJumpIp "bastion host"
if {"$wuxi" == "jx"} { set strJumpIp "jiaxing ip" }
set uname yourname
set password yourpasswd
spawn ssh -p 10022 $uname@$strJumpIp
expect "*password*" {send "$password\r"; exp_continue}
expect ">*" {send "$ip\r"; exp_continue}
expect "*yes*" {send "yes\r"; exp_continue}
expect "*password*" {send "$password\r"; exp_continue}
expect "#*"
expect "*password*" {send "$password\r"; exp_continue}
interact
