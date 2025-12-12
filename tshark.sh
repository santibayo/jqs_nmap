sudo tshark -Tek|jq 'select(.timestamp)|{ts:.timestamp, ipsrc: .layers.ip.ip_ip_src_host, ipdst:.layers.ip.ip_ip_dst, udpinfo:.layers.upd, tcpinfo:.layers.tcp}'
