# Certificates

#### See certs

```text
openssl s_client -showcerts -servername vcatalan.com -connect vcatalan.com:443 <<< "Q" 2>/dev/null | openssl x509 -text -noout
```

