FROM scratch
ADD archlinux.tar.gz /
ENV LANG=en_US.UTF-8
CMD ["/usr/bin/bash"]

RUN locale-gen && \
    pacman-key --init && \
    pacman-key --populate archlinuxarm && \
    pacman -Sqyu --noconfirm
