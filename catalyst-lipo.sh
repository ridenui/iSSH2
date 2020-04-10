mkdir -p ./libssh2_iphoneos/lib
mkdir -p ./openssl_iphoneos/lib
lipo -create ${TMPDIR}iSSH2/libssh2-1.9.0/MacOSX_10.15-x86_64/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneOS_13.4-arm64/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneOS_13.4-arm64e/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneOS_13.4-armv7/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneOS_13.4-armv7s/install/lib/libssh2.a ${TMPDIR}iSSH2/libssh2-1.9.0/iPhoneSimulator_13.4-i386/install/lib/libssh2.a -output ./libssh2_iphoneos/lib/libssh2.a
lipo -info ./libssh2_iphoneos/lib/libssh2.a
lipo -create ${TMPDIR}iSSH2/openssl-1.1.1f/MacOSX_10.15-x86_64/install/lib/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneOS_13.4-arm64/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneOS_13.4-arm64e/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneOS_13.4-armv7/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneOS_13.4-armv7s/libcrypto.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneSimulator_13.4-i386/libcrypto.a -output ./openssl_iphoneos/lib/libcrypto.a
lipo -info ./openssl_iphoneos/lib/libcrypto.a
lipo -create ${TMPDIR}iSSH2/openssl-1.1.1f/MacOSX_10.15-x86_64/install/lib/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneOS_13.4-arm64/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneOS_13.4-arm64e/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneOS_13.4-armv7/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneOS_13.4-armv7s/libssl.a ${TMPDIR}iSSH2/openssl-1.1.1f/iPhoneSimulator_13.4-i386/libssl.a -output ./openssl_iphoneos/lib/libssl.a
lipo -info ./openssl_iphoneos/lib/libssl.a
