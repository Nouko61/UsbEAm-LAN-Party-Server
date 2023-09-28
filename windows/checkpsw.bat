@echo off
::设置配置文件路径，日志文件路径，时间戳
SET PASSFILE=psw-file
SET LOG_FILE=openvpn-password.log
SET TIME_STAMP=[%date% %time%]
SET CORRECT_PASSWORD=
 
::检测传入的参数个数
set cnt=0
:loop
if not "%1"=="" (set /a cnt+=1&shift /1&goto :loop)
echo [%date% %time%]参数个数%cnt%>>%LOG_FILE%
 
 
::传入的参数
::SET username=%1
::set password=%2
::写入测试
echo [%date% %time%]写入测试%username%%password%>>%LOG_FILE%
 
 
::判断文件是否存在
if not exist %PASSFILE% echo %TIME_STAMP% %PASSFILE%文件不存在>>%LOG_FILE% & exit 1
if exist %PASSFILE% echo %TIME_STAMP% %PASSFILE%密码文件已经找到>>%LOG_FILE%
 
::通过传入的参数，寻找对应的密码，密码存入CORRECT_PASSWORD变量，密码文件忽略#开头的行
for /f "eol=# tokens=1,2 delims= " %%i in (%PASSFILE%) do (
    if "%%i" == "%username%" (
        SET CORRECT_PASSWORD=%%j
    )
)
 
::如果没有读取到密码，直接退出
if "%CORRECT_PASSWORD%" == "" (
    ::用户名不存在
    echo [%date% %time%]用户名%username%不存在>>%LOG_FILE%
    exit 1
)
if not "%CORRECT_PASSWORD%" == "" (
    ::用户名存在，在文件中找到对应的密码
    echo [%date% %time%]已经找到对应的密码>>%LOG_FILE%
)
 
::判断密码是否匹配
if "%CORRECT_PASSWORD%" == "%password%" (
    ::密码匹配
    echo [%date% %time%]密码匹配>>%LOG_FILE%
    exit 0
)
if not "%CORRECT_PASSWORD%" == "%password%" (
    ::密码不匹配
    echo [%date% %time%]您的密码%password%与数据库不匹配>>%LOG_FILE%
    exit 1
)