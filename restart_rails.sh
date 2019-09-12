kill -9 `cat tmp/pids/server.pid`
echo "Changes Detected.. Rebooted Server !"
rails server -e development