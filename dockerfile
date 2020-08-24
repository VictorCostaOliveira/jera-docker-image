FROM docker:dind
ADD / /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]