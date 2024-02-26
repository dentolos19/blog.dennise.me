@echo off
cd /d %~dp0
docker run^
    -it^
    --rm^ REM automatically removes container after usage
    --volume=".:/srv/jekyll"^
    -p 4000:4000^
    jekyll/jekyll:latest^
    jekyll serve --watch --drafts
exit