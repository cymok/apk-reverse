# 脚本简介

`sign.bat` windows批处理脚本，依赖`jdk`的`jarsigner`，写个脚本只是更方便

所以 Mac/Linux 直接用 `jarsigner` 命令也可以

```
jarsigner -verbose -keystore [签名文件] -signedjar [输出apk] [源apk] [签名的别名]
```
