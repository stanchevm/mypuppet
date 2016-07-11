class apache ($version = 'installed') {
  anchor { 'apache::begin':}
  ->
  package { 'httpd.x86_64':
    ensure => $version,
    }
  ->
  file_line { 'httpd.conf':
    path  => '/etc/httpd/conf/httpd.conf',
    line  => 'ServerName www.test.domain.com',
    match => '^ServerName',
    }
  ~>
  service { 'httpd':
    ensure => 'running',
    enable => true,
    }
  anchor { 'apache::end':}
}
