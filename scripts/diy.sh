#!/bin/bash

#更改默认地址为192.168.6.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
#删除冲突文件
rm -rf $(find /workdir/openwrt/package -type d -regex ".*\(istore\|example\).*")
