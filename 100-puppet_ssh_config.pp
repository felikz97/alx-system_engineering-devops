#!/usr/bin/env bash
# Using puppet to make changes to our configuration file

file { 'etc/ssh/ssh_config': 
        ensure => present,

content =>"
	 
	 #SSH Client Configuration
	 host*
	 IdentityFile ~/.ssh/school
	 PasswordAuthentication no
	 ",
}
