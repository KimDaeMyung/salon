<?php if (!defined('__RESTER__')) exit;

rester::msg("Image Upload");

$key = rester::param('no');
$old = rester::sql('page','fetch',['no'=>$key]);
$list_idx = rester::param('list_idx');
$list_name= rester::param('list_name');

$file = $old['pg_content'];
if($list_idx!==false && $list_name!==false)
{
    $file = $old['pg_content']['list'][$list_idx][$list_name];
}

rester::set_header($file['file_type']);
$file = new file($file);
return $file->image();
