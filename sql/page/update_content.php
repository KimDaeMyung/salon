<?php 
if(!defined('__RESTER__')) exit;

$key = rester::param('no');
$key = 29;
$content = addslashes(rester::param('content'));
rester::msg($key."--".$content);
$query = <<<SQL
    UPDATE `pages`
    SET `pg_content`='{$content}'
    WHERE `pg_no`={$key}
    LIMIT 1
SQL;

if($key && db::get()->prepare($query)->execute())
{
}
else
{
    rester::failure();
    rester::msg("key 값이 필요합니다.");
    return null;
}


