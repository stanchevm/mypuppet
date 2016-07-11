class java8 ($version = 'installed'){
  anchor {'java8::begin':}
  ->
  package {'java-1.8.0-openjdk-devel':
    ensure => $version,
    }
  anchor {'java8::end':}
}
