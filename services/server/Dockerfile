FROM webdevops/php-apache-dev:7.3
COPY php.ini /opt/docker/etc/php/
COPY "${SSH_PATH}" /root/.ssh/
RUN apt-get update \
    && apt-get install -y zsh vim gnupg2 wget git-flow \
    && wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true \
    && git config --global user.email "${GIT_EMAIL}" \
    && git config --global user.name "${GIT_NAME}" \
    && git config --global core.fileMode false \
    && mkdir /root/.ssh \