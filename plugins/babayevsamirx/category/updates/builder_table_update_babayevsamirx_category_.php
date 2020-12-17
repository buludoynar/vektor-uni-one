<?php namespace Babayevsamirx\Category\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateBabayevsamirxCategory extends Migration
{
    public function up()
    {
        Schema::table('babayevsamirx_category_', function($table)
        {
            $table->integer('parent_id');
        });
    }
    
    public function down()
    {
        Schema::table('babayevsamirx_category_', function($table)
        {
            $table->dropColumn('parent_id');
        });
    }
}
