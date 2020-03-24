# 下载

[`apktool.jar`](https://ibotpeaches.github.io/Apktool/)  
[`apktool.bat`](https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat)

# 使用

`apktool.bat` 脚本没有的话  
需要将命令 `apktool` 替换为 `java -jar apktool.jar`

反编译
```
$ apktool d foo.jar
// decodes foo.jar to foo.jar.out folder

$ apktool decode foo.jar
// decodes foo.jar to foo.jar.out folder

$ apktool d bar.apk
// decodes bar.apk to bar folder

$ apktool decode bar.apk
// decodes bar.apk to bar folder

$ apktool d bar.apk -o baz
// decodes bar.apk to baz folder
```

回编译
```
$ apktool b foo.jar.out
// builds foo.jar.out folder into foo.jar.out/dist/foo.jar file

$ apktool build foo.jar.out
// builds foo.jar.out folder into foo.jar.out/dist/foo.jar file

$ apktool b bar
// builds bar folder into bar/dist/bar.apk file

$ apktool b .
// builds current directory into ./dist

$ apktool b bar -o new_bar.apk
// builds bar folder into new_bar.apk
```

[Framework Files and more](https://ibotpeaches.github.io/Apktool/documentation/)

#### 可能会遇到的问题

---

反编译报错
```
Exception in thread "main" org.jf.dexlib2.dexbacked.DexBackedDexFile$NotADexFile: Not a valid dex magic value:
```

尝试添加参数 `--only-main-classe`  
即
```
apktool d [--only-main-classe] target.apk [-o out_folder]
```

---
