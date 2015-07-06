set(YASM_PACKAGE_VERSION 1.0)
set(YASM_REPO_TYPE FILE)
set(YASM_REPO_URL http://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz)
set(YASM_URL_MD5 4cfc0686cf5350dd1305c4d905eb55a6)
set(YASM_FORCE_BUILD ON)
set(YASM_SOURCE "${CMAKE_BINARY_DIR}/src/yasm")

set(YASM_EXTRA
  UPDATE_COMMAND ""
  CONFIGURE_COMMAND ${YASM_SOURCE}/configure "--prefix=${CMAKE_CURRENT_BINARY_DIR}/install"
)
