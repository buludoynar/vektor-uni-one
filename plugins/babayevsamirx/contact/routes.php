<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;


Route::match(['POST'], 'apim/contact', function (Request $request) {
  $vars = ['name' => $request->name, 'email' => $request->email, 'text' => $request->text];

  Mail::send('babayevsamirx.contact::mail.message', $vars, function ($message) {

    $message->to('admin@domain.tld', 'Admin Person');
    $message->subject('New Message Email');
  });
});

Route::group(['prefix' => 'api', 'middleware' => ['\Barryvdh\Cors\HandleCors']], function () {

  Route::match(['POST'], 'contact', function (Request $request) {
    $vars = ['name' => $request->name, 'email' => $request->email, 'text' => $request->text];
  
    Mail::send('babayevsamirx.contact::mail.message', $vars, function ($message) {
  
      $message->to('admin@domain.tld', 'Admin Person');
      $message->subject('New Message Email');
    });

  });


});