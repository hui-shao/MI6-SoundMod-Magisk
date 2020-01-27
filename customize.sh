DEVICE=`getprop ro.product.device`
VERSION=`getprop ro.build.version.incremental`
ui_print " "
ui_print "=============================="
  ui_print "Mi 6 出厂立体声"
  ui_print "     ---by 浅蓝的灯/hui-shao"
ui_print "=============================="
ui_print "设备信息："
ui_print "Device: "$DEVICE
ui_print "Version: "$VERSION

if [ $DEVICE != "sagit" ] && [ $DEVICE == "whyred" ]; then
  abort " => Device '"$DEVICE"' is not supported yet"
fi