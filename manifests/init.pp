# Puppet module to enable process accounting

class acct(
  $enable = true,
) {

   case $::kernel {
    Linux: {
    }
    default: {
      fail("The ${module_name} module is not yet supported on ${::osfamily}")
    }
  } 

  validate_bool($enable)

  class { 'acct::package': } ->
  class { 'acct::service': }
}
