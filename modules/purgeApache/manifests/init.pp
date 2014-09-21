class purgeApache {
	package { 'apache2':
	  ensure => purged,
	}

	exec { 'autoremove':
	  command => '/usr/bin/apt-get autoremove --purge -y',
	  subscribe => Package["apache2"],
	  refreshonly => true,
	}	
}
