#!/bin/bash
curl -s "http://eow.alc.co.jp/search?q=$1" | sed -n '/"resultsList"/,/"navigation"/p' | head -n -1 | w3m -T text/html
