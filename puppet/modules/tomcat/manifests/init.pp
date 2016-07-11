class tomcat ($version = 'installed') {
  anchor {'tomcat::begin':}
  ->
  package {'apache-tomcat-apis.noarch':
    ensure => $version,
    }
  anchor {'tomcat::end':}
}
