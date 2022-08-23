class profile::seat_movement(
    String $pg_server = '127.0.0.1',
    String $pg_password = '123',
) {
    class { 'nginx': }
