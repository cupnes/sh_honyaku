#!/bin/bash
UA='Mozilla/5.0 (X11; Linux i686; rv:33.0) Gecko/20100101 Firefox/33.0'
wget -q -U "$UA" -O - --post-data="auto_detect=on&before=$*" http://www.excite.co.jp/world/english/ | tr '<' '\n' | tr '>' '\n' | awk '$0~/id="after"/{is_show=1;next}$0~/textarea/&&is_show==1{is_show=0;exit}is_show==1{print $0}'
