#!/bin/bash

# set "manifest=.\AndroidManifest.xml"
# set "gradle=.\build.gradle"
manifest="./android/app/src/main/AndroidManifest.xml"
gradle="./android/app/build.gradle"
output="./build/app/outputs/flutter-apk"
mkdir -p "$output/out"

echo
echo "building: customer app ..."

sed -i -E "s/applicationId .+/applicationId 'com.yumi.customers'/" "$gradle"
sed -i -E "s/android:label=.+/android:label='YUMI'/" "$manifest"
flutter build apk -t lib/app/yumi/customer.dart
mv "$output/app-release.apk" "$output/out/customer.apk"

echo "$output/customer.apk"
echo "building: chef app ..."
sed -i -E "s/applicationId .+/applicationId 'com.yumi.chefs'/" "$gradle"
sed -i -E "s/android:label=.+/android:label='YUMI Chef'/" "$manifest"
flutter build apk -t lib/app/yumi/chef.dart
mv "$output/app-release.apk" "$output/out/chef.apk"

echo "building: driver app ..."
sed -i -E "s/applicationId .+/applicationId 'com.yumi.drivers'/" "$gradle"
sed -i -E "s/android:label=.+/android:label='YUMI Driver'/" "$manifest"
flutter build apk -t lib/app/yumi/driver.dart
mv "$output/app-release.apk" "$output/out/driver.apk"