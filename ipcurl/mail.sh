sendMail(){
IP=192.168.1.1
msmtp 151493430@qq.com << EOF
Subject:sendIP
$IP
EOF
}

sendMail
