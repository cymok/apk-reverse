@echo off
set /p INPUT=Դ�ļ�:
set /p OUTPUT=����ļ�:
set /p KEYSTORE=����KeyStore (����������й��������ֱ����ק):
set /p ALIAS=KeyStore����:
@echo on
jarsigner -verbose -keystore %KEYSTORE% -signedjar %OUTPUT% %INPUT% %ALIAS%
@pause
