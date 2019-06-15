QT += core
CONFIG += release warn_on exceptions strict_c++ c++17
TEMPLATE = app
TARGET = AzureTest
DEFINES += QT_NO_UNICODE_LITERAL 

SOURCES += main.cpp


QMAKE_CXXFLAGS += -std=c++2a

macx {
message("On OSX, set deployment target")
QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.13
}

unix:!macx {
message("On Linux, override compiler")
QMAKE_LINK = clang++
QMAKE_CXX = clang++
QMAKE_CC = clang
}
