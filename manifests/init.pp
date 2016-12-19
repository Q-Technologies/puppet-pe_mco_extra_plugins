# == Class: pe_mco_extra_plugins
#
# A module to manage the MCollective Plugins
#
class pe_mco_extra_plugins(
  # Class parameters are populated from module hiera data
  String $path,
  Collection $dirs,
  Collection $files,
) {

  $files.each | $type, $list | {
    $dirs.each | $dir | {
      file { "${path}/${type}/${dir}":
        ensure => directory,
        mode   => '0755',
      }
    }
    $list.each | $file | {
      file { "${path}/${type}/${file}":
        ensure  => file,
        source  => "puppet:///modules/pe_mco_extra_plugins/${type}/${file}",
        mode   => '0644',
      }
    }
  }

}



