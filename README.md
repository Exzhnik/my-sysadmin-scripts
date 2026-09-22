# My Sysadmin Scripts

Учебный проект системного администрирования. Скрипт каждые 5 секунд записывает в `monitor.log` дату, использование памяти, дисков и время работы системы.

## Состав проекта

- `script.sh` — мониторинг ресурсов.
- `Dockerfile` — образ со скриптом и HTTP-сервером на порту 8080.
- `docker-compose.yml` — запуск контейнера с постоянным томом для `monitor.log`.
- `deploy/nginx/my-app` — reverse proxy, HTTP-редирект и HTTPS.
- `deploy/systemd/my-app.service` — запуск контейнера и автозапуск через systemd.
- `sample_output.txt` — пример результата мониторинга.

## Проверка

```bash
docker compose up --build -d
curl http://127.0.0.1:8080/monitor.log
curl -k https://127.0.0.1/monitor.log

```

Для HTTPS используется учебный самоподписанный сертификат.
