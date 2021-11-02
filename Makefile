# ここについて
# DXlibでMakefileを書けるかどうかのテスト用リポジトリです。
# 参考:https://qiita.com/C_Assembly/items/e921b7c0745651d31d79
# [C++]DXライブラリ(DxLib)をMinGWで使う by @C_Assembly
# 一番最後の行にこれを追加してください。
# GithubActionだと永遠に終わらないので...
# run:
#	main.exe
.SUFFIXES:	#サフィックス無効
CC:=g++ #g++でビルドする

CFLAGS:= -g3 #デバッグ情報最大化
CFLAGS+= -Wall #エラーを全部出す
CFLAGS+= -Wextra #追加の警告オプション
CFLAGS+= -std=gnu++20 #C++20でビルドする
CFLAGS+= -DDX_GCC_COMPILE
CFLAGS+= -DDX_NON_INLINE_ASM

TARGET = main #実行ファイルの名前
SRCS = ./*.cpp
#ICON = icon.res #アイコンファイルの場所
INC_DIR := -isystem ./7_3_0 #インクルードするディレクトリ
LIB_DIR := -L ./7_3_0 #ライブラリディレクトリ

#リンク時のフラグ
LDFLAGS := -lDxLib \
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
     -lcelt \
     -mwindows      
$(TARGET):
	$(CC) -o $(TARGET) $(CFLAGS) $(SRCS)  $(INC_DIR) $(LIB_DIR) $(LDFLAGS)
