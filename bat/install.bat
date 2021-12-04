echo off
chcp 65001
echo BCUかんたんインストーラ
echo 放置していると白い画面がでてきてダイアログがでるのでOKを押していき、消えたらこのコマンド画面をEnterしてください。
echo *******************************************
echo これはjavaがわからない人用です。わかるのなら自分で起動してください。
echo *******************************************
@PAUSE
bitsadmin /transfer download https://github.com/battlecatsultimate/bcu-assets/blob/master/jar/BCU-Initializer.jar?raw=true "%CD%\BCU-Initializer.jar"
bitsadmin /transfer download https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-1.8.0.222-2.b10/java-1.8.0-openjdk-jre-1.8.0.222-2.b10.ojdkbuild.windows.x86_64.zip "%CD%\java.zip"
7za.exe x "%CD%\java.zip"
powershell -NoProfile -ExcutionPolicy Unrestricted -Command "& { Expand-Archive -Path '%CD%\java.zip' }"  
ren java-1.8.0-openjdk-jre-1.8.0.222-2.b10.ojdkbuild.windows.x86_64 jdk
set Path=%Path%;"%CD%\jdk\bin"
del "%CD%\java.zip"
java -jar "%CD%\BCU-Initializer.jar"
echo インストールが終わりました。開くときはstart.batを使ってください。
@PAUSE
del "%CD%\BCU-Initializer.jar"
del "%~f0"