# Java Tracert

## 关于

调用批处理 `tracert` 来跟踪路由，并将跟踪到的 IP 地址调用百度 APIStore 的提供的免费接口进行查询，输出到终端。

> TL;DR
> <br>
> 下载后导入 Eclipse
> <br>
> **注意：请将 93 行 API Key 替换为自己[百度 APIStore(http://apistore.baidu.com)](http://apistore.baidu.com) 的 API Key**

### 技能树

- Java SE
- Batch Process
- JSON

### 已知 Bug

- 仅适用 Windows 系统
- 由于固定截取 `tracert` 返回结果的第 8 列，因此会略过请求超时的跃点
- 也是由于以上原因，可能在某些机器上获取不到，可单独测试 `tracert` 结果，将 IP 所在列数填到 bat 文件的 `tokens=` 后，默认为 8

## MIT License

Copyright (c) [2016] [kingcos]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
