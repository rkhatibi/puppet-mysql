class mysql::service {

  service { 'mysql-server':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => $mysql::params::hasstatus,
    name       => $mysql::params::servicename,
    pattern    => $mysql::params::processname,
  }

}
