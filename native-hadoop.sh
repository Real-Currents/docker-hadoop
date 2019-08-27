# Dependencies: gcc autoconf automake libtool cmake snappy gzip bzip2 protobuf@2.5.0 zlib maven openssl
cd hadoop
git checkout branch-2.7.4
mvn org.apache.maven.plugins:maven-antrun-plugin:1.7:run -rf :hadoop-main -Pdist,native -DskipTests
mvn org.apache.maven.plugins:maven-antrun-plugin:1.7:run -rf :hadoop-pipes -Pdist,native -DskipTests
mvn package -Pdist,native -DskipTests
#cp -R hadoop-dist/target/hadoop-2.7.4/lib 
