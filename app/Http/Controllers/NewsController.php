<?php
	
	namespace App\Http\Controllers;
	
	use App\Http\Controllers\Controller;
	use App\Models\Subscribe;
	use Illuminate\Http\Request;
	use App\Models\CmsNews;
	use App\Models\CmsNewsDescription;
	use SEOMeta;
	use OpenGraph;
	use Twitter;
	use Analytics;
	use Spatie\Analytics\Period;
	use Spatie\SchemaOrg\Schema;
	use Helper;
## or
	use SEO;
	use Mail;
	use View;
	
	class NewsController extends Controller
	{
		//
		public $configs;
		public $configsGlobal;
		
		public function __construct()
		{
			parent::__construct();
			//=======Config====
			$configs = \Helper::configs();
			$configsGlobal = \Helper::configsGlobal();
			//============end config====
			$this->configsGlobal = $configsGlobal;
			$this->configs = $configs;
			
		}
		
		public function tintuc()
		{
			$news = (new CmsNews)->getItemsNews($limit = "", $opt = 'paginate');
			return view(SITE_THEME . '.cms_news',
				array(
					'title' => trans('Tin tức và sự kiện'),
					'description' => $this->configsGlobal['description'],
					'keyword' => $this->configsGlobal['keyword'],
					'news' => $news,
					
				)
			);
		}
		
		public function tintucDetail($name, $id)
		{
			$news_currently = CmsNews::find($id);
			//print_r($news_currently); die();
			//$ngayDang = ($news_currently) ? $news_currently->created_at : trans('language.not_found');
			//print_r($news_currently['created_at']->date); die();
		//	$news_currently->visits()->increment();
		//	$countPost = $news_currently->visits()->count();
			$Analytics = Analytics::fetchMostVisitedPages(Period::days(7));
			//print_r($Analytics); die();
			if ($news_currently) {
				$title = ($news_currently) ? $news_currently->title : trans('language.not_found');
				SEOMeta::setTitle($title);
				//SEOMeta::setDescription($page->title);
				SEOMeta::addMeta('article:section', $title, 'property');
				SEOMeta::addKeyword([(new CmsNews)->getKeywordById($id)]);
				//OpenGraph::setDescription($product->description);
				OpenGraph::setTitle($title);
				OpenGraph::setUrl('https://thuhienstore.club/');
				OpenGraph::addProperty('type', 'article');
				OpenGraph::addProperty('locale', 'vi-VN');
				Twitter::setTitle($title); // title of twitter card tag
				Twitter::setSite('@ngoctuanit07'); // site of twitter card tag
				//Twitter::setDescription($page->title); // description of twitter card tag
				Twitter::setUrl('https://thuhienstore.club/'); // url of twitter card tag
				$localBusiness = Schema::WebSite()
					->name($title)
					->email('tuannguyen0719@gmail.com')
					->url(route('newsDetail',['name' => Helper::strToUrl($title),'id'=>$id]))
					->telephone('0976522437')
					->contactPoint(Schema::contactPoint()->areaServed((new CmsNews)->getDescriptionById($id)));
				//print_r($localBusiness->toArray()); die();
				$scheama = $localBusiness->toArray();
				return view(SITE_THEME . '.cms_news_detail',
					array(
						'title' => $title,
					'analytics' => $Analytics,
					//	'ngaydang'=>$ngayDang->date,
						'news_currently' => $news_currently,
						'baivietkhacs' => (new CmsNews)->getBaiVietKhac($id),
						//'count' => $countPost,
						'scheama' => $scheama,
						'description' => (new CmsNews)->getDescriptionById($id),
						'keyword' => (new CmsNews)->getKeywordById($id),
						'blogs' => (new CmsNews)->getItemsNews($limit = 4),
						'og_image' => url(SITE_PATH_FILE . '/' . $news_currently->image),
					)
				);
			} else {
				return view(SITE_THEME . '.notfound',
					array(
						'title' => trans('language.not_found'),
						'description' => '',
						'keyword' => $this->configsGlobal['keyword'],
					)
				);
			}
		}
		
		
	}
