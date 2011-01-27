set :application, "checkin_1"
set :user, "root"
set :use_sudo, true
set :scm, :git
set :repository,  "git@github.com:ankuramzn/checkin_1.git"
set :deploy_via, :copy


ssh_options[:keys] = ["#{ENV['HOME']}/.ec2/ec2-keypair"]


role :web, "ec2-75-101-215-57.compute-1.amazonaws.com", "ec2-184-72-85-22.compute-1.amazonaws.com"                          # Your HTTP server, Apache/etc

role :app, "ec2-75-101-215-57.compute-1.amazonaws.com", "ec2-184-72-85-22.compute-1.amazonaws.com"

#role :app,["ec2-75-101-215-57.compute-1.amazonaws.com","ec2-184-72-85-22.compute-1.amazonaws.com"]                          # This may be the same as your `Web` server
role :db,  "ec2-75-101-215-57.compute-1.amazonaws.com", :primary => true # This is where Rails migrations will run


set :rails_env, "production"

set :ec2onrails_config, {

  # Set the server timezone. run "cap -e ec2onrails:server:set_timezone" for
  # details
  :timezone => "Canada/Eastern",

  :services_to_restart => %w(apache2 postfix sysklogd),

  # Set an email address to forward admin mail messages to. If you don't
  # want to receive mail from the server (e.g. monit alert messages) then
  # remove this.
  :admin_mail_forward_address => "ankur.saksena@gmail.com",

  # Set this if you want SSL to be enabled on the web server. The SSL cert
  # and key files need to exist on the server, The cert file should be in
  # /etc/ssl/certs/default.pem and the key file should be in
  # /etc/ssl/private/default.key (see :server_config_files_root).
  :enable_ssl => false
}
