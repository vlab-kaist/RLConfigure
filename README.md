# RLConfigure
## Legendary
sudo apt install python3 python3-requests python3-setuptools-git

git clone https://github.com/derrod/legendary.git

cd legendary

(필요시) sudo apt install python3-pip

pip install .

echo 'export PATH=$PATH:~/.local/bin' >> ~/.profile && source ~/.profile

legendary auth

창이 뜬다면 에픽 게임즈 로그인, 안뜨면 터미널에 나오는 url로 접속 후 로그인

legendary install Rocket League

legendary launch Rocket League

## Rlbot
1. https://github.com/VirxEC/rlbot-python-example 레포 clone
2. README의 quick start 5번 까지 따라하기. RLbotServer.exe 말고 RLbotServer 다운받기
3. legendary 를 통해서 Rocket League (Sugar) 다운로드.
4. wine 다운로드 (sudo apt install wine64) OS에 따라 wine 달라짐
5. rlbot.toml 의 Launcher 부분 아래와 같이 수정하기



```toml
launcher = "Custom"
launcher_arg = "legendary"
```

1. python run.py
## Docker config
Install docker
and execute
xhost +local:docker
which allows docker to use your display

sudo docker run -it   -e DISPLAY=$DISPLAY   -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Games:/Games -v /wine:/wine --network host rl
