class mysql::install {

  package { 'mysql-server':
    ensure => present,
    name   => $mysql::params::packagename,
  }

  realize Package['maatkit','mysql-client']

}
