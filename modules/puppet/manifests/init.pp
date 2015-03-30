class puppet {
  file {'/usr/local/bin/papply':
    source  => 'puppet:///modules/puppet/papply.sh',
    mode    => '0755',
  }

  file {'/usr/local/bin/pull-updates':
    source  => 'puppet:///modules/puppet/pull-updates.sh',
    mode    => '0755',
  }

  file {'/home/centos/.ssh/id_rsa':
    source  => 'puppet:///modules/puppet/puppy.priv',
    owner   => 'centos',
    mode    => '0600',
  }

  cron {'run-puppet':
    ensure  => 'present',
    user    => 'centos',
    command => '/usr/local/bin/pull-updates',
    minute  => '*/10',
    hour    => '*',
  }

}
