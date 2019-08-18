<?php
#app/Http/Controller/GeneralController.php
	namespace App\Http\Controllers;
	
	use App\Http\Controllers\Controller;
	use App\Models\Subscribe;
	use Illuminate\Http\Request;
	use SEOMeta;
	use OpenGraph;
	use Twitter;
## or
	use SEO;
	use Mail;
	use View;
	use Spatie\SchemaOrg\Schema;
	
	class GeneralController extends Controller
	{
		public $configs;
		public $configsGlobal;
		
		public function __construct()
		{
			parent::__construct();
			//=====Deferjs====
			$defer = new \shinsenter\Defer();

// Library injection
			$defer->append_defer_js = false;
			$defer->default_defer_time = 10;

// Add custom splash screen
			//$defer->custom_splash_screen = '<div id="splash">Loading</div>';

// Page optimizations
			$defer->enable_preloading = true;
			$defer->enable_dns_prefetch = true;
			$defer->fix_render_blocking = true;
			$defer->minify_output_html = true;

// Tag optimizations
			$defer->enable_defer_css = true;
			$defer->enable_defer_scripts = true;
			$defer->enable_defer_images = true;
			$defer->enable_defer_iframes = true;
			$defer->enable_defer_background = true;
			$defer->enable_defer_fallback = true;

// Web-font optimizations
			$defer->defer_web_fonts = true;
			//=====end=======
			//=======Config====
			$configs = \Helper::configs();
			$configsGlobal = \Helper::configsGlobal();
			//============end config====
			$this->configsGlobal = $configsGlobal;
			$this->configs = $configs;
			
			
		}
		
		/**
		 * [emailSubscribe description]
		 * @param  Request $request [description]
		 * @return [type]           [description]
		 */
		public function emailSubscribe(Request $request)
		{
			$data = $request->all();
			$validator = $request->validate([
				'subscribe_email' => 'required|email',
			], [
				'subscribe_email.required' => trans('validation.required'),
				'subscribe_email.email' => trans('validation.email'),
			]);
			
			$checkEmail = Subscribe::where('email', $data['subscribe_email'])->first();
			if (!$checkEmail) {
				Subscribe::insert(['email' => $data['subscribe_email']]);
			}
			return redirect()->back()->with(['message' => trans('language.subscribe.subscribe_success')]);
		}
		
		public function pageNotFound()
		{
			return view(SITE_THEME . '.notfound',
				array(
					'title' => '404 - Page not found',
					'msg' => trans('language.page_not_found'),
					'description' => '',
					'keyword' => '',
				
				)
			);
		}
		
		public function itemNotFound()
		{
			return view(SITE_THEME . '.notfound',
				array(
					'title' => '404 - Item not found',
					'msg' => trans('language.item_not_found'),
					'description' => '',
					'keyword' => '',
				
				)
			);
		}
		
	}
