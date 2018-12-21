FROM brewpi/brewpi-raspian
RUN git fetch --unshallow && \
    git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*" && \
    git fetch origin && \
    git checkout legacy && \
    cd /var/www/html && \
    git fetch --unshallow && \
    git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*" && \
    git fetch origin && \
    git checkout legacy
# docker build -t eamon/brewpi-legacy . docker login docker push eamon/brewpi-legacy
# docker run 
