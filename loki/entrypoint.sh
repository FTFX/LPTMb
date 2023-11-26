envsubst /etc/haproxy/haproxy.cfg.template > /etc/haproxy/haproxy.cfg

# Start HAProxy and start Loki with the arguments of this script
haproxy -f /etc/haproxy/haproxy.cfg &
loki $@
