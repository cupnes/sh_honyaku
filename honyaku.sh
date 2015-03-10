#!/bin/bash
curl -A 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0' -s "http://eow.alc.co.jp/search?q=$(echo $@ | tr ' ' '+')" | sed -n '/"resultsList"/,/"navigation"/p' | head -n -1 | w3m -T text/html
