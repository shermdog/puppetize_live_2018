# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include profile::network_dns
class profile::network_dns (
  String $domain,
  Boolean $noop = false,
) {

  $settings = $facts['operatingsystem'] ? {
    'nexus'       => 'settings',
    'cisco_ios'   => 'default',
  }

  network_dns { $settings:
    domain => $domain,
    noop   => $noop,
    ensure => 'present',
  }

}