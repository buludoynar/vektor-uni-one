<?php namespace Babayevsamirx\Category\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateBabayevsamirxCategoryCategoryProduct extends Migration
{
    public function up()
    {
        Schema::create('babayevsamirx_category_category_product', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('category_id');
            $table->integer('product_id');
            $table->primary(['category_id','product_id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('babayevsamirx_category_category_product');
    }
}
