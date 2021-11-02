# Python Internet SpeedTest
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)


This is a self purpose repo to test my internet connection. I use it if [bpytop](https://github.com/aristocratos/bpytop) in as raspberry pi to check my internet speed

--- 
## How to use:
1. clone this repo
2. run applicatin
2.1 at terminal just type make run (this will create a virtual environment, activate, install requirements and run application)
2.2 docker application:
2.2.1 at root folder: *docker build -t speedtest .*
2.2.2 *docker run speedtest*

---
### To Do:
[x] create an application to test internet speed connection
[x] create makefile and shell script
[x] create dockerfile
[] save results to external file
[] alert when result is lower than mean speed