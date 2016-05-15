@echo off
for /f "tokens=8" %%i in ('tracert -w 10 %ip%') do echo %%i
# 为加快获取速度，将超时时间设置为 10 毫秒
# Powered by http://maimieng.com