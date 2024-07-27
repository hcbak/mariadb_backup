# MariaDB Backup Script

crontab에 등록하여 사용하는 것을 기준으로 작성했습니다.

crontab 예시
```bash
crontab -e
...
0 * * * * root /home/username/scripts/mariadb_backup_script.sh /home/username database user password
...
```

4개의 매개 변수가 필요합니다.
|${1}|${2}|${3}|${4}|
|-|-|-|-|
|백업 파일 경로|데이터베이스|계정|패스워드|
