# Can't use GCC v15; GMP library reports:
#     configure:7072: result: no, long long reliability test 1
#     configure:7310: error: could not find a working compiler, see config.log for details
FROM gcc:14

RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install \
    vim && \
    groupadd -r developers && \
    useradd -mr -g developers -s /bin/bash builduser && \
    echo "export LS_OPTIONS='--color=auto'" > /home/builduser/.bashrc && \
    echo "eval \"\$(dircolors --sh)\"" >> /home/builduser/.bashrc && \
    echo "alias ls='ls \${LS_OPTIONS}'" >> /home/builduser/.bashrc && \
    mkdir /app && \
    chown -R builduser:developers /app

USER builduser
WORKDIR /app

# ADD ./src .
# RUN make

RUN curl -sLO https://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz && \
    tar -xvf ./gmp-6.3.0.tar.xz && \
    rm -f ./gmp-6.3.0.tar.xz

ADD ./src .
