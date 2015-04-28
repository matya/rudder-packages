module rudder-webapp 1.0;

require {
        type httpd_t;
        type var_t;
        type http_cache_port_t;
        class tcp_socket name_connect;
        class file getattr;
}

#============= httpd_t ==============

# Allow httpd daemon to access 8080:tcp via connect method
allow httpd_t http_cache_port_t:tcp_socket name_connect;