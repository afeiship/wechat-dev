# wechat-dev
> 

## run:
```bash
sudo rails s -p 80
rails s -e production -p 80
# RAILS_ENV=production rails s
## visite: http://wechat-dev.com/apis/notify
```

## deploy to heroku:
```bash
## login:
heroku keys:add

#create project:
cd .../wechat-dev
heroku create

# push to heroku:
git push heroku master
```

## resources:
+ http://blog.csdn.net/lissdy/article/details/41849793
+ http://www.voidcn.com/blog/lissdy/article/p-499037.html
+ http://liuminhan.github.io/blog/2015/04/17/shi-yong-ruby-on-rails-jin-xing-wei-xin-gong-zhong-ping-tai-kai-fa-1/