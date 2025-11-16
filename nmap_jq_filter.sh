cat /tmp/file|xq -j --no-color|jq -r '.nmaprun.host[] | select(.status."@state" == "up") | [.address."@addr", .address."@addrtype"] | join(" ")'
