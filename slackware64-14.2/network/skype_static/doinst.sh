
if [ -e lib/ld-linux.so.2 ];then
  if ls -l lib/ld-linux.so.2 |grep -q usr/share/skype;then
    rm -f lib/ld-linux.so.2
  fi
fi
if [ ! -e lib/ld-linux.so.2 ];then
( cd lib ; rm -rf ld-linux.so.2 )
( cd lib ; ln -sf /usr/share/skype/lib32/ld-linux.so.2 ld-linux.so.2 )
else
  echo
  echo "Warning! Detected an already present 32bit subsystem"
fi

