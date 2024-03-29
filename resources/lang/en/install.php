<?php
return [
    'env'               => [
        'process'        => 'Generating file .env',
        'error_open'     => 'Cant not open file .env.example',
        'process_sucess' => 'Generate file .env success!',
        'error'          => 'Error while generating file .env',
    ],
    'key'               => [
        'process'        => 'Generating API key',
        'process_sucess' => 'Generate API key success!',
        'error'          => 'Error while generating API key',
    ],
    'database'          => [
        'process'        => 'Initializing database',
        'process_sucess' => 'Successful initialization!',
        'file_notfound'  => 'Cant not found file .sql',
        'error'          => 'Error while initializing database',
    ],
    'permission'        => [
        'process'        => 'Setting permission folder: storage,vendor,public/documments',
        'process_sucess' => 'Setting permission success!',
        'error'          => 'Error while initializing setting permission folder',
    ],
    'validate'          => [
        'database_port_number'   => 'Database port is number',
        'database_port_required' => 'Database port required',
        'database_host_required' => 'Host databse required',
        'database_name_required' => 'Database name required',
        'database_user_required' => 'Database user required',
        'admin_url_required'     => 'Admin path required',
    ],
    'installing_button' => 'Đang cài đặt S-Cart',
    'database_host'     => 'Database host',
    'database_port'     => 'Database port',
    'database_name'     => 'Database name',
    'database_user'     => 'Database user',
    'database_password' => 'Database pasword',
    'admin_url'         => 'Admin url',
    'title'             => 'Install S-Cart',
    'installing'        => 'Begin Install',
    'rename_error'      => 'Can not rename file install.php. Please remove or rename it!',
];
