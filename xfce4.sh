echo "tải xuống..."
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip.1 > /dev/null 2>&1
read -p "Ctrl + V để dán token: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3389 &>/dev/null &
echo đang tải hệ thống...
echo "===================================="
echo "chờ 2 phút..."
echo "xắp xong rùi
echo "=]"
echo "===================================="
sudo apt-get update > /dev/null 2>&1
echo "===================================="
echo "đng tải Firefox..."
echo "===================================="
sudo apt install firefox -y > /dev/null 2>&1
echo "===================================="
echo "cài bộ kết nối..."
echo "===================================="
sudo apt install -y xrdp > /dev/null 2>&1
sudo apt install xfce4 -y > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
echo "===================================="
echo "bắt đầu kết nối"
echo "===================================="
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo địa chỉ ip là:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "VPS CHẠY 12 TIẾNG"
echo "KHÔNG ĐÓNG TAB KHI ĐANG CHẠY"
echo "DÙNG ỨNG DỤNG REMOTE DESKTOP CONNECTION CÓ SẴN TRONG MÁY ĐỂ KẾT NỐI"
echo "===================================="
sleep 43210
