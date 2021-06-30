# pharo4gem
Develop in Pharo, then deploy to GemStone.

## Author: AlbertLee (hanzhupeng@qq.com)

## Intro

GemStone is a great Object Database and Smalltalk sys. Pharo is my favorite Smalltalk develop environment.

Unfortunately, the develop toolchain for gemstone is weird and out dated. I cannot install GemTool. I must using Jade on Windows, and connect to a Unix/Mac server.

I want to use Pharo, so I write this simple tool.

Develop in Pharo, and then use this tool to translate to a topaz script. Then input it from topaz shell.

## 介绍

GemStone 的开发环境比较折腾，GemTool似乎年久失修。目前我搞定的环境是在Windows下跑Jade，连Mac/Linux下的服务器。出门要带两台电脑。。。（VirtualBox最近也不好用）。我还是希望用Pharo来做系统的设计开发，然后用转换工具把代码转到GemStone里去部署。

预计需要几步：

1. 代码的转换，这个比较容易
2. GemStone特殊的容器类的Pharo兼容层

## Usage

```smalltalk
GemHelper exportClass: YourClass  toFile: '/tmp/YourClass.topaz'.
```