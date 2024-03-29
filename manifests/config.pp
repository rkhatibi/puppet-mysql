class mysql::config {

  File {
    mode    => $mysql::params::configfile_mode,
    owner   => $mysql::params::configfile_owner,
    group   => $mysql::params::configfile_group,
  }

  file { 'mysql.conf':
    ensure  => present,
    path    => $mysql::params::configfile,
    source  => "puppet:///modules/mysql/my.cnf.$::operatingsystem",
  }

  file { 'general_mysql.cnf':
    ensure  => present,
    path    => "${mysql::params::configdir}/general_mysql.cnf",
    content => template('mysql/general_mysql.cnf.erb'),
  }

  file { 'innodb_mysql.cnf':
    ensure  => present,
    path    => "${mysql::params::configdir}/innodb_mysql.cnf",
    content => template('mysql/innodb_mysql.cnf.erb'),
  }

  file { 'logging_mysql.cnf':
    ensure  => present,
    path    => "${mysql::params::configdir}/logging_mysql.cnf",
    content => template('mysql/logging_mysql.cnf.erb'),
  }

  file { 'repl_mysql.cnf':
    ensure  => present,
    path    => "${mysql::params::configdir}/repl_mysql.cnf",
    content => template('mysql/repl_mysql.cnf.erb'),
  }

}
