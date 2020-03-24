@echo off
set /p INPUT=源文件:
set /p OUTPUT=输出文件:
set /p KEYSTORE=输入KeyStore (若你的命令行工具允许可直接拖拽):
set /p ALIAS=KeyStore别名:
@echo on
jarsigner -verbose -keystore %KEYSTORE% -signedjar %OUTPUT% %INPUT% %ALIAS%
@pause
