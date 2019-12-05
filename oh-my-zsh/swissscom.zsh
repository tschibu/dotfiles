# Swisscom proxy 
function swisscom_proxy_load() {
    export https_proxy=http://proxy.corproot.net:8079
    export http_proxy=http://proxy.corproot.net:8079
    conda config --set proxy_servers.https proxy.corproot.net:8079
    conda config --set proxy_servers.http proxy.corproot.net:8079
    echo "INFO: Swisscom Proxy is configured is loaded."
}

function swisscom_proxy_unload() {
    unset https_proxy
    unset http_proxy
    conda config --remove-key proxy_servers
    echo "INFO: Swisscom Proxy is configured is removed."
}
