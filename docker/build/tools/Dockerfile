# escape=`

ARG BASE_IMAGE
ARG BUILD_IMAGE

FROM ${BASE_IMAGE} as tools
FROM ${BUILD_IMAGE} as builder
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

COPY --from=tools C:\tools C:\tools

# The Development entrypoint script in the 10.1 tools image is not compatible
# with Sitecore 10.0 Initial Release. This script fixes that incompatibility.
# This should be removed when upgrading to Sitecore 10.0 Update-1 or newer.
COPY FixDevelopmentEntrypoint.ps1 .
RUN C:\FixDevelopmentEntrypoint.ps1 -Path C:\tools\entrypoints\iis\Development.ps1

FROM ${BASE_IMAGE}

COPY --from=builder C:\tools C:\tools
COPY dev-patches\ \tools\dev-patches\
