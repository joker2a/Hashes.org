#!/bin/bash


for i in `seq 1 9999`;
do
	curl -i -s -k -o "hash_plain_leak_$i" -X $'GET' \
			-H $'Host: hashes.org' \
			-H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0' \
			-H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' \
			-H $'Accept-Language: en-US,en;q=0.5' \
			-H $'Accept-Encoding: gzip, deflate' \
			-H $'Referer: https://hashes.org/' \
			-H $'Cookie: PHPSESSID=psq29t9sp46b14a01vol7hpht7; __utma=30404646.1197128987.1555509641.1555509641.1555509641.1; __utmb=30404646.1.10.1555509641; __utmc=30404646; __utmz=30404646.1555509641.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utmt=1; donate=1' \
			-H $'Connection: close' -H $'Upgrade-Insecure-Requests: 1' \
			-b $'PHPSESSID=psq29t9sp46b14a01vol7hpht7; __utma=30404646.1197128987.1555509641.1555509641.1555509641.1; __utmb=30404646.1.10.1555509641; __utmc=30404646; __utmz=30404646.1555509641.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utmt=1; donate=1' \
				$"https://hashes.org/download.php?type=hafound&hashlistId="$i
done

