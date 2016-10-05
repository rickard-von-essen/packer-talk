file { 'test_file':
  path    => '/tmp/test_file.txt',
  ensure  => file,
  content => 'Example puppet run with Packer',
}
