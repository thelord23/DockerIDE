FROM alpine:latest
RUN apk add -U --no-cache \
	    vim git git-perl \
	    zsh tmux ncurses \
	    curl less man \
	    docker \
	    openssh bash \
	    ctags \
	    grep \
&& sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
&& echo "root:root" | chpasswd \
&& rm -rf /var/cache/apk/*
RUN sed -ie 's/#Port 22/Port 22/g' /etc/ssh/sshd_config
RUN sed -ri 's/#HostKey \/etc\/ssh\/ssh_host_key/HostKey \/etc\/ssh\/ssh_host_key/g' /etc/ssh/sshd_config
RUN sed -ir 's/#HostKey \/etc\/ssh\/ssh_host_rsa_key/HostKey \/etc\/ssh\/ssh_host_rsa_key/g' /etc/ssh/sshd_config
RUN sed -ir 's/#HostKey \/etc\/ssh\/ssh_host_dsa_key/HostKey \/etc\/ssh\/ssh_host_dsa_key/g' /etc/ssh/sshd_config
RUN sed -ir 's/#HostKey \/etc\/ssh\/ssh_host_ecdsa_key/HostKey \/etc\/ssh\/ssh_host_ecdsa_key/g' /etc/ssh/sshd_config
RUN sed -ir 's/#HostKey \/etc\/ssh\/ssh_host_ed25519_key/HostKey \/etc\/ssh\/ssh_host_ed25519_key/g' /etc/ssh/sshd_config
RUN /usr/bin/ssh-keygen -A
RUN ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN mkdir -p /home/workspace/
ADD .profile /root/.zprofile
ADD sshconfig /root/.ssh/config
RUN sed -i 's/\/root:\/bin\/ash/\/root:\/bin\/zsh/' /etc/passwd
ADD .vimrc /root/.vimrc

#installing YankRing plugin
RUN git clone https://github.com/vim-scripts/YankRing.vim.git; mkdir -p /root/.vim/doc; mkdir -p /root/.vim/plugin; cp -p YankRing.vim/plugin/yankring.vim  /root/.vim/plugin/; cp -p YankRing.vim/doc/yankring.txt  /root/.vim/doc/;rm -r YankRing.vim

WORKDIR /home/workspace/
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]

