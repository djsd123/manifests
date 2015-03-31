node 'puppetmaster' {

  package {'nmap':
    ensure  =>  installed,
  }

  file {'/usr/local/bin/papply': 
    mode    =>  '0755',
    source  =>  "puppet:///modules/puppet/papplyu.sh",

  }

}

