# �����ɂ���
# DXlib��Makefile�������邩�ǂ����̃e�X�g�p���|�W�g���ł��B
# �Q�l:https://qiita.com/C_Assembly/items/e921b7c0745651d31d79
# [C++]DX���C�u����(DxLib)��MinGW�Ŏg�� by @C_Assembly
# ��ԍŌ�̍s�ɂ����ǉ����Ă��������B
# GithubAction���Ɖi���ɏI���Ȃ��̂�...
# run:
#	main.exe
.SUFFIXES:	#�T�t�B�b�N�X����
CC:=g++ #g++�Ńr���h����

CFLAGS:= -g3 #�f�o�b�O���ő剻
CFLAGS+= -Wall #�G���[��S���o��
CFLAGS+= -Wextra #�ǉ��̌x���I�v�V����
CFLAGS+= -std=gnu++20 #C++20�Ńr���h����
CFLAGS+= -DDX_GCC_COMPILE
CFLAGS+= -DDX_NON_INLINE_ASM

TARGET = main #���s�t�@�C���̖��O
SRCS = ./*.cpp
#ICON = icon.res #�A�C�R���t�@�C���̏ꏊ
INC_DIR := -isystem ./7_3_0 #�C���N���[�h����f�B���N�g��
LIB_DIR := -L ./7_3_0 #���C�u�����f�B���N�g��

#�����N���̃t���O
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
