QA Casts
=

如何启动
-

Ubuntu

    # 安装mysql服务器
	sudo apt-get install mysql-server
	# 安装mysql2 gem
	sudo apt-get install libmysql-ruby libmysqlclient-dev
	gem install mysql2
    # 安装imageMagick
    sudo apt-get install libmagickwand-dev imagemagick
    # 安装JS运行环境
    sudo apt-get install nodejs

Windows

	# 安装mysql服务器
	http://dev.mysql.com/downloads/
	# 安装imageMagick
	http://www.imagemagick.org/script/binary-releases.php#windows

Rails

	# 运行rails应用
    git clone https://github.com/binzh/qacasts.git
    # 修改config/database.yml
    bundle install
    rake db:create
    rake db:migrate
	rake db:seed
    rails s -p 8801

待完成
-

* 用户信息页面
* 首页