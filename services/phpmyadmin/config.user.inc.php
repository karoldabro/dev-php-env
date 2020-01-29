<?php
/* Override Servers array */
$cfg['Servers'] = [
    1 => [
        'auth_type' => 'cookie',
        'host' => 'localhost',
        'port' => getenv('SERVICE_DB_PORT'),
        'verbose' => 'Verbose name 1',
    ],
];
