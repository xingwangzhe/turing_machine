# Hexon

Let's hexo online!

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/gethexon/hexon?style=flat-square)](https://github.com/gethexon/hexon/releases/)

[English](./README.md) | 中文

![home screen](./images/home-screen.png)

## ❔ Hexon 是什么

Hexon 是一个集成了git、命令行并能够帮你管理 hexo 内容的图形化界面

## ⭐️ 特性

- 文章和页面管理
- Front-matter 模板
- ~~在线图片管理~~ 请使用 [imageur](https://github.com/YuJianghao/imageur)

## 📘 指南

### 安装前

确保您的 `git`, `hexo` and `Node.js` 工作流正常。Hexon 仅为这些命令提供了图形用户界面，但**不会实现它们**.

### 安装

```bash
git clone https://github.com/gethexon/hexon --depth 1
cd hexon
pnpm install
pnpm run setup
```

### 卸载

只需删除您刚克隆的文件夹
```bash
rm -rf hexon
```

### 启动

使用 Node.js 启动

```bash
pnpm start
```

使用 [pm2](https://pm2.keymetrics.io/) 启动以获得更好的devOps体验

```bash
pnpm prd
# 或者手动将 pm2 与 `pnpm start` 集成
```

### 更新

删除老版本并重新安装新版本。

## 💻 命令

- `pnpm run setup`: 安装和配置
- `pnpm start`: 使用 Node 启动 Hexon
- `pnpm prd`: 使用 pm2 启动 Hexon
- `pnpm resetpwd`: 重置密码
- `pnpm script`: 管理自定义脚本

您可以在 Hexo 博客文件夹内替换 Hexon 命令为您自己的 Bash 脚本。

例如，修改 git sync 脚本的步骤如下：
1. 在 `<hexo-blog-path>/git_sync.sh` 中编写您的脚本
2. 运行 `pnpm script`
3. 选择 `git sync`
4. 将脚本设置为 `bash ./git_sync.sh`

## 🖥️ 开发

- 切换到 `main` 分支。
- 运行  `pnpm dev-init` 安装依赖并配置 Hexon。
- 运行  `pnpm dev` ，开始大展身手!

## 💩 遇到问题？

- 请查看下面的 FAQs。
- 尝试在 [issue list](https://github.com/gethexon/hexon/issues) 中寻找答案。
- 发起一个新的 [issue](https://github.com/gethexon/hexon/issues/new).

## ❓ 想了解更多？

发起一个新的 [discussion](https://github.com/gethexon/hexon/discussions).

## 👌🏻 FAQ

### 404 Error

可能是反向代理配置错误（例如 Nginx 或 Apache 配置）。请在您的服务器上不经过反向代理，直接使用 curl 请求资源。这应该是一个类似以下的命令：

```bash
curl http://localhost:5777/assets/HMonacoEditor.5101bbae.js
```

如果是 hexon failure。请发起一个新的 issue。

<details>
  <summary>如果您正在使用 Apache 的反向代理...</summary>
请确保在您的 `VirtualHost` 配置中添加 `AllowEncodedSlashes NoDecode`，并在 `ProxyPass` 设置的末尾添加 `nocanon`。

参见 https://stackoverflow.com/questions/52034899/express-nodejs-server-through-apache-proxy-error-404-for-route-with-express-par
和 https://stackoverflow.com/questions/4390436/need-to-allow-encoded-slashes-on-apache

样例:
```conf
<VirtualHost *:443>
    ServerName blog-admin.example.com

    SSLCertificateFile /etc/certificates/example.com.crt
    SSLCertificateKeyFile /etc/certificates/example.com.key
    SSLCertificateChainFile /etc/certificates/example.com.crt

    SSLEngine On
    SSLProxyEngine On
    ProxyRequests Off
    ProxyPreserveHost On
    AllowEncodedSlashes NoDecode

    ProxyPass / http://localhost:5777/ nocanon
    ProxyPassReverse / http://localhost:5777/
</VirtualHost>
```
</details>

## Star 历史

[![Star History Chart](https://api.star-history.com/svg?repos=gethexon/hexon&type=Date)](https://star-history.com/#gethexon/hexon&Date)

## 贡献者

<a href="https://github.com/gethexon/hexon/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=gethexon/hexon" />
</a>

## 许可证

GPL-3.0 © winwin2011
