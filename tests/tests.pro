QT       += testlib
QT       -= gui
QT += widgets
TARGET = tst_metagate
CONFIG   += testcase

TEMPLATE = app

INCLUDEPATH = ../ ../src
#INCLUDEPATH += ../../lib
#LIBS += -L../../lib/bin -lFountain

SOURCES += \
    tst_metagate.cpp \
    ../src/Wallet.cpp \
    ../src/machine_uid_win.cpp \
    ../src/EthWallet.cpp \
    ../src/ethtx/scrypt/crypto_scrypt-nosse.cpp \
    ../src/ethtx/scrypt/sha256.cpp \
    ../src/ethtx/cert.cpp \
    ../src/ethtx/rlp.cpp \
    ../src/ethtx/ethtx.cpp \
    ../src/ethtx/cert2.cpp \
    ../src/ethtx/scrypt/crypto_scrypt_saltgen.cpp \
    ../src/ethtx/crossguid/Guid.cpp \
    ../src/btctx/Base58.cpp \
    ../src/btctx/btctx.cpp \
    ../src/btctx/wif.cpp \
    ../src/BtcWallet.cpp \
    ../src/VersionWrapper.cpp \
    ../src/openssl_wrapper/openssl_wrapper.cpp \
    ../src/utils.cpp \
    ../src/ethtx/utils2.cpp \
    ../src/Log.cpp

HEADERS += \
    tst_metagate.h

unix:!macx: include(../libs-unix.pri)
win32: include(../libs-win.pri)
macx: include(../libs-macos.pri)
