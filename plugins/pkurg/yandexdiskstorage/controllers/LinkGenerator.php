<?php namespace Pkurg\YandexDiskStorage\Controllers;

use Backend\Classes\Controller;
use Input;
use Pkurg\YandexDiskStorage\Models\Settings;
use Storage;

class LinkGenerator extends Controller
{
    public $implement = [];

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {

        config(['filesystems.disks.webdavdriver' => [
            'driver' => 'webdavdriver',
        ],
        ]);

        config(['filesystems.default' => 'webdavdriver',

        ]);

        config(['cms.storage' => [

            'uploads' => [
                'disk' => 'local',
                'folder' => 'uploads',
                'path' => '/storage/app/uploads',
                'temporaryUrlTTL' => 3600,
            ],

            'media' => [
                'disk' => 'webdavdriver',
                'folder' => '/',
                'path' => '/yandex-disk/?file=',
            ],

        ]]);

        $file = Input::get('file');

        $client = new \Arhitector\Yandex\Disk(Settings::get('yadiskapikey'));

        $publicResource = $client->getResource('disk:' . $file);

        $publicResource->setPublish();

        $mimetype = Storage::mimeType($file);

        $remoteImage = $publicResource->getLink();

        header("Content-type: " . $mimetype);
        header('Content-Disposition: attachment; filename="' . basename($file) . '"');

        return readfile($remoteImage);

    }
}
