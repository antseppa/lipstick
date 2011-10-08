# ####################################################################
# Main projectfile
# ####################################################################

include(shared.pri)

TEMPLATE = subdirs

addSubDirs(src)

QMAKE_CLEAN += \
    build-stamp \
    configure-stamp \
    artifacts/*.deb \
    *.log.xml \
    *.log

QMAKE_DISTCLEAN += \
    build-stamp \
    configure-stamp \
    *.log.xml \
    *.log

include(check.pri)
include(debian/deb.pri)

#NODOCS:{
#  message("Not building the documentation for this package")
#} else {
#  addSubDirs(doc)
#}
