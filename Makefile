# 参考:https://qiita.com/C_Assembly/items/e921b7c0745651d31d79
# [C++]DXライブラリ(DxLib)をMinGWで使う by @C_Assembly
build:
	g++ -o main -g3 -Wall -Wextra  main.cpp \
     -I ./7_3_0 \
     -L ./7_3_0 \
     -DDX_GCC_COMPILE -DDX_NON_INLINE_ASM \
     -lDxLib \
     -lDxUseCLib \
     -lDxDrawFunc \
     -ljpeg \
     -lpng \
     -lzlib \
     -ltiff \
     -ltheora_static \
     -lvorbis_static \
     -lvorbisfile_static \
     -logg_static \
     -lbulletdynamics \
     -lbulletcollision \
     -lbulletmath \
     -lopusfile \
     -lopus \
     -lsilk_common \
     -lcelt