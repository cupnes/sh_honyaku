#!/bin/bash
curl -s "http://eow.alc.co.jp/search?q=$(echo $@ | tr ' ' '+')" | sed -n '/"resultsList"/,/"navigation"/p' | head -n -1 | w3m -T text/html
