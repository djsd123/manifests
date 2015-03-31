node 'ip-172-31-39-36' {
  include puppet

  package {'nmap':
    ensure  =>  installed,
  }

}

