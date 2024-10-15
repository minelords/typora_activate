# typora_activate
typora的激活方法

## 获取激活码
### linux
`sh ./typora_activate.sh`

### windows
1.将压缩包中的两个 exe 解压，并复制到 typora 的安装目录

2.使用管理员身份运行 cmd

3.进入typora的安装目录，并执行node_inject.exe、license-gen.exe；最终会得到序列号用于激活
```
cd 'D:\xxxx\Typora'
.\node_inject.exe
.\license-gen.exe
```

## 激活
Email可以随意输入一个，并复制上述生成的序列号，点击激活即可

以上就是typora在linux和windows生成序列号的方法！
