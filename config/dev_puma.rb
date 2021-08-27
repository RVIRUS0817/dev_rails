max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

stdout_redirect 'log/puma.stdout.log', 'log/puma.stderr.log'

worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"

#bind "unix://#{Rails.root}/tmp/sockets/puma.sock"
# only dev port
port ENV.fetch("PORT") { 3000 }

environment ENV.fetch("RAILS_ENV") { "development" }

pidfile ENV.fetch("PIDFILE") { "/root/tmp/server.pid" }

plugin :tmp_restart

