
set(FFMPEG_PACKAGE_VERSION 2.0)
set(FFMPEG_REPO_URL git://source.ffmpeg.org/ffmpeg.git)
set(FFMPEG_REPO_TAG c329713)
set(FFMPEG_DEPENDS REQUIRED yasm)
set(FFMPEG_FORCE_BUILD ON)
set(FFMPEG_SOURCE "${CMAKE_BINARY_DIR}/src/FFmpeg")

#set(FFMPEG_ENABLE_OPTIONS shared gpl version3 avisynth bzlib fontconfig frei0r gnutls iconv libass libbluray libcaca libfreetype libgsm libilbc libmodplug libmp3lame libopencore-amrnb libopencore-amrwb libopenjpeg libopus librtmp libschroedinger libsoxr libspeex libtheora libtwolame libvo-aacenc libvo-amrwbenc libvorbis libvpx libx264 libxavs libxvid zlib)
set(FFMPEG_ENABLE_OPTIONS static gpl version3 avisynth bzlib fontconfig iconv libfreetype zlib)
set(FFMPEG_DISABLE_OPTIONS shared w32threads)

foreach(OPTION ${FFMPEG_ENABLE_OPTIONS})
  list(APPEND CONF_OPTIONS "--enable-${OPTION}")
endforeach()
foreach(OPTION ${FFMPEG_DISABLE_OPTIONS})
  list(APPEND CONF_OPTIONS "--disable-${OPTION}")
endforeach()
#string(REGEX REPLACE ";" " " CONF_OPTIONS ${CONF_OPTIONS})


set(FFMPEG_EXTRA
  UPDATE_COMMAND ""
  CONFIGURE_COMMAND PKG_CONFIG_PATH=${CMAKE_CURRENT_BINARY_DIR}/install/lib/pkgconfig ${FFMPEG_SOURCE}/configure "--prefix=${CMAKE_CURRENT_BINARY_DIR}/install" "--extra-cflags=-I${CMAKE_CURRENT_BINARY_DIR}/install/include --static" "--extra-ldflags=-L${CMAKE_CURRENT_BINARY_DIR}/install/lib" ${CONF_OPTIONS}
)
