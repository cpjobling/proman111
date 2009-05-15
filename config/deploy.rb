set :application, "proman"
set :repository,  "git://github.com/cpjobling/Proman.git"
set :domain, 'eespectre.swan.ac.uk'
set :user, 'eechris'
set :use_sudo, false

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/opt/apps/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git

role :app, domain
role :web, domain
role :db,  domain, :primary => true