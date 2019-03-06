<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class CouponCode extends Model
{
    // 用常量的方式定义支持的优惠券类型
    const TYPE_FIXED = 'fixed';
    const TYPE_PERCENT = 'percent';

    public static $typeMap = [
        self::TYPE_FIXED   => '固定金额',
        self::TYPE_PERCENT => '比例',
    ];

    protected $fillable = [
        'name',
        'code',
        'type',
        'value',
        'total',
        'used',
        'min_amount',
        'not_before',
        'not_after',
        'enabled',
    ];
    protected $casts = [
        'enabled' => 'boolean',
    ];
    // 指明这两个字段是日期类型
    protected $dates = ['not_before', 'not_after'];
    protected $appends = ['description'];
    public function getDescriptionAttribute()
    {
        $str = '';

        if ($this->min_amount > 0) {
            $str = '满'.str_replace('.00', '', $this->min_amount);
        }
        if ($this->type === self::TYPE_PERCENT) {
            return $str.'优惠'.str_replace('.00', '', $this->value).'%';
        }

        return $str.'减'.str_replace('.00', '', $this->value);
    }
    public function index(Content $content)
    {
        return $content
            ->header('优惠券列表')
            ->body($this->grid());
    }
    protected function grid()
    {
        $grid = new Grid(new CouponCode);

        // 默认按创建时间倒序排序
        $grid->model()->orderBy('created_at', 'desc');
        $grid->id('ID')->sortable();
        $grid->name('名称');
        $grid->code('优惠码');
        $grid->type('类型')->display(function($value) {
            return CouponCode::$typeMap[$value];
        });
        // 根据不同的折扣类型用对应的方式来展示
        $grid->value('折扣')->display(function($value) {
            return $this->type === CouponCode::TYPE_FIXED ? '￥'.$value : $value.'%';
        });
        $grid->min_amount('最低金额');
        $grid->total('总量');
        $grid->used('已用');
        $grid->enabled('是否启用')->display(function($value) {
            return $value ? '是' : '否';
        });
        $grid->created_at('创建时间');

        $grid->actions(function ($actions) {
            $actions->disableView();
        });

        return $grid;
    }
    public static function findAvailableCode($length = 16)
    {
        do {
            // 生成一个指定长度的随机字符串，并转成大写
            $code = strtoupper(Str::random($length));
        // 如果生成的码已存在就继续循环
        } while (self::query()->where('code', $code)->exists());

        return $code;
    }

}
