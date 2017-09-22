class apache {
   package {"httpd":
     ensure => installed,
   } -> 
   file {"/var/www/html/index.html":
     ensure => present,
     content => template('apache/index.html.erb'),
  } ->
  service {"httpd":
    ensure => running,
  }
}
