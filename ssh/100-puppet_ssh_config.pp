# used puppet to ssh config
file { '/home/vagrant/.ssh/config':
  ensure  => file,
  mode    => '0600',
  owner   => 'vagrant',
  group   => 'vagrant',
}

file_line { 'Declare identity file':
  path  => '/home/vagrant/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\s*IdentityFile',
}

file_line { 'Turn off passwd auth':
  path  => '/home/vagrant/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^\s*PasswordAuthentication',
}

file_line { 'Force public key auth':
  path  => '/home/vagrant/.ssh/config',
  line  => '    PubkeyAuthentication yes',
  match => '^\s*PubkeyAuthentication',
}

file_line { 'Define host wildcard':
  path  => '/home/vagrant/.ssh/config',
  line  => 'Host *',
  match => '^Host \*',
}
