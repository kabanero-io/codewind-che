# Copyright (c) 2018-2019 Red Hat, Inc.
# This program and the accompanying materials are made
# available under the terms of the Eclipse Public License 2.0
# which is available at https://www.eclipse.org/legal/epl-2.0/
#
# SPDX-License-Identifier: EPL-2.0
#
# Contributors:
#   Red Hat, Inc. - initial API and implementation
#

FROM openjdk:8u191-jdk-alpine

ENV SUMMARY="Kabanero container (Eclipse Che Server)" \
    DESCRIPTION="Kabanero container (Eclipse Che Server)" \
    PRODNAME="Kabanero" \
    COMPNAME="server-container"

LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="$PRODNAME - Che Server" \
      name="$PRODNAME/$COMPNAME" \
      version="1.1" \
      license="EPLv2" \
      maintainer="Andrew Mak <makandre@ca.ibm.com>" \
      usage=""

USER root
COPY entrypoint.sh /entrypoint.sh
RUN mkdir -p /home/user/kabanero

COPY assembly/main/target/kabanero-che-assembly-main /home/user/kabanero
RUN mkdir -p /logs /data && \
    chgrp -R 0     /home/user /data /logs && \
    chmod -R g+rwX /home/user /data /logs && \
    echo "End Of Installed Packages"

ENTRYPOINT ["sh", "/entrypoint.sh"]
