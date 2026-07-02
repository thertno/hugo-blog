---
title: "10 分钟零成本上线：用 AI + Cloudflare 做一个全球访问的在线简历"
date: 2026-04-05T16:38:00+08:00
draft: false
tags:
  - Cloudflare
  - 简历
  - GitHub
  - AI 编程
summary: "用 AI 生成简历 HTML，GitHub 托管代码，Cloudflare Pages 部署，自定义域名绑定——整个过程不到 10 分钟，一分钱不花，做出一张比 PDF 高级十倍的在线名片。"
---

在线简历，才是 AI 时代应有的姿势。

我用 AI 帮雷军做了一个在线简历，部署在 Cloudflare 上——全球可访问，零服务器费用，打开秒加载。整个过程被我记录下来，按照教程操作，只需 10 分钟不到，就能做一张让人眼前一亮的在线名片。

## 准备工作

你需要准备以下东西，全部免费：

- **GitHub 账号** — 代码托管平台，免费注册
- **Cloudflare 账号** — 全球最强的网站管家，免费注册
- **域名**（可选）— spaceship 的 .xyz，最低一年五块不到，十年才 46 块钱。不想买的话，CF 也会送你一个二级域名
- **AI Agent** — Claude 或 Codex

## 制作步骤

### 第 1 步：用 AI 生成简历 HTML

打开 Claude 或 Codex，告诉它：

> "帮我生成一个响应式 HTML 简历页面，包含个人信息、工作经历、项目经验、技能标签。要求：现代简洁风格、支持移动端、CSS 内联。"

AI 3 分钟就能生成一份像样的简历 HTML。你可以反复调整配色、排版、内容，直到满意。

### 第 2 步：GitHub 托管代码

1. 在 GitHub 创建新仓库（如 `my-resume`）
2. 将 AI 生成的 HTML 推送到仓库
3. 确保 `index.html` 在仓库根目录

3 分钟搞定。

### 第 3 步：Cloudflare Pages 部署

1. 登录 Cloudflare Dashboard
2. 进入 Pages → Create a project
3. 选择 Connect to Git，授权 GitHub
4. 选择你的简历仓库
5. 构建设置：
   - Build command: 留空（纯静态 HTML）
   - Build output directory: `/`
6. 点击 Save and Deploy

Cloudflare 会自动拉取代码、构建、部署到全球 CDN。

### 第 4 步：自定义域名设置（可选）

1. 在 Pages 项目设置中进入 Custom domains
2. 输入你购买的域名（如 `resume.yourname.xyz`）
3. 按照提示在域名 DNS 处添加 CNAME 记录
4. 等待 DNS 生效（通常几分钟）

搞定后，你的简历就绑定了自己的域名。

## 总结

AI 写代码 3 分钟，GitHub 托管 3 分钟，Cloudflare 部署 3 分钟。

**不到 10 分钟，一张比 PDF 高级十倍的在线简历就做好了。**

- 全球 CDN 加速，打开秒加载
- 自动 HTTPS，安全加密
- 自定义域名，专业感拉满
- 永久免费，零服务器费用
- 随时更新，改完 push 就生效

在线简历不只是展示内容，更是展示你的技术品味。
