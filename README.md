# Deny Cloud Computing IP Range

This project deny crawlers hosting at cloud computing to access nginx servers

- Amazon Aws
- Azure
- Google Cloud
- Digital Ocean
- UKSERVERS-AS UK Dedicated Servers, Hosting and Co-Location

## Configure Nginx to use conf files

    $ sudo mkdir /etc/nginx/blacklist
    $ cd /etc/nginx/blacklist
    $ sudo wget https://github.com/alexishida/deny-cloud-ip-range/releases/download/v20191022/20191022-cloud-ip-range-nginx-conf.tar.gz && tar -zxvf 20191022-cloud-ip-range-nginx-conf.tar.gz && rm -fr 20191022-cloud-ip-range-nginx-conf.tar.gz
    
    Put this code in nginx.conf

    include /etc/nginx/blacklist/*.conf;

    $ sudo service nginx reload


## ISP RANGE LIST
    https://suip.biz/?act=ipintpr


## GEO IP INFORMATION
    https://members.ip-api.com
    https://ipinfo.io


## Converter list to nginx deny conf

    Using converter.rb to convert the list to nginx deny conf
    $ bundle install
    $ ruby converter.rb list-range.txt    


### TODO 
geoip.rb
