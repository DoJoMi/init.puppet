class sshd {

    package { 'openssh-server':
        ensure => latest
    }

    service { 'sshd':
        subscribe => File[sshd_config],
        require => Package['openssh-server'],
    }

    file{'sshd_config':
        ensure => file,
        owner => root,
        group => root,
        mode => 0600,
        path => '/etc/ssh/sshd_config',
        source => "puppet:///modules/sshd/sshd_config",
        require => Package['openssh-server'],
    }
}
