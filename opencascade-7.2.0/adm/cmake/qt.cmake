#qt

#looking for 3RDPARTY_QT_DIR variable used later in qt_macro.cmake
SET(CSF_QtCore "QtCore")
THIRDPARTY_PRODUCT("QT" "" "CSF_QtCore" "d")

list (APPEND 3RDPARTY_DLL_DIRS "${3RDPARTY_QT_DIR}/bin")

list (REMOVE_ITEM 3RDPARTY_NOT_INCLUDED "3RDPARTY_QT_INCLUDE_DIR")
list (REMOVE_ITEM 3RDPARTY_NOT_INCLUDED "3RDPARTY_QT_LIBRARY_DIR")
list (REMOVE_ITEM 3RDPARTY_NOT_INCLUDED "3RDPARTY_QT_DLL_DIR")

UNSET (${3RDPARTY_QT_DLL} CACHE)
UNSET (${3RDPARTY_QT_DLL_DIR} CACHE)
UNSET (${3RDPARTY_QT_INCLUDE_DIR} CACHE)
UNSET (${3RDPARTY_QT_LIBRARY} CACHE)
UNSET (${3RDPARTY_QT_LIBRARY_DIR} CACHE)

set (USED_3RDPARTY_QT_DIR "${3RDPARTY_QT_DIR}")
message (STATUS "Info: Qt is used from folder: ${3RDPARTY_QT_DIR}")
