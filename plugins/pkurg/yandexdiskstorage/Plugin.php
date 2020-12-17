<?php namespace Pkurg\YandexDiskStorage;

use Arhitector\Yandex\Disk;
use League\Flysystem\Filesystem;
use Pkurg\YandexDiskStorage\Models\Settings;
use Storage;
use System\Classes\PluginBase;
use System\Classes\SettingsManager;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
    }

    public function registerSettings()
    {

        return [
            'settings' => [
                'label' => 'Yandex Disk Storage',
                'description' => 'Yandex OAuth-token',
                'category' => SettingsManager::CATEGORY_CMS,
                'icon' => 'icon-server',
                'class' => 'Pkurg\YandexDiskStorage\Models\Settings',
                'order' => 500,

            ],
        ];

    }

    public function registerMarkupTags()
    {
        return [
            'filters' => [

                'yandexdisk' => [$this, 'getFileLink'],
            ],

        ];
    }

    public function getFileLink($file)
    {

        $client = new \Arhitector\Yandex\Disk(Settings::get('yadiskapikey'));

        $publicResource = $client->getResource('disk:/' . $file);

        return $publicResource->getLink();
    }

    public function boot()
    {

        if (Settings::get('yadiskapikey') == '') {

            Settings::set('yadiskapikey', '000000000');

        }

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

        Storage::extend('webdavdriver', function ($app, $config) {

            $client = new \Arhitector\Yandex\Disk(Settings::get('yadiskapikey'));

            $adapter = new \Arhitector\Yandex\Disk\Adapter\Flysystem($client);

            $adapter = new \Arhitector\Yandex\Disk\Adapter\Flysystem($client, \Arhitector\Yandex\Disk\Adapter\Flysystem::PREFIX_FULL);

            $filesystem = new Filesystem($adapter);

            return $filesystem;
        });

    }

}
