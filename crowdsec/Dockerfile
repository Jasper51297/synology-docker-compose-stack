FROM debian:stable-slim

RUN apt update \
    && apt install curl -y \
    && curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | bash \
    && apt install crowdsec-firewall-bouncer-iptables -y \
    && rm -rf /var/lib/apt/lists/* \
    # iptables is migrated to nf_tables backend in recent debian versions
	# -> incompatible with old iptables -> switch to legacy versions
    # https://wiki.debian.org/iptables
    && update-alternatives --set iptables /usr/sbin/iptables-legacy \
    && update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

ENTRYPOINT crowdsec-firewall-bouncer -c /crowdsec-firewall-bouncer.yaml