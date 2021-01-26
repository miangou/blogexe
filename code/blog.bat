::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBZdTQqFAE+1EbsQ5+n//NaFrkIaGus8d+8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZksaHErTXA==
::ZQ05rAF9IBncCkqN+0xwdVsEAlTMbCXrZg==
::ZQ05rAF9IAHYFVzEqQIyJBRTLA==
::eg0/rx1wNQPfEVWB+kM9LVsJDAaOM2z0A60ZiA==
::fBEirQZwNQPfEVWB+kM9LVsJDAeKLmKpErwS7df54+WAwg==
::cRolqwZ3JBvQF1fEqQK33NNzRRCqKWk/50+ZBRJ+ISjn
::dhA7uBVwLU+EWHqM5ksjPBJaSWQ=
::YQ03rBFzNR3SWATE10oiIQhARQqHXA==
::dhAmsQZ3MwfNWATE10oiIQhARQqHXA==
::ZQ0/vhVqMQ3MEVWAtB9wCxNGRReWNWW/Zg==
::Zg8zqx1/OA3MEVWAtB9wCxNGRReWNWW/Zg==
::dhA7pRFwIByZRRmn/FA5Ow9dQgHi
::Zh4grVQjdCyDJGyX8VAjFBZdTQqFAE+1EbsQ5+n//NaFrkIaGucnfe8=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
echo new >index.md
title %date:~0,4%年%date:~5,2%月%date:~8,2%日 -作者:Christine
set year=%date:~0,4%
set moon=%date:~5,2%
set day=%date:~8,2%
set path=%0
echo Waiting...
rename %path% blog.exe
set /p add="位置:"
md %add%
cd %add%
cls
md index
cd index
md %year%
cls
cd %year%
md %moon%%day%
cls
cd %moon%%day%
if exist times.txt (goto yes) else (goto no)
pause

:jixu
title %year%年%moon%月%day%日第%times%篇文章 -步骤2 -作者:Christine
md %times%
cls
cd %times%
echo This is a markdown file. > index.md
set indexmdpath=%cd%
cd ../../..
title %year%年%moon%月%day%日第%times%篇文章 -步骤3 -作者:Christine
rename article_list.html article_list_old.html
cls
echo new>article_list.html
echo ^<a target^=^"^_blank^" href^="../index/%year%/%moon%%day%/%times%"^>[%year%%moon%%day%:%times%]^<^/a^> > article_list.html
echo ^<br^/^> >> article_list.html
type article_list_old.html >> article_list.html
del article_list_old.html
cls
goto end

:yes
echo times.txt文件存在...
set /p times=<times.txt
set /a times=%times%+1
echo %times% >times.txt
title %date:~0,4%年%date:~5,2%月%date:~8,2%日 -步骤1 -作者:Christine
goto jixu

:no
echo 创建times.txt文件中...
echo 1 >times.txt
set /p times=<times.txt
title %date:~0,4%年%date:~5,2%月%date:~8,2%日 -步骤1 -作者:Christine
goto jixu

:end
echo 结束
echo 打开index.md中
start %indexmdpath%\index.md
echo 关闭