# wechat-dev
> 

## run:
```bash
sudo rails s -p 80
rails s -e production -p 80

## dev:
rails server -e development -b 0.0.0.0 -p 80

# kill 
ps aux | grep puma

# RAILS_ENV=production rails s
## visite: http://wechat-dev.com/apis/notify
## GET "/apis/notify?signature=b27929f0a22280cd9844414284b2e23b27b8f92d&echostr=2653441542986202611&timestamp=1491399873&nonce=1094555034"
```

## php version:
```php
//获得接口认证
$timestamp = $_GET['timestamp'];
$nonce = $_GET['nonce'];
$token = 'weixin';
$signature = $_GET['signature'];
//将参数字典化排序
$tmpArr = array($timestamp,$nonce,$token);
sort($tmpArr);
$judgeArr = implode('',$tmpArr);
$judge = sha1($judgeArr);
//判断是否符合
if($judge == $signature)
{
    echo $_GET['echostr'];
    exit;
}
```


## resources:
+ http://blog.csdn.net/lissdy/article/details/41849793
+ http://www.voidcn.com/blog/lissdy/article/p-499037.html
+ http://liuminhan.github.io/blog/2015/04/17/shi-yong-ruby-on-rails-jin-xing-wei-xin-gong-zhong-ping-tai-kai-fa-1/