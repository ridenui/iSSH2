TMPDIR=/var/folders/bq/gwfmj_ms3b77rq23m_y6y5sw0000gn/T/
CFLAGS="-target x86_64-apple-ios13.0-macabi" ./iSSH2.sh --platform=iphoneos --target=macosx --min-version=10.15 --archs="x86_64"
./iSSH2.sh --platform=iphoneos --min-version=8.0 --archs="armv7 armv7s i386 arm64 arm64e x86_64"
echo "Building fat file libssh2.a"
mkdir -p ./libssh2_iphoneos/lib
mkdir -p ./openssl_iphoneos/lib
lipo -create ${TMPDIR}iSSH2/libssh2-1.9.0/MacOSX_10.15-x86_64/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneOS_13.2-arm64/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneOS_13.2-arm64e/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneOS_13.2-armv7/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneOS_13.2-armv7s/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneSimulator_13.2-i386/install/lib/libssh2.a -output ./libssh2_iphoneos/lib/libssh2.a
lipo -info ./libssh2_iphoneos/lib/libssh2.a
lipo -create ${TMPDIR}iSSH2/openssl-1.1.1d/MacOSX_10.15-x86_64/install/lib/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneOS_13.2-arm64/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneOS_13.2-arm64e/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneOS_13.2-armv7/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneOS_13.2-armv7s/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneSimulator_13.2-i386/libcrypto.a -output ./openssl_iphoneos/lib/libcrypto.a
lipo -info ./openssl_iphoneos/lib/libcrypto.a
lipo -create ${TMPDIR}iSSH2/openssl-1.1.1d/MacOSX_10.15-x86_64/install/lib/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneOS_13.2-arm64/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneOS_13.2-arm64e/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneOS_13.2-armv7/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneOS_13.2-armv7s/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1d/iPhoneSimulator_13.2-i386/libssl.a -output ./openssl_iphoneos/lib/libssl.a
lipo -info ./openssl_iphoneos/lib/libssl.a
