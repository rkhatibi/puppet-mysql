class mysql::params {

  $packagename = $::operatingsystem ? {
    default => 'mysql-server',
  }

  $servicename = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => 'mysql',
    /(?i:CentOS|Fedora)/ => 'mysqld',
  }

  $processname = $::operatingsystem ? {
    default => 'mysqld',
  }

  $hasstatus = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => false,
    /(?i:CentOS|Fedora)/ => true,
  }

  $configfile = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => '/etc/mysql/my.cnf',
    /(?i:CentOS|Fedora)/ => '/etc/my.cnf',
  }

  $configfile_mode = $::operatingsystem ? {
    default => '0644',
  }

  $configfile_owner = $::operatingsystem ? {
    default => 'root',
  }

  $configfile_group = $::operatingsystem ? {
    default => 'root',
  }

  $configdir = $::operatingsystem ? {
    default => '/etc/mysql/conf.d',
  }

  $initconfigfile = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => '/etc/default/mysql',
    /(?i:CentOS|Fedora)/ => '/etc/sysconfig/mysqld',
  }

}
