@echo off
cd /d %~dp0
docker compose up
pause >nul
exit