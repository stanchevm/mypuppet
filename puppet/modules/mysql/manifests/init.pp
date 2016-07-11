class mysql ($version = 'installed') {
  anchor { 'mysql::begin':}
  ->
  package { 'mysql.x86_64':
    ensure => $version,
    }
  ->
  package { 'mysql-server.x86_64':
    ensure => $version,
    }
  ->
  file { 'my.cnf':
    path  => '/etc/my.cnf',
    }
   ~>
   service { 'mysqld':
     ensure => 'running',
     enable => true,
     }
   ->
   anchor { 'mysql::end': }
} 
