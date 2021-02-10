#!/bin/sh

awk '/05:00:00 AM/ {print $1}' 0310_Dealer_schedules  

$@


