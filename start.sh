#!/bin/bash

GERRIT_DIR=/opt/gerrit/
GERRIT_VERSION="2.10"

# Clear cache dir
rm -rf ${GERRIT_DIR}/work/cache
# Reindex changes
java -jar ${GERRIT_DIR}/downloads/gerrit-${GERRIT_VERSION}.war \
  reindex -d ${GERRIT_DIR}/work

${GERRIT_DIR}/work/bin/gerrit.sh supervise -d ${GERRIT_DIR}/work
