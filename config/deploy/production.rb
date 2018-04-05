set :deploy_to, deploysecret(:deploy_to)
set :server_name, deploysecret(:server_name)
set :db_server, deploysecret(:db_server)
set :branch, :stable
set :ssh_options, port: deploysecret(:ssh_port)
set :stage, :production
set :rails_env, :production
set :tmp_dir, '/home/bhdevml/tmp'
set :application, 'miapp'
set :bundle_flags, '--quiet' 
set :bundle_bins, %w(rake rails)
set :bundle_path, nil

server '52.16.195.170', user: 'bhdevml', roles: %w{app db web}, port: 333
#server deploysecret(:server1), user: deploysecret(:user), roles: %w(web app db importer)
#server deploysecret(:server2), user: deploysecret(:user), roles: %w(web app db importer cron background)
#server deploysecret(:server3), user: deploysecret(:user), roles: %w(web app db importer)
#server deploysecret(:server4), user: deploysecret(:user), roles: %w(web app db importer)

append :linked_files, "config/database.yml"