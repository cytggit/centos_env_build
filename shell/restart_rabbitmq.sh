#!/bin/sh

#服务名
server_name=rabbitmq

#进程状态：僵死
st=Z

#rabbitmq进程行数统计
pid=$(ps -aux | grep beam.smp | grep -v grep | awk '{print $2}')

#rabbitmq进程状态统计
course_state=$(ps -aux | grep beam.smp | grep -v grep | awk '{print $8}')


function func(){
        echo "pid：$pid"
        if [ ! $pid ]
        then
                echo "$(date)：5672进程异常，重新启动中"
                /sbin/service rabbitmq-server restart
        else
                echo "course_state：$course_state"
                if [ $course_state == "Z" ]
                then
                        echo "$(date)：5672进程僵死，重新启动中"
                        /sbin/service rabbitmq-server restart
                else
                        echo "$(date)：5672进程正常"
                fi
        fi
}

func >> /var/rabbitmq.log
