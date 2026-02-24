#!/usr/bin/env fish

# colors
set blue (set_color blue)
set white (set_color white)
set reset (set_color normal)

# system info
set os "MossadOS"
set kernel idf-zen
set host b.netanyahu
set pkgs Israeli Spyware Engine
set uptime (uptime -p | string replace "up " "")
set mem_used (free -m | awk '/Mem:/ {print $3}')
set mem_total (free -m | awk '/Mem:/ {print $2}')
set mem_percent (math "round($mem_used * 100 / $mem_total)")

# print
echo $blue"⠀⠀⠀⡜⡄⠀⠀⠀"$reset"   "$white"os:      $os"
echo $blue"⢖⢒⡞⠒⢳⡒⡲⠀"$reset"   kernel:  $kernel"
echo $blue"⢀⣟⠀⠀⠀⣻⡀⠀"$reset"   host:    $host"
echo $blue"⠮⠬⢦⠤⡴⠥⠵⠀"$reset"   pkgs:    $pkgs (pacman)"
echo $blue"⠀⠀⠀⠱⠁⠀⠀⠀"$reset"   uptime:  $uptime"
echo $blue"⠀⠀⠀⠀⠀⠀⠀⠀"$reset"   memory:  $mem_used MiB / $mem_total MiB ($mem_percent%)"
