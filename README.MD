# 流程

- 1.用 `apktool` 反编译apk

  - `apktool d target.apk -o target`
  
  - 若遇到 `DexBackedDexFile$NotADexFile` 错误，使用 `apktool d --only-main-classe target.apk -o target`

- 2.用 `dex2jar` 将apk转换成jar

  - `d2j-dex2jar -f target.apk`

- 3.用 `jd-gui` 或者用 `Android Studio` 阅读源码，跟反编译出来的 `smali` 对比

- 4.修改反编译出来的 `smali` 代码

  - 若对 `smali` 语法不熟悉，可以自己找资料学习一下。这里推荐一些个人认为比较好的文章 [Smali语法入门教程](https://www.anquanke.com/post/id/85035) [Smali基本语法](https://www.cnblogs.com/lee0oo0/p/3728271.html)

  - IDEA系的一个可将java/kotlin编译成smali的插件 [java2smali](https://plugins.jetbrains.com/plugin/7385-java2smali/versions), 目前只能手动安装，具体安装方法网上一大堆

- 5.用 `apktool` 回编译

  - `apktool b target -o target_new.apk`

- 6.用jdk的 `jarsigner` 对清除签名后的apk进行重新签名

  - 注意，安装不同签名的apk需要卸载重装

  - 若无法安装或安装时提示签名相关错误，删除apk包里面的 `META-INF` 文件夹所有内容，此文件夹包含原签名信息。修改了apk签名的内容后导致签名验证不通过将无法安装，需要重新签名

- others

  - `aapt` 资源编译和打包工具

  - signapk.jar 比较流行的一个签名工具 可以直接在网上搜索
