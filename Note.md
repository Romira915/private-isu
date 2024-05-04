# Note

## 計測

### nginxログ集計

```shell
sudo cat /var/log/nginx/access.log | alp ltsv -m "/js/+.","/image/\d+.","/posts/\d+","/@.+" --sort sum -r
```

### mysqlスローログ集計

```shell
sudo mysqldumpslow /var/log/mysql/mysql-slow.log
```

### ログクリア

```shell
sudo su -c "echo '' > /var/log/mysql/mysql-slow.log; echo '' > /var/log/nginx/access.log"
```

### ビルド

```shell
cd ~/private_isu/webapp/rust/ && git pull && cargo build --release && sudo systemctl restart isu-rust.service
```

### slow query

```/etc/mysql/mysql.conf.d/mysqld.cnf
slow_query_log          = 1
slow_query_log_file     = /var/log/mysql/mysql-slow.log
long_query_time = 0
```

```shell
sudo cat /var/log/mysql/mysql-slow.log | mysqldumpslow -s t
```

### What I did.

1. `mkdir ~/private_isu/webapp/public/image`
1. `webapp/sql-diff/diff.sql`のSQLを実行
2. nginxの設定を以下に変更
   1. `provisioning/image/files/etc/nginx/nginx.conf`
   2. `provisioning/image/files/etc/nginx/sites-available/isucon.conf`
3. `webapp/rust/src/main.rs`の差分を適用
