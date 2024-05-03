# Note

## 計測

### nginxログ集計

```shell
sudo cat /var/log/nginx/access.log | alp ltsv -m "/js/+.","/image/\d+.","/posts/\d+","/@.+" --sort sum -r
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

1. `webapp/sql-diff/diff.sql`のSQLを実行
2. `webapp/rust/src/main.rs`の差分を適用
