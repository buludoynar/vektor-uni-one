<?php

namespace Pkurg\YandexDiskStorage\Models;

use Model;

class Settings extends Model
{

    public $implement = ['System.Behaviors.SettingsModel'];

    public $settingsCode = 'yadisk_settings';

    public $settingsFields = 'fields.yaml';

    protected $cache = [];

    

    

}
