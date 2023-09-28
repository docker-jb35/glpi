<?php
class DB extends DBmysql {
   public $dbhost = '192.168.4.2';
   public $dbuser = 'glpi';
   public $dbpassword = 'glpi';
   public $dbdefault = 'glpi';
   public $use_utf8mb4 = true;
   public $allow_myisam = false;
   public $allow_datetime = false;
   public $allow_signed_keys = false;
}
