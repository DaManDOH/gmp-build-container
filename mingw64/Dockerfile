# FROM debian:13.1
FROM gcc:14

RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install \
    vim \
    gcc-mingw-w64-x86-64-win32 \
    g++-mingw-w64-x86-64-win32 \
    gdb-mingw-w64 && \
    groupadd -r developers && \
    useradd -mr -g developers -s /bin/bash builduser && \
    echo "export LS_OPTIONS='--color=auto'" > /home/builduser/.bashrc && \
    echo "eval \"\$(dircolors --sh)\"" >> /home/builduser/.bashrc && \
    echo "alias ls='ls \${LS_OPTIONS}'" >> /home/builduser/.bashrc && \
    mkdir /app && \
    chown -R builduser:developers /app

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/x86_64-w64-mingw32-gcc 60 && \
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc.orig 50 && \
    update-alternatives --config gcc; \
    update-alternatives --install /usr/bin/cc cc /usr/bin/x86_64-w64-mingw32-gcc 60 && \
    update-alternatives --install /usr/bin/cc cc /usr/bin/gcc.orig 50 && \
    update-alternatives --config cc; \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/x86_64-w64-mingw32-g++ 60 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++.orig 50 && \
    update-alternatives --config g++;

USER builduser
WORKDIR /app

RUN curl -sLO https://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz && \
    tar -xvf ./gmp-6.3.0.tar.xz && \
    rm -f ./gmp-6.3.0.tar.xz

ADD --chown=builduser:developers ./src .
