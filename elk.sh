echo -e "\e[36mDownloading Elasticsearch repo \e[0m"
sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

cp /root/software_shortcut/elasticsearch.repo /etc/yum.repos.d/elasticsearch.repo

echo -e "\e[36mInstalling Elasticsearch\e[0m"
yum install elasticsearch-y

echo -e "\e[36mEnabling and starting Elasticsearch\e[0m"
systemctl enable elasticsearch
systemctl restart elasticsearch

echo -e "\e[36mInstalling Kibana\e[0m"
yum install kibana -y

echo -e "\e[36mEnabling and starting Kibana\e[0m"
systemctl enable kibana
systemctl restart kibana

echo -e "\e[3636mInstalling logstash\e[0m"
yum install logstash -y
echo -e "\e[36m copying logstash.conf file\e[0m"

cp /root/software_shortcut/logstash.conf /etc/logstash/conf.d/logstash.conf

echo -e "\e[36mEnabling and starting logstash\e[0m"
systemctl enable logstash
systemctl restart logstash

echo -e "\e[36m Installing Nginx Server\e[0m"
yum install nginx -y
echo -e "\e[36m Removing Default nginx conf file\e[0m"
rm -rf /etc/nginx/nginx.conf
echo -e "\e[36m Adding nginx conf file\e[0m"
cp /root/software_shortcut/nginx.conf /etc/nginx/nginx.conf
echo -e "\e[36m Enabling and starting Nginx\e[0m"
systemctl enable nginx
systemctl restart nginx
