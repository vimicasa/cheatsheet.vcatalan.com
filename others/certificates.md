# Certificates

#### See certs

```text
openssl s_client -showcerts -servername vcatalan.com -connect vcatalan.com:443 <<< "Q" 2>/dev/null | openssl x509 -text -noout
```

#### Create self-signed certificate

```text
Passphrase: <dominio>
openssl genrsa -aes256 -out ca.key 4096
openssl req -new -x509 -days 3650 -key ca.key -out ca.crt
openssl genrsa -aes256 -out <dominio>.key 4096
openssl req -new -sha256 -key <dominio>.key -out <dominio>.csr
openssl x509 -req -days 3650 -in <dominio>.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out <dominio>.crt
openssl rsa -in <dominio>.key -out <dominio>.key.insecure
```



