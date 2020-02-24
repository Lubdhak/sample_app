kill -9 `cat tmp/pids/server.pid`
echo "Changes Detected.. Rebooted Server !"
rails server -e development

# For Sidekiq open Following 2 in different Terminals
# redis-server
# bundle exec sidekiq -C ./config/sidekiq.yml