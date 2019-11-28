breaker() {
  imageless_magisk || unmount_magisk_image
  abort "$1"
}

if [ -e /system/xbin/busybox ]; then
  PATH=/data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved
  ACTIVE=$PATH/SaveGames/Active.sav
  CONFIG=$PATH/Config/Android/UserCustom.ini
  if [ -e $ACTIVE ] && [ -e $CONFIG ]; then
    ui_print "- ANTILAG PUBG MOBILE 0.15.0 by Decao"
    rm -rf $ACTIVE
    rm -rf $CONFIG
    mv $TMPDIR/active.key $ACTIVE
    mv $TMPDIR/config.key $CONFIG
  else
    ui_print "- Update/Install PUBG Before !"
    breaker
  fi;
else
  ui_print "- Install Busybox Before !"
  breaker
fi;
