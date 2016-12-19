# puppet-pe_mco_extra_plugins

Puppet module to pull in some extra MCO plugins into Puppet enterprise

At the moment the activated plugins are hard coded, maybe it will be more flexible in the future.

## Install
Call in with you Puppetfile:
```
mod 'qtechnologies/pe_mco_extra_plugins',
  :git    => 'https://github.com/Q-Technologies/puppet-pe_mco_extra_plugins',
  :branch => 'master'
```
Then invoke in your puppet code:
```
class { 'pe_mco_extra_plugins': }
```
