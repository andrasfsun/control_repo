class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDzLaeoONSaew4RxbfFSacO55QPrJWrLwxdxOszTYrCQuLnPRb7zwaznabNXUFAOrey5gNHCl9tmTsqah0qDS+NWB3SXh8bp7/vmGJVvlWL839KfagYTD9zhjq7DUkiVenf8tdqIjEVqwtuLDRLSLZ3IPKx9belk1mf8/byPYJaHEg4BtOEyjAWFxsRvw0t31a31SRDbqfxfh1OD46VYcYzFVHCXDcAVu+oaF8KIZK9ZXM8tkoUcNc/Cvf1It+tKGN/KQZHST8B0gV/SlcfaVWbeud/RayEW2Szeyo6ozwfK8qkuosDG2RRJ6uaGqG1jvixlhCQmtOH3pYVgIdzfNWx',
  }  
}
