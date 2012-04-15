class mysql::service::disableboot inherits mysql::service {

  Service['mysql-server'] { enable => false, }

}
