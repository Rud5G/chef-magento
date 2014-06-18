

# All Dev, Test, Acceptance Environments
unless node.chef_environment == 'production'

    # This is a dependency of MailCatcher
    case node['platform_family']
      when 'debian'
        package 'sqlite'
        package 'libsqlite3-dev'
      when 'rhel', 'fedora', 'suse'
        package 'libsqlite3-dev'
      else
        # type code here
        Chef::Log.warn('Unsupported platform_family: '+ node['platform_family'])
    end

    # Install MailCatcher
    gem_package 'mailcatcher'

    #bash 'install_mailcatcher' do
    #  #not_if 'which mailcatcher'
    #  code 'gem install mailcatcher --no-ri --no-rdoc'
    #end

    # Generate the startmailcatchcommand
    startmailcatchcommand = sprintf('mailcatcher --http-ip %s --http-port %s --smtp-ip %s --smtp-port %s', node['mailcatcher']['http-ip'], node['mailcatcher']['http-port'], node['mailcatcher']['smtp-ip'], node['mailcatcher']['smtp-port'])

    Chef::Log.info("start mailcatch command = #{startmailcatchcommand}")

    # Start MailCatcher
    bash 'mailcatcher' do
      not_if 'ps ax | grep -E "mailcatche[r]"'
      code startmailcatchcommand
    end

    directory node['php']['ext_conf_dir'] do
      recursive true
      action :create
    end

    # Publish PHP configuration
    template File.join(node['php']['ext_conf_dir'], 'mailcatcher.ini') do
      source 'mailcatcher.ini.erb'
      owner 'root'
      group 'root'
      mode '0644'
      action :create
    end

end
