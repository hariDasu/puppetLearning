node 'puppetMaster' {
	include jenkins
	include nginx
	package { 'puppet':
		ensure => latest,
	}	
}
