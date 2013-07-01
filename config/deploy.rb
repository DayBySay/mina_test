require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
# require 'mina/rbenv'  # for rbenv support. (http://rbenv.org)
# require 'mina/rvm'    # for rvm support. (http://rvm.io)

# Basic settings:
#   domain       - The hostname to SSH to.
#   deploy_to    - Path to deploy into.
#   repository   - Git repo to clone from. (needed by mina/git)
#   branch       - Branch name to deploy. (needed by mina/git)

set :domain, 'androbk-dev01.ec2'
set :deploy_to, '/export/home/t-sei/mina'
set :repository, 'git@github.com:Takachon/mina_test.git'
set :branch, 'master'


# Optional settings:
set :user, 't-sei'    # Username in the server to SSH to.
#   set :port, '30000'     # SSH port number.

desc "Deploys the current version to the server."
task :deploy => :environment do
  deploy do
    # Put things that will set up an empty directory into a fully set-up
    # instance of your project.
    invoke :'git:clone'

  end
end
