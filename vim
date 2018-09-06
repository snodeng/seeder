[Unit]
Description=SNO service
After=network.target

[Service]
User=root
Group=root

Type=forking

ExecStart=/opt/snode-seeder/dnsseed

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=10s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
