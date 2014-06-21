namespace :environment do
  task :common do
    set :image, 'darron/centurion-test'
    # Point this to an appropriate health check endpoint for rolling deploys (defaults to '/')
    # set :status_endpoint, '/status/check'
  end
   desc 'Staging environment'
  task :staging => :common do
    set_current_environment(:staging)
    # env_vars YOUR_ENV: 'staging'
    # host_port 10234, container_port: 9292
    # host 'docker-server-staging-1.example.com'
    # host 'docker-server-staging-2.example.com'
  end
   desc 'Production environment'
  task :production => :common do
    set_current_environment(:production)
    # env_vars YOUR_ENV: 'production'
    host_port 23235, container_port: 80
    host '192.168.0.16'
    host '192.168.0.41'
    host '192.168.0.42'
    # host_volume '/mnt/volume1', container_volume: '/mnt/volume1'
  end
end
