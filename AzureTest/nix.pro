QT += core
CONFIG += release cxx17 warn_on exceptions
TEMPLATE = app
TARGET = AzureTest
DEFINES += QT_NO_UNICODE_LITERAL 
INCLUDEPATH += ../Qt/5.12.3/include

SOURCES += main.cpp

QMAKE_CXXFLAGS += -std=c++2a -stdlib=libc++
macx {
message("On OSX, set deployment target")
QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.13
QMAKE_MACX_DEPLOYMENT_TARGET = 10.13
QMAKE_CXXFLAGS += -mmacosx-version-min=10.13
}
unix:!macx {
message("On Linux, override compiler")
QMAKE_CC = clang
QMAKE_CXX = clang++
DEFINES += NDEBUG
}