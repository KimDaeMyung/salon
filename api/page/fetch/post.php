<?php if (!defined('__RESTER__')) exit;


$tmp_host = 'http://kdml.iptime.org:8082';

rester::msg("Get page contents");

$path = rester::param('path');

// 페이지 내용 불러오기
$pages = [];
foreach (rester::sql('page','select',['path'=>$path,'type'=>'front']) as $item)
{
    $_item = [];
    rester::msg($item['pg_kind']);
    echo $item['pg_kind'];
    switch ($item['pg_kind'])
    {
        case 'image':
            $_item['href_image'] = $tmp_host.'/v1/page/image?no='.$item['pg_no'];
            $_item['href_thumb'] = $tmp_host.'/v1/page/thumb?no='.$item['pg_no'];
            break;

        case 'list':
            if(sizeof($item['pg_content']['list'])==1) $_item['item_single'] = true;
            $_item['item_count'] = sizeof($item['pg_content']['list']);
            $list = [];
            foreach($item['pg_content']['list'] as $list_idx=>$v)
            {
                $_list = [];
                foreach($item['pg_config']['content'] as $vv)
                {
                    $_vv = [];
                    if($vv['type']=='image')
                    {
                        $_vv['href_thumb'] = $tmp_host.'/v1/page-admin/thumb?no='.$item['pg_no'].'&list_idx='.$list_idx.'&list_name='.$vv['name'];
                        $_vv['href_image'] = $tmp_host.'/v1/page-admin/image?no='.$item['pg_no'].'&list_idx='.$list_idx.'&list_name='.$vv['name'];
                    }
                    else
                    {
                        $_vv = $v[$vv['name']];
                    }
                    $_list[$vv['name']] = $_vv;
                }
                $list[] = $_list;
            }
            $_item['list'] = $list;
            break;
        default:
            $_item = $item['pg_content'];
    }
    $pages[$item['pg_name']] = $_item;
}

return $pages;
