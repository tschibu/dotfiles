# Swisscom proxy 
function swisscom_proxy() {
    export https_proxy=http://proxy.corproot.net:8079
    export http_proxy=http://proxy.corproot.net:8079
    echo "INFO: Swisscom Proxy is configured"
}
