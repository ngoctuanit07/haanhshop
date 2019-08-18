<?php

namespace App\Http\Controllers;
use Spatie\SchemaOrg\Schema;
use Analytics;
use Spatie\Analytics\Period;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function __construct()
    {
        //Config for  email
        $configs       = \Helper::configs();
        $configsGlobal = \Helper::configsGlobal();
        $languages     = \Helper::languages();
        $currencies    = \Helper::currencies();
        $layouts       = \Helper::layouts();
        $layoutsUrl    = \Helper::layoutsUrl();
		$localBusiness = Schema::WebSite()
			->name('Thu hiền Store')
			->email('tuannguyen0719@gmail.com')
			->url('https://thuhienstore.club/')
			->telephone('0976522437')
			->contactPoint(Schema::contactPoint()->areaServed('Hà Anh Shop siêu thị chuyên bán thực phẩm chức năng , các sản phẩm handmade dành cho mẹ và bé'));
		//print_r($localBusiness->toArray()); die();
		$scheama = $localBusiness->toArray();
		//print_r($scheama['@context']); die();
		//fetch the most visited pages for today and the past week
	//	$Analytics = Analytics::fetchMostVisitedPages(Period::days(7));
	//	print_r($Analytics); die();
        config(['app.name' => $configsGlobal['title']]);
        config(['mail.driver' => 'smtp']);
        config(['mail.host' => empty($configs['smtp_host']) ? env('MAIL_HOST', '') : $configs['smtp_host']]);
        config(['mail.port' => empty($configs['smtp_port']) ? env('MAIL_PORT', '') : $configs['smtp_port']]);
        config(['mail.encryption' => empty($configs['smtp_security']) ? env('MAIL_ENCRYPTION', '') : $configs['smtp_security']]);
        config(['mail.username' => empty($configs['smtp_user']) ? env('MAIL_USERNAME', '') : $configs['smtp_user']]);
        config(['mail.password' => empty($configs['smtp_password']) ? env('MAIL_PASSWORD', '') : $configs['smtp_password']]);
        config(['mail.from' =>
            [
                'address' => $configsGlobal['email'],
                'name'    => $configsGlobal['title'],
            ],
        ]
        );
        //email
		//view()->share('analytics', $Analytics[0]['pageViews']);
		view()->share('scheama', $scheama);
        view()->share('configsGlobal', $configsGlobal);
        view()->share('configs', $configs);
        view()->share('languages', $languages);
        view()->share('currencies', $currencies);
        view()->share('layouts', $layouts);
        view()->share('layoutsUrl', $layoutsUrl);
        if (defined('SITE_TITLE')) {
            define('SITE_TITLE', $configsGlobal['title']);
        }
        if (!defined('SITE_THEME')) {
            define('SITE_THEME', 'templates.' . $configsGlobal['template']);
        }
        if (!defined('SITE_THEME_ASSET')) {
            define('SITE_THEME_ASSET', 'templates/' . $configsGlobal['template']);
        }
        if (!defined('SITE_PATH_FILE')) {
            define('SITE_PATH_FILE', config('filesystems.disks.path_file', ''));
        }
        if (!defined('SITE_LOGO')) {
            define('SITE_LOGO', config('filesystems.disks.path_file', '') . '/' . $configsGlobal['logo']);
        }

    }
}
