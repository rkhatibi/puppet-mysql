class mysql {

  include mysql::params, mysql::data
  include mysql::install, mysql::config, mysql::service
  Class['mysql::install'] -> Class['mysql::config'] -> Class['mysql::service']

  case $::operatingsystem {
    Ubuntu: {
      include apparmor
      include apparmor::mysql
      Class['mysql::install'] -> Class['apparmor::mysql']
    }
    default: {}
  }

}
