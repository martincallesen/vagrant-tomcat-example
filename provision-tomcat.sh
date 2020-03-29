apt-get update -y
apt-get upgrade -y
apt-get install -y nano git default-jdk default-jre

cd /usr/local
wget http://ftp.download-by.net/apache/tomcat/tomcat-8/v8.5.53/bin/apache-tomcat-8.5.53.tar.gz
tar -xzvf apache-tomcat-8.5.53.tar.gz
ln -sf /usr/local/apache-tomcat-8.5.53 /usr/local/tomcat
cp /vagrant/tomcat8 /etc/init.d/tomcat
chmod 755 /etc/init.d/tomcat
update-rc.d tomcat defaults
sudo service tomcat start