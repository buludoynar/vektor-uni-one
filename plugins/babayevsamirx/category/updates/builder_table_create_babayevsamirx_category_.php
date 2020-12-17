<?php namespace Babayevsamirx\Category\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateBabayevsamirxCategory extends Migration
{
    public function up()
    {
        Schema::create('babayevsamirx_category_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('title')->nullable();
            $table->text('description')->nullable();
            $table->text('categ_relation')->nullable();
            $table->text('categ_img')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('babayevsamirx_category_');
    }
}
