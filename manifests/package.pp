class acct::package {

  $enabled = $acct::enable

  package { 'acct':
    ensure => $enabled,
  }

}
