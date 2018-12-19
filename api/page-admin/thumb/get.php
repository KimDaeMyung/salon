<?php if (!defined('__RESTER__')) exit;

rester::msg("Image Upload");

$width = rester::param('w');
$height = rester::param('h');
$key = rester::param('no');
$list_idx = rester::param('list_idx');
$list_name= rester::param('list_name');
$old = rester::sql('page','fetch',['no'=>$key]);

$file = $old['pg_content'];
if($list_idx!==false && $list_name!==false)
{
    $file = $old['pg_content']['list'][$list_idx][$list_name];
}

rester::set_header($file['file_type']);
$file = new file($file);
return $file->thumb($width,$height);


