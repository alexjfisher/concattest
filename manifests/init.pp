class concattest
{
  $path = '/tmp/concattest'
  concattest::file { $path:
    ensure => 'present',
  }

  concat::fragment{ 'header':
    target  => $path,
    content => '# Foobar',
    order   => '01',
  }
}
