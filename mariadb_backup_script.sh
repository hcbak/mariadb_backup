#!/bin/bash

show_help() {
    echo "다음과 같은 매개변수가 필요합니다."
    echo "백업 경로, 백업 할 DB, 계정, PW"
}

case "${1}" in
    -h|--help)
    show_help
    exit 0
    ;;
esac

backupDir="${1}/backup/${2}/"
dateTime=$(date +%Y%m%d%H%M%S)

mkdir -p ${backupDir}

mysqldump -u${3} -p${4} ${2} > "${backupDir}${2}_${dateTime}.sql"

find ${backupDir} -type f -name "*.sql" -mtime +7 -delete
