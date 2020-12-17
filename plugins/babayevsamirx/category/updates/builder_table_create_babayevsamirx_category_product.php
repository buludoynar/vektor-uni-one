<?php namespace Babayevsamirx\Category\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateBabayevsamirxCategoryProduct extends Migration
{
    public function up()
    {
        Schema::create('babayevsamirx_category_product', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('code');
            $table->string('title');
            $table->text('description')->nullable();
            $table->text('product_repeater')->nullable();
            $table->text('product_img')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('babayevsamirx_category_product');
    }
}
