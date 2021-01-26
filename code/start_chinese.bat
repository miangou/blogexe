@echo off
::请设置path为自己的仓库名
set path=blogexe
blog.exe
cd %path%
cd index
del article_list_cn.html
echo ^<html^> >>article_list_cn.html
echo ^<head^> >>article_list_cn.html
echo ^<meta http-equiv="Content-Type" content="text/html;charset=utf-8"^> >>article_list_cn.html
echo ^</head^> >>article_list_cn.html
echo ^<body^> >>article_list_cn.html
type article_list.html >>article_list_cn.html
echo ^</body^> >> article_list_cn.html
echo ^</html^> >> article_list_cn.html