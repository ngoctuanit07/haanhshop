<?php
/**
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade System to newer
 * versions in the future.
 *
 * @category    E-commerce
 * @package     E-commerce
 * @author      John Nguyen
 * @copyright   Copyright (c)  John Nguyen
 */
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ShopXuhuongtimkiem;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use App\Models\Language;
use Encore\Admin\Layout\Content;
class ShopXuhuongtimkiemController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header(trans('language.admin.shop_xuhuongtimkiem'));
            $content->description(' ');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header(trans('language.admin.shop_xuhuongtimkiem'));
            $content->description(' ');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header(trans('language.admin.shop_xuhuongtimkiem'))
            ->description(' ')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(ShopXuhuongtimkiem::class, function (Grid $grid) {

            $grid->html('&nbsp;');
            $grid->title(trans('language.xuhuongtimkiem.title'));
            $grid->url(trans('language.xuhuongtimkiem.url'));
           // $grid->disableCreation();
            $grid->disableExport();
            $grid->disableRowSelector();
            $grid->disableFilter();
            $grid->disablePagination();
            $grid->actions(function ($actions) {
                $actions->disableView();
                //$actions->disableDelete();
            });
            $grid->tools(function ($tools) {
                $tools->disableRefreshButton();
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form       = new Form(new ShopXuhuongtimkiem);
        $languages   = Language::getLanguages();
//end language
        $form->text('title', trans('language.xuhuongtimkiem.title'));
        $form->text('url', trans('language.xuhuongtimkiem.url'));
        $form->disableViewCheck();
        $form->disableEditingCheck();
        $form->tools(function (Form\Tools $tools) {
            $tools->disableView();
            $tools->disableDelete();
        });

        $arrData = array();
        $form->saving(function (Form $form) use ($languages, &$arrData) {
            //Lang
            foreach ($languages as $key => $language) {
                $arrData[$language->code]['title']       = request($language->code . '__title');
                $arrData[$language->code]['url']     = request($language->code . '__keyword');
                //$arrData[$language->code]['description'] = request($language->code . '__description');
            }
            //end lang
        });

        //saved
        $form->saved(function (Form $form) use ($languages, &$arrData) {
            $id = $form->model()->id;
            //Lang
            foreach ($languages as $key => $language) {
                if (array_filter($arrData[$language->code], function ($v, $k) {
                    return $v != null;
                }, ARRAY_FILTER_USE_BOTH)) {
                    $arrData[$language->code]['config_id'] = $id;
                    $arrData[$language->code]['lang_id']   = $language->id;
                   // ConfigGlobalDescription::where('lang_id', $arrData[$language->code]['lang_id'])->where('config_id', $arrData[$language->code]['config_id'])->delete();
                   // ConfigGlobalDescription::insert($arrData[$language->code]);
                }
            }
        });
        return $form;
    }

    public function show($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('');
            $content->description('');
            $content->body(Admin::show(ShopCategory::findOrFail($id), function (Show $show) {
                $show->id('ID');
            }));
        });
    }

}