class nginx {
	package { 'apache2.2-common' :
		ensure => absent,
	}
	package { 'nginx':
		ensure => installed,
	}

	service { 'nginx':
		ensure => running,
		require => Package['nginx'],
		enable => true,
	}
	file { '/etc/nginx/sites-enabled/default':
    		source => 'puppet:///modules/nginx/cat-pictures.conf',
    		notify => Service['nginx'],
	}	
} 

