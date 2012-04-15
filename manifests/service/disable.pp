class mysql::service::disable inherits mysql::service {

  Service['mysql-server'] { ensure => stopped, enable => false, }

}
