default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = 6
default['java']['oracle']['accept_oracle_download_terms'] = true
default['QualiMap']['version'] = 'v2.1.1'
default['QualiMap']['filename'] = 'qualimap_' + default['QualiMap']['version'] + '.zip'
default['QualiMap']['url'] = 'https://bitbucket.org/kokonech/qualimap/downloads/' + default['QualiMap']['filename']  
default['QualiMap']['install_dir'] = '/usr/local/'
default['QualiMap']['dir'] = default['QualiMap']['install_dir'] + 'qualimap_' + default['QualiMap']['version']
default['QualiMap']['bin_path'] = '/usr/local/bin'   

