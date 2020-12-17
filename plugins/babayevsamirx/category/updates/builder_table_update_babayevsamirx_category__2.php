<?php namespace Babayevsamirx\Category\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateBabayevsamirxCategory2 extends Migration
{
    public function up()
    {
        Schema::table('babayevsamirx_category_', function($table)
        {
            $table->renameColumn('categ_relation', 'categ_repeater');
        });
    }
    
    public function down()
    {
        Schema::table('babayevsamirx_category_', function($table)
        {
            $table->renameColumn('categ_repeater', 'categ_relation');
        });
    }
}
