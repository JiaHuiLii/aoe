. conf/kv.sh
echo 'obj-$(CONFIG_ATA_OVER_ETH) += '"$TESTNO"'.o' > conf/Makefile
$make_cmd > conf/$TESTNO.log 2>&1

status="$?"
test "`egrep -i 'create_buf_file' conf/$TESTNO.log`" && { echo old; exit 0; }

echo new
