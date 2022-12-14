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

    Put this code in nginx.conf

    include /etc/nginx/blacklist/*.conf;

    $ sudo service nginx reload


## ISP RANGE LIST AND GEOLOCATION
    https://suip.biz/?act=ipintpr
    https://members.ip-api.com
    https://ipinfo.io
    https://ipgeolocation.io/
    https://www.maxmind.com/en/geoip-demo
    https://suip.biz/?act=ipcountry


## Converter list to nginx deny conf

    Using converter.rb to convert the list to nginx deny conf
    $ bundle install
    $ ruby converter.rb list-range.txt


### Commands
# gerar a lista de ip
uniq -c ip.txt | awk '{print "deny "$2";"}' > nginx-servemania-range.conf

# consulta por servico
tail -f access.log | uniq -c | awk '{print " "$3"; # "$2" "$10}' | grep nfce

# consulta os mais acessados
cat access.log | cut -d' ' -f2 | sort | uniq -c
