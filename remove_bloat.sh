#!/bin/bash
read -p "Enter watch IP:Port - " ip
adb connect $ip
adb shell pm uninstall -k --user 0 com.android.providers.media # media
adb shell pm uninstall -k --user 0 com.samsung.android.gallery.watch # gallery
adb shell pm uninstall -k --user 0 com.samsung.android.app.reminder # reminders
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.agent # bixby
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.wakeup # bixby
adb shell pm uninstall -k --user 0 com.samsung.android.samsungpay.gear # samsung pay
adb shell pm uninstall -k --user 0 com.samsung.android.watch.alarm # alarm
adb shell pm uninstall -k --user 0 com.samsung.android.watch.stopwatch # stopwatch
adb shell pm uninstall -k --user 0 com.samsung.android.watch.timer # timer
adb shell pm uninstall -k --user 0 com.samsung.android.watch.worldclock # world clock
adb shell pm uninstall -k --user 0 com.samsung.android.watch.weather # weather
adb shell pm uninstall -k --user 0 com.microsoft.office.outlook # outlook
adb shell pm uninstall -k --user 0 com.samsung.android.wear.voicerecorder # voice recorder
adb shell pm uninstall -k --user 0 com.samsung.android.watch.budscontroller # buds controller
adb shell pm uninstall -k --user 0 com.samsung.android.wearable.music # music
adb shell pm uninstall -k --user 0 com.samsung.sree # samsung global goals
adb shell pm uninstall -k --user 0 com.samsung.android.shealthmonitor # remove samsung health monitor in preparation for modded install
adb install *.apk
adb disconnect
