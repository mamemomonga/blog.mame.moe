---
title: "こんにちは世界"
date: 2019-08-15T11:57:30+09:00
draft: true
---

なんかblogを再開してみたくなって、Hugoをつかって初めてみました。どうぞよろしく。


# Hugoでブログ開始するメモ

	$ hugo new site blog.mame.moe
	$ cd blog.mame.moe
	$ git init
	$ git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
	$ echo 'theme = "ananke"' >> config.toml
	$ hugo new posts/190815-01-hello-world.md
	$ mvim content/posts/190815-01-hello-world.md
	$ mvim config.toml
	$ hugo server -D
	$ cat > .gitignore << 'EOS'
	/public
	*.swp
	EOS
	$ git add .
	$ git commit -a -m 'initial import'
	$ git remote add origin git@github.com:mamemomonga/blog.mame.moe.git
	$ git push origin master
	$ cp -r .git public/
	$ cd public
	$ git checkout -b gh-pages
	$ git branch -D master
	$ git add .
	$ git commit -a -m 'initial import gh-pages'
	$ git push origin gh-pages

* blog.mame.moeのCNAMEに mamemomonga.github.io を割当
* https://github.com/mamemomonga/blog.mame.moe/settings でドメインの設定
* Enforce httpsを有効にする(反映に時間かかる)

