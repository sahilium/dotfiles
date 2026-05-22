function hadoop
    set cmd $argv[1]

    set HADOOP_HOME $HOME/Apps/hadoop-3.4.1
    set PATH $HADOOP_HOME/bin $HADOOP_HOME/sbin $PATH
	  # set JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64

    set -gx HADOOP_HOME $HADOOP_HOME
    set -gx PATH $PATH
    set -gx HADOOP_CONF_DIR $HADOOP_HOME/etc/hadoop
    set -gx HADOOP_LOG_DIR $HADOOP_HOME/logs
    set -gx HADOOP_PID_DIR $HADOOP_HOME/pids
    set -gx HADOOP_TMP_DIR $HADOOP_HOME/tmp
		set -gx PDSH_RCMD_TYPE ssh

    mkdir -p $HADOOP_LOG_DIR $HADOOP_PID_DIR $HADOOP_TMP_DIR $HADOOP_HOME/fsroot

    switch $cmd
        case start
            start-dfs.sh
            start-yarn.sh
        case stop
            stop-yarn.sh
            stop-dfs.sh
        case reset
            rm -rf $HADOOP_TMP_DIR $HADOOP_HOME/fsroot $HADOOP_LOG_DIR $HADOOP_PID_DIR
            mkdir -p $HADOOP_TMP_DIR $HADOOP_HOME/fsroot $HADOOP_LOG_DIR $HADOOP_PID_DIR
            hdfs namenode -format
        case shell
            echo "Hadoop env loaded. Run commands here."
        case ''
            echo "Usage: hadoop [start|stop|reset|shell]"
        case '*'
            echo "Unknown command: $cmd"
    end
end
