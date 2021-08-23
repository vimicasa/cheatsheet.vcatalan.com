---
description: Screen commands
---

# Screen



#### Commands

```text
screen -d -m -S name_screen bash -c '/opt/bin/tools/xyz.sh |tee /var/log/tools/xyz.log'
```

#### Screen configuracion By Rob Fuller \([https://mobile.twitter.com/mubix/status/1317146837539762176](https://mobile.twitter.com/mubix/status/1317146837539762176)\) 

{% code title=".screenrc" %}
```text
defshell -bash
startup_message off
multiuser on
defscrollback 10000
logfile $HOME/.screen/logs/screenlog.%H.%n.%Y%m%d-%0c:%s.%t.log
logfile flush 5
logstamp on
deflog on
defmonitor on
caption always "%{= gk}%Kw%{= bW}%50> %n%f* %t %{-}%+Lw%< %= %{= rk} %H %l %{= gk} %0c:%s %{-}"
defutf8 on
activity "Activity in $t(%n)"
```
{% endcode %}

