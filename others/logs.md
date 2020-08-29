# Logs

### List Top 10 - OK \(2\*\*\) URLs of access.log

```bash
awk '$9~/^2/ {bytes[$7]+=$10; hits[$7]++} END {for (page in bytes){ printf ("%15d %8d %s\n",bytes[page],hits[page],page) }}' access.log | sort -nr | head -10
```



