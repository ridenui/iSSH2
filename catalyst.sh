TMPDIR=/var/folders/bq/gwfmj_ms3b77rq23m_y6y5sw0000gn/T/iSSH2
CFLAGS="-target x86_64-apple-ios13.0-macabi" ./iSSH2.sh --platform=iphoneos --target=macosx --min-version=10.15 --archs="x86_64"
./iSSH2.sh --platform=iphoneos --min-version=8.0 --archs="arm64 arm64e armv7 armv7s"
echo "Building fat file libssh2.a"
lipo -create $TMPDIR/libssh2-1.9.0/iPhoneOS_13.2-arm64/install/lib/libssh2.a $TMPDIR/libssh2-1.9.0/iPhoneOS_13.2-arm64e/install/lib/libssh2.a $TMPDIR/libssh2-1.9.0/iPhoneOS_13.2-armv7/install/lib/libssh2.a $TMPDIR/libssh2-1.9.0/iPhoneOS_13.2-armv7s/install/lib/libssh2.a $TMPDIR/libssh2-1.9.0/MacOSX_10.15-x86_64/install/lib/libssh2.a -output ./libssh2_iphoneos/lib/libssh2.a
lipo -info ./libssh2_iphoneos/lib/libssh2.a
