wlconf_path=/usr/sbin/wlconf
wlconf_scripts_path=/usr/share/wl18xx/scripts/wlconf
wl18xx_conf_bin=/lib/firmware/ti-connectivity/wl18xx-conf.bin

rmmod wl18xx
./testing_set_wlcore.sh siso20 rdl2_rdl4
cd ${wlconf_path}
./wlconf -i ${wl18xx_conf_bin} -o ${wl18xx_conf_bin} --set core.conn.sta_sleep_auth=2
cd ${wlconf_scripts_path}
./wlconf-modify-default-params.sh
modprobe wl18xx
