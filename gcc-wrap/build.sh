#! /bin/bash


gcc -g -c *.c
gcc -g -o test_wrap_symbol *.o -Wall -Wl,--wrap=malloc -Wl,--wrap=free -Wl,--wrap=foo -Wl,--wrap=_Znwm -Wl,--wrap=_ZdlPv

#aarch64-linux-gnu-gcc -c *.c
#aarch64-linux-gnu-gcc -o test_wrap_symbol *.o -g -Wall -Wl,--wrap=malloc -Wl,--wrap=free -Wl,--wrap=foo -Wl,--wrap=_Znwm -Wl,--wrap=_ZdlPv

./test_wrap_symbol

