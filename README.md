# Cloud IP Range (AWS, Azure, Google Cloud, Digital Ocean)

## ISP RANGE LIST
    https://suip.biz/?act=ipintpr

    Using converter.rb to convert the list to nginx deny conf
    $ bundle install
    $ ruby converter.rb list-range.txt

## GEO IP INFORMATION
    https://members.ip-api.com
    https://ipinfo.io


## Nginx Deny Conf

    Instructions to use in a nginx server
    $ mkdir /etc/nginx/blacklist
    $ wget https://github.com/alexishida/cloud-ip-range/releases/download/v20191022/20191022-cloud-ip-range-nginx-conf.tar.gz && tar -zxvf 20191022-cloud-ip-range-nginx-conf.tar.gz && rm -fr 20191022-cloud-ip-range-nginx-conf.tar.gz
    
    Put this code in nginx.conf

    include /etc/nginx/blacklist/*.conf;

### TODO 
geoip.rb
