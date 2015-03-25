

node 'puppetmaster', 'ip-172-31-39-36' {
  package {'nmap':
    ensure  =>  installed,
  }

}


