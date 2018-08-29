#!/bin/sh
 
# ----------------------------------------------
# ----------  自动监控tomcat状态 ------------
# ----------------------------------------------
# 环境变量
export JAVA_HOME=/opt/java/jdk1.8.0_181
# tomcat路径
tomcat_d=/opt/java/tomcat_$1
# 监控的页面地址 
url=http://localhost:$1
# 日志输出
log=/tmp/my.log
#linux垃圾回收站
hole=/dev/null

# tomcat启动脚本
startSH=$tomcat_d/bin/startup.sh
# tomcat缓存
cache=$tomcat_d/work

echo "=====" `date +"%Y年 %m月 %d日 %H时 %M分"` "====="  >> $log 

# 获取指定端口的tomcat pid
pid=$(ps -ef |grep tomcat_$1|grep -Ev 'grep|check_tomcat' |awk '{print $2}')

function doIt(){
	if [ $pid ]
	then
		echo "tomcat进程ID存在"
		code=$(curl -s -o $hole -m 10 --connect-timeout 10 $url -w %{http_code}"\n")
		if [ $code -eq 200 ]
		then
			echo "测试链接正常"
		else
			echo "测试链接失败，重启tomcat"
			kill -9 $pid  # 杀掉进程
			sleep 5
			rm -rf $cache # 清理tomcat缓存
			$startSH
		fi
	else
		echo "tomcat进程id不存在，重启中...."
		rm -rf $cache
		$startSH 
	fi
	echo "======================================"
}

doIt >> $log #执行函数，并打印日志
