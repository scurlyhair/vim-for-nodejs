#Note-for-node-js

## Vim
###1.升级mac自带vim
`brew install vim`
###2.安装必要的插件


## Atom
### 插件
安装方法：

- 命令行`apm install ***`
- atom prefrence -> Settings -> Install

插件：

- atom-ternjs: 自动补全
- script: 一键运行

### 步骤
1.安装node

2.新建项目

```
$ mkdir myapp//新建文件夹
$ cd myapp//进入文件夹
$ npm init//工程初始化
$ npm install --save PACKAGE_NAME
```

## 库总结
- [npm](https://github.com/npm/npm): A package manager for javascript.
- [express](https://github.com/expressjs/express): Fast, unopinionated, minimalist web framework for node.
- [utility](https://github.com/node-modules/utility): A collection of useful utilities.
- [superagent](https://github.com/visionmedia/superagent): A small progressive client-side HTTP request library, and Node.js module with the same API, sporting many high-level HTTP client features.
- [cheeriojs](https://github.com/cheeriojs/cheerio):Fast, flexible, and lean implementation of core jQuery designed specifically for the server. 

## 报错总结
#### 1.`Error: listen EADDRINUSE`错误：
`listen()`方法尝试绑定已经被使用的服务器端口。

**解决方案**：终端输入`lsof -i tcp:8888`(8888为端口号)获取在该端口运行的进程id（PID）。输出:

```
COMMAND  PID     USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
node    3742 wuyunhui   12u  IPv6 0xe120a4e962ac90b5      0t0  TCP *:hbci (LISTEN)
```
然后杀死该进程：
`kill -9 3742`

根据stackoverflow上面的答案最好是在`kill -9`之前先 `kill -15`，原因：

Generally, you should use kill -15 before kill -9 to give the target process a chance to clean up after itself. (Processes can't catch or ignore SIGKILL, but they can and often do catch SIGTERM.) If you don't give the process a chance to finish what it's doing and clean up, it may leave corrupted files (or other state) around that it won't be able to understand once restarted.
[Nobita的回答](http://stackoverflow.com/questions/9898372/nodejs-error-listen-eaddrinuse)
