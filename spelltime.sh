#!/bin/bash

hr=$(date +"%I")
min=$(date +"%M")

hrs=$hr
mins=$(awk -v n=$min 'BEGIN{print int((n+5/2)/5) * 5}')

case $hrs in
00) shrs="twelve" ;;
01) shrs="one" ;;
02) shrs="two" ;;
03) shrs="three" ;;
04) shrs="four" ;;
05) shrs="five" ;;
06) shrs="six" ;;
07) shrs="seven" ;;
08) shrs="eight" ;;
09) shrs="nine" ;;
10) shrs="ten" ;;
11) shrs="eleven" ;;
12) shrs="twelve" ;;
esac

if [ $mins -gt 30 ]; then
	case $hrs in
	00) shrs="one" ;;
	01) shrs="two" ;;
	02) shrs="three" ;;
	03) shrs="four" ;;
	04) shrs="five" ;;
	05) shrs="six" ;;
	06) shrs="seven" ;;
	07) shrs="eight" ;;
	08) shrs="nine" ;;
	09) shrs="ten" ;;
	10) shrs="eleven" ;;
	11) shrs="twelve" ;;
	12) shrs="one" ;;
	esac
fi

case $mins in
0) stime="at ${shrs}" ;;
5) stime="five past ${shrs}" ;;
10) stime="ten past ${shrs}" ;;
15) stime="quarter past ${shrs}" ;;
20) stime="twenty past ${shrs}" ;;
25) stime="twenty-five past ${shrs}" ;;
30) stime="half past ${shrs}" ;;
35) stime="twenty-five to ${shrs}" ;;
40) stime="twenty to ${shrs}" ;;
45) stime="quarter to ${shrs}" ;;
50) stime="ten to ${shrs}" ;;
55) stime="five to ${shrs}" ;;
60) stime="at ${shrs}" ;;
esac

echo $stime
