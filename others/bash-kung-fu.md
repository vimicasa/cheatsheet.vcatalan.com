# Bash Kung-fu

```text
# AND // OR
true && echo "True" || echo "False" 
false && echo "True" || echo "False"


# for-loop - kill java process in $Ports
for i in 8084 9090 10091; do PID=$(lsof -i tcp:$i | grep java | awk '{print $2}'); [[ ! -z "$PID" ]] && kill -9 $PID; done

# Monitoring every 0.1 sec
while curl -sI -o /dev/null -w "%{http_code}\n" https://example.com; do sleep 0.1; done
```

