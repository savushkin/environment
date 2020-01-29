#!/usr/bin/env sh

BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VER}/binaries

mkdir -p /usr/share/maven /usr/share/maven/ref
curl -fsSL -o /tmp/apache-maven.tar.gz "${BASE_URL}/apache-maven-${MAVEN_VER}-bin.tar.gz"
tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1
rm -f /tmp/apache-maven.tar.gz
ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

mvn -v
