QA Casts
=
如何启动
-
    # 安装mysql服务器
	sudo apt-get install mysql-server
	# 安装mysql2 gem
	sudo apt-get install libmysql-ruby libmysqlclient-dev
	gem install mysql2
    # 安装imageMagick
    sudo apt-get install libmagickwand-dev imagemagick
    # 安装JS运行环境
    sudo apt-get install nodejs
	# 运行rails应用
    git clone https://github.com/binzh/qacasts.git
    bundle install
    rake db:create
    rake db:migrate
	rake db:seed
    rails s
待完成
-
* 用户信息首页
* 文章页
* articles_users
    * user.articles.where('articles_users.owner=1')
    * :conditions => {:owner => '0'}