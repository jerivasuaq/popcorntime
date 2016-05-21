# popcorntime

```
docker run -ti --rm --entrypoint "/bin/bash" jerivas/popcorntime /config > popcorntime.sh
chmod +x popcorntime.sh
sed -i 's/\r//' popcorntime.sh
./popcorntime.sh
```

The next time do:

```
docker start popcorn
```


