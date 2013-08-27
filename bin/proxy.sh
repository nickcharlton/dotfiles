#!/bin/bash

#
# Enable/Disable Local System Caching Proxy
#

function proxyon() {
    export HTTP_PROXY="http://localhost:3128/"
    export HTTPS_PROXY=$HTTP_PROXY
    export NO_PROXY="*.local, 169.254/16"
    echo "Proxy environment variable set."
}

function proxyoff() {
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset NO_PROXY
    echo "Proxy environment variable removed."
}
