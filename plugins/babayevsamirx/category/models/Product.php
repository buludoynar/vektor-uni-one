<?php namespace Babayevsamirx\Category\Models;

use Model;

/**
 * Model
 */
class Product extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'babayevsamirx_category_product';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    //BabayevSamirX

    public $keyType = 'string';

    protected $jsonable = [
        'product_repeater',
    ];

    public $belongsToMany= [
        'category' => [
            'Babayevsamirx\Category\Models\Category',
            'table' => 'babayevsamirx_category_category_product',
            'order' => 'id',
        ]
    ];

}
