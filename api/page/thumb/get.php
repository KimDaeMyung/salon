<?php if (!defined('__RESTER__')) exit;

rester::msg("Image Upload");

$width = rester::param('w');
$height = rester::param('h');
$key = rester::param('no');
$old = rester::sql('page','fetch',['no'=>$key]);

rester::set_header($old['pg_content']['file_type']);
$file = new file($old['pg_content']);
return $file->thumb($width,$height);
