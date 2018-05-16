class acct::service {

  case $acct::enable {
    true: {
      $ensure = 'running'
      $enable = true
    }
    false: {
      $ensure = 'stopped'
      $enable = false
    }
  }

  file { '/var/log/pacct':
    ensure => present,
    mode   => '0600',
  } ->
  service { 'acct':
    ensure => $ensure,
    enable => $enable,
  }

}
