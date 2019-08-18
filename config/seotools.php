<?php

return [
    'meta'      => [
        /*
         * The default configurations to be used by the meta generator.
         */
        'defaults'       => [
            'title'        => "Tinh Dầu Tràm , Chè Vằng Lợi Sữa , Thiết kế website | Thu Hiền Store", // set false to total remove
            'description'  => 'Hà Anh Shop siêu thị chuyên bán thực phẩm chức năng , các sản phẩm handmade dành cho mẹ và bé', // set false to total remove
            'separator'    => ' - ',
            'keywords'     => [],
            'canonical'    => false, // Set null for using Url::current(), set false to total remove
            'robots'       => false, // Set to 'all', 'none' or any combination of index/noindex and follow/nofollow
        ],

        /*
         * Webmaster tags are always added.
         */
        'webmaster_tags' => [
            'google'    => null,
            'bing'      => null,
            'alexa'     => null,
            'pinterest' => null,
            'yandex'    => null,
        ],
    ],
    'opengraph' => [
        /*
         * The default configurations to be used by the opengraph generator.
         */
        'defaults' => [
            'title'       => 'Tinh Dầu Tràm , Chè Vằng Lợi Sữa , Thiết kế website | Thu Hiền Store', // set false to total remove
            'description' => '', // set false to total remove
            'url'         => 'http://thuhienstore.club/', // Set null for using Url::current(), set false to total remove
            'type'        => 'article',
            'site_name'   => 'Tinh Dầu Tràm , Chè Vằng Lợi Sữa , Thiết kế website | Thu Hiền Store',
            'images'      => ['http://thuhienstore.club/documents/website/images/e4625bf314bd085beea0bd73bb354a71.png'],
        ],
    ],
    'twitter' => [
        /*
         * The default values to be used by the twitter cards generator.
         */
        'defaults' => [
          'card'        => 'http://thuhienstore.club/documents/website/images/e4625bf314bd085beea0bd73bb354a71.png',
			'title' => 'Tinh Dầu Tràm , Chè Vằng Lợi Sữa , Thiết kế website | Thu Hiền Store',
          'site'        => '@ngoctuanit07',
			'creator' => '@ngoctuanit07',
			'description' =>'Hà Anh Shop siêu thị chuyên bán thực phẩm chức năng , các sản phẩm handmade dành cho mẹ và bé'
        ],
    ],
];
