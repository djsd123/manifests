

node 'puppetmaster' {

  package {'nmap':
    ensure  =>  installed,
  }

  file {'/usr/local/bin/papply': 
    mode    =>  '0755',
    source  =>  "puppet:///modules/puppet/papplyu.sh",

  }

}

node 'ip-172-31-39-36' {
  include puppet

  package {'nmap':
    ensure  =>  installed,
  }

}


