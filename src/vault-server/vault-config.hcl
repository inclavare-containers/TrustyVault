ui              = true
api_addr        = "http://0.0.0.0:8200"
disable_mlock   = true

storage "etcd" {
    address  = "http://etcd:2379"
    etcd_api = "v3"
}

listener "tcp" {
    address       = "0.0.0.0:8200"
    #tls_cert_file = "/config/server.crt"
    #tls_key_file = "/config/server.key"
    tls_disable = true
}

#telemetry {
#    statsite_address = "127.0.0.1:8125"
#    disable_hostname = true
#}
