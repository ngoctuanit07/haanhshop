<?php
#app/Http/Controller/ShopFront.php
	namespace App\Http\Controllers;
	
	use App\Models\CmsNews;
	use App\Models\EmailTemplate;
	use App\Models\ShopAttributeGroup;
	use App\Models\ShopBrand;
	use App\Models\ShopCategory;
	use App\Models\ShopOrder;
	use App\Models\ShopOrderStatus;
	use App\Models\ShopPage;
	use App\Models\ShopProduct;
	use App\Models\ShopVendor;
	use App\Models\Contact;
	use Spatie\SchemaOrg\Schema;
	use SEOMeta;
	use OpenGraph;
	use Twitter;
	use SEO;
	use Helper;
	use App\User;
	use Illuminate\Http\Request;
	use Illuminate\Support\Facades\Auth;
	
	class ShopFront extends GeneralController
	{
		public function __construct()
		{
			parent::__construct();
		}
		
		/**
		 * [index description]
		 * @return [type] [description]
		 */
		public function index(Request $request)
		{
			$news = (new CmsNews)->getItemsNews($limit = '', $opt = 'paginate');
			
			return view(SITE_THEME . '.shop_home',
				array(
					'products_new' => (new ShopProduct)->getProducts($type = null, $limit = $this->configs['product_new'], $opt = null),
					'products_hot' => (new ShopProduct)->getProducts($type = 1, $limit = $this->configs['product_hot'], $opt = 'random'),
					'categories' => (new ShopCategory)->getCategoriesAll(),
					'layout_page' => 'home',
					'news' => $news,
				
				)
			);
		}
		
		/**
		 * [getCategories description]
		 * @param  Request $request [description]
		 * @return [type]           [description]
		 */
		public function getCategories(Request $request)
		{
			$sortBy = null;
			$sortOrder = 'asc';
			$filter_sort = request('filter_sort') ?? '';
			$filterArr = [
				'sort_desc' => ['sort', 'desc'],
				'sort_asc' => ['sort', 'asc'],
				'id_desc' => ['id', 'desc'],
				'id_asc' => ['id', 'asc'],
			];
			if (array_key_exists($filter_sort, $filterArr)) {
				$sortBy = $filterArr[$filter_sort][0];
				$sortOrder = $filterArr[$filter_sort][1];
			}
			
			$itemsList = (new ShopCategory)->getCategories($parent = 0, $limit = $this->configs['item_list'], $opt = 'paginate', $sortBy, $sortOrder);
			return view(SITE_THEME . '.shop_item_list',
				array(
					'title' => trans('language.categories'),
					'itemsList' => $itemsList,
					'keyword' => '',
					'description' => '',
					'layout_page' => 'item_list',
					'filter_sort' => $filter_sort,
				));
		}
		
		/**
		 * [productToCategory description]
		 * @param  [type] $key [description]
		 * @return [type]      [description]
		 */
		public function productToCategory($name, $id)
		{
			$sortBy = null;
			$sortOrder = 'asc';
			$filter_sort = request('filter_sort') ?? '';
			$filterArr = [
				'price_desc' => ['price', 'desc'],
				'price_asc' => ['price', 'asc'],
				'sort_desc' => ['sort', 'desc'],
				'sort_asc' => ['sort', 'asc'],
				'id_desc' => ['id', 'desc'],
				'id_asc' => ['id', 'asc'],
			];
			if (array_key_exists($filter_sort, $filterArr)) {
				$sortBy = $filterArr[$filter_sort][0];
				$sortOrder = $filterArr[$filter_sort][1];
			}
			
			$category = (new ShopCategory)->find($id);
			if ($category) {
				$products = $category->getProductsToCategory($id = $category->id, $limit = $this->configs['product_list'], $opt = 'paginate', $sortBy, $sortOrder);
				$itemsList = (new ShopCategory)->getCategories($parent = $id);
				return view(SITE_THEME . '.shop_products_list',
					array(
						'title' => $category->name,
						'description' => $category->description,
						'keyword' => '',
						'products' => $products,
						'itemsList' => $itemsList,
						'layout_page' => 'product_list',
						'og_image' => url($category->getImage()),
						'filter_sort' => $filter_sort,
					)
				);
			} else {
				return $this->itemNotFound();
			}
			
		}
		
		/**
		 * All products
		 * @param  [type] $key [description]
		 * @return [type]      [description]
		 */
		public function allProducts()
		{
			$sortBy = null;
			$sortOrder = 'asc';
			$filter_sort = request('filter_sort') ?? '';
			$filterArr = [
				'price_desc' => ['price', 'desc'],
				'price_asc' => ['price', 'asc'],
				'sort_desc' => ['sort', 'desc'],
				'sort_asc' => ['sort', 'asc'],
				'id_desc' => ['id', 'desc'],
				'id_asc' => ['id', 'asc'],
			];
			if (array_key_exists($filter_sort, $filterArr)) {
				$sortBy = $filterArr[$filter_sort][0];
				$sortOrder = $filterArr[$filter_sort][1];
			}
			
			$products = (new ShopProduct)->getProducts($type = null, $limit = $this->configs['product_list'], $opt = 'paginate', $sortBy, $sortOrder);
			return view(SITE_THEME . '.shop_products_list',
				array(
					'title' => trans('language.all_product'),
					'keyword' => '',
					'description' => '',
					'products' => $products,
					'layout_page' => 'product_list',
					'filter_sort' => $filter_sort,
				)
			);
		}
		
		/**
		 * [productDetail description]
		 * @param  [type] $name [description]
		 * @param  [type] $id   [description]
		 * @return [type]       [description]
		 */
		public function productDetail($name, $id)
		{
			$product = ShopProduct::find($id);
			//
			if ($product && $product->status && ($this->configs['product_display_out_of_stock'] || $product->stock > 0)) {
				
				//Update last view
				$product->view += 1;
				$product->date_lastview = date('Y-m-d H:i:s');
				$product->save();
				//End last viewed
				
				//Product last view
				if (!empty($this->configs['LastViewProduct'])) {
					$arrlastView = empty(\Cookie::get('productsLastView')) ? array() : json_decode(\Cookie::get('productsLastView'), true);
					$arrlastView[$id] = date('Y-m-d H:i:s');
					arsort($arrlastView);
					\Cookie::queue('productsLastView', json_encode($arrlastView), (86400 * 30));
				}
				//End product last view
				
				$sortBy = request('sortBy') ?? null;
				$sortOrder = request('sortOrder') ?? 'asc';
				SEOMeta::setTitle($product->name);
				//SEOMeta::setDescription($page->title);
				SEOMeta::addMeta('article:section', $product->name, 'property');
				SEOMeta::addKeyword([$product->keyword]);
				//OpenGraph::setDescription($product->description);
				OpenGraph::setTitle($product->name);
				OpenGraph::setUrl('https://thuhienstore.club/');
				OpenGraph::addProperty('type', 'article');
				OpenGraph::addProperty('locale', 'vi-VN');
				Twitter::setTitle($product->name); // title of twitter card tag
				Twitter::setSite('@ngoctuanit07'); // site of twitter card tag
				//Twitter::setDescription($page->title); // description of twitter card tag
				Twitter::setUrl('https://thuhienstore.club/'); // url of twitter card tag
				$localBusiness = Schema::WebSite()
					->name($product->name)
					->email('tuannguyen0719@gmail.com')
					->url(route('product', ['name' => Helper::strToUrl($product->name), 'id' => $id]))
					->telephone('0976522437')
					->contactPoint(Schema::contactPoint()->areaServed($product->description));
				//print_r($localBusiness->toArray()); die();
				$scheama = $localBusiness->toArray();
				//Check product available
				return view(SITE_THEME . '.shop_product_detail',
					array(
						'title' => $product->name,
						'description' => $product->description,
						'keyword' => $product->keyword,
						'product' => $product,
						'scheama' => $scheama,
						'attributesGroup' => ShopAttributeGroup::all()->keyBy('id'),
						'productsToCategory' => (new ShopCategory)->getProductsToCategory($id = $product->category_id, $limit = $this->configs['product_relation'], $opt = 'random', $sortBy, $sortOrder),
						'og_image' => url($product->getImage()),
						'layout_page' => 'product_detail',
					)
				);
			} else {
				return $this->itemNotFound();
			}
			
		}
		
		/**
		 * [brands description]
		 * @param  Request $request [description]
		 * @return [type]           [description]
		 */
		public function getBrands(Request $request)
		{
			$sortBy = null;
			$sortOrder = 'asc';
			$filter_sort = request('filter_sort') ?? '';
			$filterArr = [
				'name_desc' => ['name', 'desc'],
				'name_asc' => ['name', 'asc'],
				'sort_desc' => ['sort', 'desc'],
				'sort_asc' => ['sort', 'asc'],
				'id_desc' => ['id', 'desc'],
				'id_asc' => ['id', 'asc'],
			];
			if (array_key_exists($filter_sort, $filterArr)) {
				$sortBy = $filterArr[$filter_sort][0];
				$sortOrder = $filterArr[$filter_sort][1];
			}
			
			$itemsList = (new ShopBrand)->getBrands($limit = $this->configs['item_list'], $opt = 'paginate', $sortBy, $sortOrder);
			return view(SITE_THEME . '.shop_item_list',
				array(
					'title' => trans('language.brands'),
					'itemsList' => $itemsList,
					'keyword' => '',
					'description' => '',
					'layout_page' => 'item_list',
					'filter_sort' => $filter_sort,
				));
		}
		
		/**
		 * [productToBrand description]
		 * @param  [type] $name [description]
		 * @param  [type] $id   [description]
		 * @return [type]       [description]
		 */
		public function productToBrand($name, $id)
		{
			$sortBy = null;
			$sortOrder = 'asc';
			$filter_sort = request('filter_sort') ?? '';
			$filterArr = [
				'price_desc' => ['price', 'desc'],
				'price_asc' => ['price', 'asc'],
				'sort_desc' => ['sort', 'desc'],
				'sort_asc' => ['sort', 'asc'],
				'id_desc' => ['id', 'desc'],
				'id_asc' => ['id', 'asc'],
			];
			if (array_key_exists($filter_sort, $filterArr)) {
				$sortBy = $filterArr[$filter_sort][0];
				$sortOrder = $filterArr[$filter_sort][1];
			}
			
			$brand = ShopBrand::find($id);
			return view(SITE_THEME . '.shop_products_list',
				array(
					'title' => $brand->name,
					'description' => '',
					'keyword' => '',
					'layout_page' => 'product_list',
					'products' => $brand->getProductsToBrand($id, $limit = $this->configs['product_list'], $opt = 'paginate', $sortBy, $sortOrder),
					'filter_sort' => $filter_sort,
				)
			);
		}
		
		/**
		 * [vendors description]
		 * @param  Request $request [description]
		 * @return [type]           [description]
		 */
		public function getVendors(Request $request)
		{
			$sortBy = null;
			$sortOrder = 'asc';
			$filter_sort = request('filter_sort') ?? '';
			$filterArr = [
				'name_desc' => ['name', 'desc'],
				'name_asc' => ['name', 'asc'],
				'sort_desc' => ['sort', 'desc'],
				'sort_asc' => ['sort', 'asc'],
				'id_desc' => ['id', 'desc'],
				'id_asc' => ['id', 'asc'],
			];
			if (array_key_exists($filter_sort, $filterArr)) {
				$sortBy = $filterArr[$filter_sort][0];
				$sortOrder = $filterArr[$filter_sort][1];
			}
			
			$itemsList = (new ShopVendor)->getVendors($limit = $this->configs['item_list'], $opt = 'paginate', $sortBy, $sortOrder);
			
			return view(SITE_THEME . '.shop_item_list',
				array(
					'title' => trans('language.vendors'),
					'itemsList' => $itemsList,
					'keyword' => '',
					'description' => '',
					'layout_page' => 'item_list',
					'filter_sort' => $filter_sort,
				));
		}
		
		/**
		 * [productToVendor description]
		 * @param  [type] $name [description]
		 * @param  [type] $id   [description]
		 * @return [type]       [description]
		 */
		public function productToVendor($name, $id)
		{
			$sortBy = null;
			$sortOrder = 'asc';
			$filter_sort = request('filter_sort') ?? '';
			$filterArr = [
				'price_desc' => ['price', 'desc'],
				'price_asc' => ['price', 'asc'],
				'sort_desc' => ['sort', 'desc'],
				'sort_asc' => ['sort', 'asc'],
				'id_desc' => ['id', 'desc'],
				'id_asc' => ['id', 'asc'],
			];
			if (array_key_exists($filter_sort, $filterArr)) {
				$sortBy = $filterArr[$filter_sort][0];
				$sortOrder = $filterArr[$filter_sort][1];
			}
			
			$vendor = ShopVendor::find($id);
			return view(SITE_THEME . '.shop_products_list',
				array(
					'title' => $vendor->name,
					'description' => '',
					'keyword' => '',
					'layout_page' => 'product_list',
					'products' => $vendor->getProductsToVendor($id, $limit = $this->configs['product_list'], $opt = 'paginate', $sortBy, $sortOrder),
					'filter_sort' => $filter_sort,
				)
			);
		}
		
		/**
		 * [profile description]
		 * @return [type] [description]
		 */
		public function profile()
		{
			$user = Auth::user();
			$id = $user->id;
			$orders = ShopOrder::with('orderTotal')->where('user_id', $id)->sort()->get();
			$statusOrder = ShopOrderStatus::pluck('name', 'id')->all();
			return view(SITE_THEME . '.shop_profile')->with(array(
				'title' => trans('language.my_profile'),
				'user' => $user,
				'orders' => $orders,
				'statusOrder' => $statusOrder,
				'layout_page' => 'shop_profile',
			));
		}
		
		/**
		 * [search description]
		 * @param  Request $request [description]
		 * @return [type]           [description]
		 */
		public function search(Request $request)
		{
			$sortBy = null;
			$sortOrder = 'asc';
			$filter_sort = request('filter_sort') ?? '';
			$filterArr = [
				'price_desc' => ['price', 'desc'],
				'price_asc' => ['price', 'asc'],
				'sort_desc' => ['sort', 'desc'],
				'sort_asc' => ['sort', 'asc'],
				'id_desc' => ['id', 'desc'],
				'id_asc' => ['id', 'asc'],
			];
			if (array_key_exists($filter_sort, $filterArr)) {
				$sortBy = $filterArr[$filter_sort][0];
				$sortOrder = $filterArr[$filter_sort][1];
			}
			$keyword = request('keyword') ?? '';
			return view(SITE_THEME . '.shop_products_list',
				array(
					'title' => trans('language.search') . ': ' . $keyword,
					'products' => (new ShopProduct)->getSearch($keyword, $limit = $this->configs['product_list'], $sortBy, $sortOrder),
					'layout_page' => 'product_list',
					'filter_sort' => $filter_sort,
				));
		}
		
		/**
		 * [getContact description]
		 * @return [type] [description]
		 */
		public function getContact()
		{
			$page = $this->getPage('contact');
			return view(SITE_THEME . '.shop_contact',
				array(
					'title' => trans('language.contact'),
					'description' => '',
					'page' => $page,
					'keyword' => '',
					'og_image' => '',
				)
			);
		}
		
		/**
		 * [postContact description]
		 * @param  Request $request [description]
		 * @return [type]           [description]
		 */
		public function postContact(Request $request)
		{
			$validator = $request->validate([
				'name' => 'required',
				'title' => 'required',
				'content' => 'required',
				'email' => 'required|email',
				'g-recaptcha-response' => 'recaptcha',
				'phone' => 'required|regex:/^0[^0][0-9\-]{7,13}$/',
			], [
				'name.required' => trans('validation.required'),
				'content.required' => trans('validation.required'),
				'title.required' => trans('validation.required'),
				'email.required' => trans('validation.required'),
				'email.email' => trans('validation.email'),
				'phone.required' => trans('validation.required'),
				'phone.regex' => trans('validation.phone'),
			]);
			//Send email
			$data = $request->all();
			
			try {
				$data = $request->all();
				$dataRequest = array();
				$dataRequest['title'] = $data['title'];
				$dataRequest['name'] = $data['name'];
				$dataRequest['email'] = $data['email'];
				$dataRequest['phone'] = $data['phone'];
				$dataRequest['content'] = $data['content'];
				$data['content'] = str_replace("\n", "<br>", $data['content']);
				//print_r($data); die();
				if (isset($data['g-recaptcha-response']) && $data['g-recaptcha-response']) {
					if (\Helper::configs()['contact_to_admin']) {
						$checkContent = (new EmailTemplate)->where('group', 'contact_to_admin')->where('status', 1)->first();
						if ($checkContent) {
							$content = $checkContent->text;
							$dataFind = [
								'/\{\{\$title\}\}/',
								'/\{\{\$name\}\}/',
								'/\{\{\$email\}\}/',
								'/\{\{\$phone\}\}/',
								'/\{\{\$content\}\}/',
							];
							$dataReplace = [
								$data['title'],
								$data['name'],
								$data['email'],
								$data['phone'],
								$data['content'],
							];
							$content = preg_replace($dataFind, $dataReplace, $content);
							$data_email = [
								'content' => $content,
							];
							
							$config = [
								'to' => $this->configsGlobal['email'],
								'replyTo' => $data['email'],
								'subject' => $data['title'],
							];
							\Helper::sendMail('mail.contact_to_admin', $data_email, $config, []);
						}
						
					}
					if (isset($dataRequest) && count($dataRequest) > 0) {
						Contact::insert($dataRequest);
					}
				}
				
			} catch (\Exception $e) {
				echo $e->getMessage();
				die();
			}
			
			return redirect()->route('contact')->with('message', trans('language.thank_contact'));
			
		}
		
		/**
		 * [pages description]
		 * @param  [type] $key [description]
		 * @return [type]      [description]
		 */
		public function pages($key = null)
		{
			$page = $this->getPage($key);
			
			SEOMeta::setTitle($page->title);
			//SEOMeta::setDescription($page->title);
			SEOMeta::addMeta('article:section', 'Thiết kế website', 'property');
			SEOMeta::addKeyword([$page->keyword]);
			//	OpenGraph::setDescription($page->title);
			OpenGraph::setTitle($page->title);
			OpenGraph::setUrl('https://thuhienstore.club/');
			OpenGraph::addProperty('type', 'article');
			OpenGraph::addProperty('locale', 'vi-VN');
			Twitter::setTitle($page->title); // title of twitter card tag
			Twitter::setSite('@ngoctuanit07'); // site of twitter card tag
			//Twitter::setDescription($page->title); // description of twitter card tag
			Twitter::setUrl('https://thuhienstore.club/'); // url of twitter card tag
			if ($page) {
				$localBusiness = Schema::WebSite()
					->name($page->title)
					->email('tuannguyen0719@gmail.com')
					->url(route('pages', ['key' => $key]))
					->telephone('0976522437')
					->contactPoint(Schema::contactPoint()->areaServed($page->description));
				//print_r($localBusiness->toArray()); die();
				$scheama = $localBusiness->toArray();
				return view(SITE_THEME . '.shop_page',
					array(
						'title' => $page->title,
						'scheama' => $scheama,
						'description' => $page->description,
						'keyword' => $page->keyword,
						'page' => $page,
					));
			} else {
				return $this->pageNotFound();
			}
		}
		
		/**
		 * [getPage description]
		 * @param  [type] $key [description]
		 * @return [type]      [description]
		 */
		public function getPage($key = null)
		{
			return ShopPage::where('uniquekey', $key)->where('status', 1)->first();
		}
		
	}
