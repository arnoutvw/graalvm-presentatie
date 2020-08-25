mvn -DskipTests=true clean package
export MI=src/main/resources/META-INF
mkdir -p $MI
java -agentlib:native-image-agent=config-output-dir=${MI}/native-image -jar target/graalvm-demo.jar &
JPID=$!
sleep 30
curl --max-time 60000 --connect-timeout 60000 http://localhost:8080/reservations
kill -9 $JPID
mvn -Pgraal clean package
./target/nl.conspect.graalvmdemo.graalvmdemoapplication
