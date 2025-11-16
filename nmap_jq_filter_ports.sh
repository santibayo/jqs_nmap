cat /tmp/file|xq -j |jq -r '.nmaprun.host[] | select(.status."@state" == "up") |.address."@addr" as $ip |.ports.port[] |[$ip, .["@portid"], .state."@state"] | join(" ")'
