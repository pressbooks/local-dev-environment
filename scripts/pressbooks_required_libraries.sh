#!/bin/bash
# Install Pressbooks PHP required modules and libraries.

apt-get -qq update || true
apt-get install default-jdk libxml2-utils libxslt1-dev libgif7 ghostscript imagemagick poppler-utils unzip subversion aptitude epubcheck -yq

# Install latest version of EPUBCheck
wget https://github.com/w3c/epubcheck/releases/download/v4.2.6/epubcheck-4.2.6.zip
rm -rf /opt/epubcheck-4.2.6
unzip epubcheck-4.2.6.zip -d /opt/
mv /opt/epubcheck-4.2.6 /opt/epubcheck
rm epubcheck-4.2.6.zip

# Install latest version of PrinceXML
if [ "$ARCHITECTURE" ]; then
	if [ "$ARCHITECTURE" == amd64 ]; then
		aptitude install gdebi --assume-yes
		wget https://www.princexml.com/download/prince_15-1_debian11_amd64.deb
		gdebi prince_15-1_debian11_amd64.deb --n
		rm prince_15-1_debian11_amd64.deb
	else
		wget https://www.princexml.com/download/prince-20221028-linux-generic-aarch64.tar.gz
    tar -xvzf prince-20221028-linux-generic-aarch64.tar.gz
    rm prince-20221028-linux-generic-aarch64.tar.gz
    cd prince-20221028-linux-generic-aarch64
    ./install.sh /usr
    cd ..
    rm -rf prince-20221028-linux-generic-aarch64
	fi
else
  echo "You should configure your architecture in config_services/.env"
fi

# Install latest version of Node
curl -sL "https://deb.nodesource.com/setup_18.x" | bash - \
  && apt-get install -y nodejs

# install missing xsl extension
docker-php-ext-install xsl
docker-php-ext-enable xsl

# Install Saxon
wget https://downloads.sourceforge.net/project/saxon/Saxon-HE/9.9/SaxonHE9-9-1-7J.zip
mv SaxonHE9-9-1-7J.zip /usr/share/java
cd /usr/share/java
unzip SaxonHE9-9-1-7J.zip
rm SaxonHE9-9-1-7J.zip

cp /app/files/saxon9he-xquery /usr/bin/saxon9he-xquery
cp /app/files/saxon9he-xslt /usr/bin/saxon9he-xslt
chmod 755 /usr/bin/saxon9he-xquery
chmod 755 /usr/bin/saxon9he-xslt

