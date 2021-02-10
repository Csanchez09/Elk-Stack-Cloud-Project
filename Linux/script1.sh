#!/bin/sh

awk '{print $1, $2, $5, $6}' 031* | grep "05:00:00" | grep "AM" 
awk '{print $1, $2, $5, $6}' 031* | grep "02:00:00" | grep "PM"
awk '{print $1, $2, $5, $6}' 031* | grep "08:00:00" | grep "AM"
awk '{print $1, $2, $5, $6}' 031* | grep "08:00:00" | grep "PM"
awk '{print $1, $2, $5, $6}' 031* | grep "11:00:00" | grep "PM"

$@

