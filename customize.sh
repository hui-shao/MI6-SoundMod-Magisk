SKIPUNZIP=1

# vars
DEVICE=`getprop ro.product.device`
VERSION=`getprop ro.build.version.incremental`

# functions
mod_install() {
  ui_print ""
  ui_print "=============================="
  ui_print "Mi 6 出厂立体声+底噪优化"
  ui_print "     ---by 浅蓝的灯/hui-shao"
  ui_print "=============================="
  ui_print ""
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" -x 'META-INF/*' -d $MODPATH >&2
  ui_print "- Setting permissions"
  set_perm_recursive $MODPATH 0 0 0755 0644
}


ui_print "设备信息："
ui_print "Device: "$DEVICE
ui_print "Version: "$VERSION
if [ $DEVICE != "sagit" ] || [ $DEVICE == "whyred" ]; then
  abort " => Device '"$DEVICE"' is not supported yet"
else
  mod_install
fi