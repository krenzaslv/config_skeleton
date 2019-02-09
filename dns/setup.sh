sudo cp dns/dns.conf /etc/NetworkManager/conf.d
sudo cp dns/rc-manager.conf /etc/NetworkManager/conf.d/
echo name_servers=\"127.0.0.1 ::1\" | sudo tee /etc/resolvconf.conf
sudo resolvconf -u
sudo chattr +i /etc/resolv.conf
echo "
do-not-query-localhost: no
forward-zone:
name: \".\"
forward-addr: ::1@53000
forward-addr: 127.0.0.1@53000" | sudo tee -a /etc/unbound/unbound.conf
sudo systemctl start dnscrypt-proxy unbound
sudo systemctl enable dnscrypt-proxy unbound
sudo systemctl restart NetworkManager
