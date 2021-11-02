#include "DxLib.h"

//[[maybe_unused]] _In_はmingwの警告を減らすためです
int WINAPI WinMain([[maybe_unused]] _In_ HINSTANCE hInstance, [[maybe_unused]] _In_opt_ HINSTANCE hPrevInstance, [[maybe_unused]] _In_ LPSTR lpCmdLine, [[maybe_unused]] _In_ int nShowCmd)
{

	ChangeWindowMode(TRUE);
	SetOutApplicationLogValidFlag(FALSE); //ログファイルの出力をやめる
	SetAlwaysRunFlag(TRUE);				  //フォーカスが外れた時も動作を続ける
	SetDoubleStartValidFlag(TRUE);		  //DXライブラリの多重起動を許可するウィンドウモードに設定
	SetGraphMode(1280, 720, 32);		  //画面サイズを1280x720,32bitカラーにする
	SetWindowStyleMode(7);
	SetWindowSizeChangeEnableFlag(TRUE); //ウィンドウのサイズを変更できるようにする
	if (DxLib_Init() == -1)				 // ＤＸライブラリ初期化処理
	{
		return -1; // エラーが起きたら直ちに終了
	}
	DrawPixel(320, 240, GetColor(255, 255, 255)); // 点を打つ
	WaitKey();									  // キー入力待ち
	DxLib_End();								  // ＤＸライブラリ使用の終了処理
	return 0;									  // ソフトの終了
}
