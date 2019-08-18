<?php
#app/Models/Layout.php
namespace App\Models;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class ShopXuhuongtimkiem extends Model
{
    public $timestamps = false;
    public $table = 'shop_xuhuongtimkiem';
    protected $fillable = ['title', 'url'];

    public function __construct()
    {
        parent::__construct();
    }

    public function getXuHuongTimmKiem()
    {
        $xuhuongtimkiem = DB::table('shop_xuhuongtimkiem')->get();
       // print_r($xuhuongtimkiem); die();
        return $xuhuongtimkiem;
    }

}
