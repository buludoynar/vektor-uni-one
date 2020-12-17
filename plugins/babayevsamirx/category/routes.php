<?php

use Babayevsamirx\Category\Models\Category;
use Babayevsamirx\Category\Models\Product;
use Illuminate\Http\Request;



Route::group(['prefix' => 'api', 'middleware' => ['\Barryvdh\Cors\HandleCors']], function () {

  Route::match(['GET'], 'categories', function () {
    $categories = Category::with(['product'])->get();
    $baseUrl = url(Config::get('cms.storage.media.path'));

    return $categories;
  });

  Route::match(['GET'], 'products/{id}', function ($id) {
    $products = Product::whereHas('category', function ($query) use ($id) {
      $query->where('id', '=', $id);
    })->get();

    return $products;
  });

  Route::match(['GET'], 'product/{id}', function ($id) {
    $product = Product::where('id', '=', $id)->get();

    return $product;
  });
});

Route::match(['GET'], 'apim/categories', function () {
  $categories = Category::with(['product'])->get();
  $baseUrl = url(Config::get('cms.storage.media.path'));

  return $categories;
});

Route::match(['GET'], 'apim/products/{id}', function ($id) {
  $products = Product::whereHas('category', function ($query) use ($id) {
    $query->where('id', '=', $id);
  })->get();

  return $products;
});

Route::match(['GET'], 'apim/product/{id}', function ($id) {
  $product = Product::where('id', '=', $id)->get();

  return $product;
});



// Route::match(['GET'],'api/categories', function() {
//   $categories = Category::with(['c_img', 'product'])->get();
  
//   return $categories;
// });


// Route::match(['GET','POST','OPTION'],'api/products/{id}', function ($id) {
//   $products = Product::whereHas('category', function ($query) use ($id) {
//     $query->where('id', '=', $id);
//   })->with(['p_img'])->get();

//   return $products;
// });



// Route::match(['GET'],'api/product/{id}', function ($id) {
//   $product = Product::where('id', '=', $id)->with(['p_img'])->get();

//   return $product;
// });
