#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

echo 'src-git dcc2-wiwiz https://github.com/wiwizcom/WiFiPortal/tree/main/dcc2-wiwiz' >>feeds.conf.default
echo 'src-git eqos-master-wiwiz https://github.com/wiwizcom/WiFiPortal/tree/main/eqos-master-wiwiz' >>feeds.conf.default
echo 'src-git wifidog-wiwiz https://github.com/wiwizcom/WiFiPortal/tree/main/wifidog-wiwiz' >>feeds.conf.default

#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
