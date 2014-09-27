node 'puppetMaster' {
	package { 'puppet':
		ensure => latest,
	}	
}
node 'webCrawling.ec2.internal' {
	include scala
	package { 'puppet':
		ensure => latest,
	}
}
