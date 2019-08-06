FROM kalilinux/kali-linux-docker:latest

RUN apt-get update && apt-get install -y netcat nmap metasploit-framework openssh-server && \
    echo '29' | apt-get install -y xorg

RUN mkdir -p /var/run/sshd && \
    mkdir -p /root/.ssh && \
    echo 'root:1slhyht' |chpasswd && \
    sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config && \
    echo "PermitRootLogin yes" >>  /etc/ssh/sshd_config && \
    echo "Port 22" >> /etc/ssh/sshd_config && \
	echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

ADD run.sh /home/run.sh
RUN chmod +x /home/run.sh
CMD ["/home/run.sh"]
