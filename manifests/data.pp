class mysql::data {

  $expire_logs_days = extlookup('mysql_expire_logs_days', '3')
  $innodb_buffer_pool_size = extlookup('mysql_innodb_buffer_pool_size', '256M')
  $long_query_time = extlookup('mysql_long_query_time', '1.000000')
  $max_connections = extlookup('mysql_max_connections', '250')

}
