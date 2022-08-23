class profile::seat_movement(
    String $pg_server = '127.0.0.1',
    String $pg_password = '123',
) {
    class { 'nginx': }
    group { 'seatmovement':
        ensure => present,
    }
    user { 'seatmovement':
        ensure     => present,
        forcelocal => true,
        system     => true,
        managehome => true,
        gid        => 'seatmovement',
    }
    file { '/var/log/seatmovement':
        ensure => directory,
        mode   => '0644',
        owner  => 'nginx',
        group  => 'root',
    }
