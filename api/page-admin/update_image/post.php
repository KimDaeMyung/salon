<?php if (!defined('__RESTER__')) exit;

rester::msg("Image Upload 2");

$key = rester::param('no');

$file = new file();
$file_list = $file->upload('image');
if(sizeof($file_list)==0)
{
    rester::failure();
    rester::msg("파일을 선택하세요.");
}
else
{
    rester::msg("test1");
    // 기존 파일 삭제
    $old = rester::sql('page','fetch',['no'=>$key]);
    rester::msg("test2");
    if($old['pg_content'])
    {
        rester::msg("test3");
        $old_file = new file($old['pg_content']);
        $old_file->delete();
        rester::msg("test4");
    }

    foreach ($file_list as $row)
    {
        if(!rester::sql('page','update_content',['no'=>$key,'content'=>json_encode($row)]))
        {
            rester::failure();
            rester::msg("데이터베이스 입력 실패");
        }
    }
}

return true;
