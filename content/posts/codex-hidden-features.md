---
title: "装完 Codex 直接用？这 10 个隐藏功能你可能还没打开"
date: 2026-07-01T17:00:00+08:00
draft: false
tags:
  - Codex
  - AI 编程
  - 效率工具
  - 使用技巧
summary: "Codex 装了没？但你可能只发挥了它 20% 的功力。这篇文章整理了 10 个大部分人都没用到的隐藏功能，学会了直接省一半时间。"
---

你是不是也这样：装了 Codex，登录完就开始用，输入框里打字让 AI 帮你写代码。

看起来没问题对吧？但我想告诉你，这样用 Codex，大概只发挥了它 **20%** 的功力。

剩余 80% 的能力，藏在你根本不会主动去点的菜单里。

下面我把这些按"值不值"排个序，越前面的越重要。

## 一、权限别开 Full Access，搞错全盘皆输

这是整篇文章里我**最想提前说**的部分。

很多人装好 Codex 第一步是登录、选工作类型、进主界面。看起来没问题。但输入框下方有三个权限选项，很多人连看都沒看就点了"下一步"。

这三个选项，决定了你的 Codex 能用多顺手，以及——**能搞出多大的乱子**。

![权限选择界面](/images/2026-07-01/codex-tips/codex-tips-01-permissions-auto-review.jpg)

| 模式 | 它在干嘛 | 适合谁 |
|------|---------|--------|
| Default permissions | 每次改项目外的文件或跑高危命令，都会弹框问你 | 安全强迫症患者 |
| Auto review | 让安全 Agent 帮你过一遍，日常操作直接放行，危险操作才弹窗 | **大多数人（推荐）** |
| Full access | 完全放养，Codex 想干啥就干啥 | 只有你知道自己在冒什么风险时才开 |

![三种权限对比](/images/2026-07-01/codex-tips/codex-tips-02-permissions-table.png)

我固定用 **Auto review**。日常写代码、改文件它自己就过了，真正危险的操作（比如删除系统文件）才会弹框提醒。效率和安全同时兼顾。

Full Access 看着省心，但一旦误删，可没有后悔药。

## 二、模型和速度：简单任务别开最高深度

输入框旁边会显示当前模型和思考深度，比如 `GPT-5.5 medium`。

这里的两个参数是完全可以调的：

**思考深度**：分 `low`、`medium`、`high`、`extra high`。越高越慢，越烧 token，但代码质量确实更好。

**输出速度**有两个档位：

- **Standard**（标准速度，token 消耗正常）
- **Fast**（快 1.5 倍，但 token 消耗翻倍）

![模型和速度选择](/images/2026-07-01/codex-tips/codex-tips-03-model-selection.jpg)

![速度档位对比](/images/2026-07-01/codex-tips/codex-tips-04-speed-modes.png)

我的用法：

- 改个样式、写个小函数 → `low` + `Fast`，搞定收工
- 重构架构、写整套模块 → `high` + `Standard`，保质量

另外，模型列表里除了 GPT-5.5 还能选 5.4 之类的。简单任务别迷信最新模型，旧的反而更省钱。

## 三、Annotate：截图改 UI，比打字快 10 倍

这个功能特别讨巧——你在预览区圈选一个按钮，输入"改成蓝色"，它就直接改了。

![Annotate 界面](/images/2026-07-01/codex-tips/codex-tips-05-annotate-ui.jpg)

操作流程很简单：

1. Codex 生成代码后，点击预览区的**注释图标**
2. 圈选你想改的 UI 元素
3. 输入修改意见，比如"去掉"、"改大一点"、"颜色换成蓝色"
4. 点击发送，Codex 自动改代码

![圈选 UI 元素](/images/2026-07-01/codex-tips/codex-tips-06-annotate-select.png)

省下的时间不在于改 UI 本身，而在于你**不用**把"按钮太小、颜色不对、间距太窄"这些内容变成文字描述。

但要踩个坑：**Codex 的预览区不完全等同于真实浏览器**。有一些功能（比如 local storage）在预览区里可能跑不通。遇到过一种情况：Codex 生成的页面"点击加号没反应"。关掉预览，在独立浏览器里打开同一个页面，一切正常。

**结论：外部应用应该在独立浏览器测试，别把预览区当生产环境。**

## 四、Git：两条路，手动和自动各有所长

Codex 内置了 Git 支持，有两种操作方式：

### 方式一：终端命令（精准通用）

按 `Command + J`（Mac）打开终端面板，跑你最熟悉的命令：

```bash
git init .
git add .
git commit -m "Initial commit"
```

优点：准确、通用、你完全掌控每一行。

![终端 Git 操作](/images/2026-07-01/codex-tips/codex-tips-07-git-terminal.jpg)

### 方式二：内置 Git（快速提交）

点击左侧栏**环境信息 → 变更** → 查看未暂存的改动 → 点加号输入修改意见 → 点 commit 填个 message → 完成。

![内置 Git 操作](/images/2026-07-01/codex-tips/codex-tips-08-git-changes.png)

适合什么场景？你改了样式、加了个小功能，懒得写 commit message 的时候，直接点提交，三秒搞定。

## 五、会话管理：Fork 和 Archive，别等代码乱成一锅粥

### Fork：一鱼多吃，同时开两条路

当你想让 Codex 同时处理两个不同需求，但又不想代码互相干扰，用 Fork。

![Fork 选项](/images/2026-07-01/codex-tips/codex-tips-09-fork-option.png)

Fork 有两个选项：

| 选项 | 做了什么 | 什么时候用 |
|------|---------|-----------|
| Fork into local | 复制会话到新窗口，沿用原目录 | 想在同个项目里试新方案，回滚需要配合 `git reset` |
| Fork into new worktree | 复制会话 + 创建全新隔离目录 | 两个功能要并行开发，互不干扰，最后合并即可 |

![Fork 操作界面](/images/2026-07-01/codex-tips/codex-tips-10-fork-local.png)

### Archive：不是删除，只是收纳

点会话旁边的图标就归档了。

![Fork worktree 模式](/images/2026-07-01/codex-tips/codex-tips-fork-worktree.png)

归档不是删。它只是从主列表里消失，在设置面板的「已归档会话」里还能找回来。

要**彻底删除**会话，要在归档面板里再点一次删除！

![归档图标](/images/2026-07-01/codex-tips/codex-tips-11-archive-icon.jpg)

## 六、OAuth 登录：一键登录 Gmail 等外部网站

Codex 可以登到 Gmail、GitHub 这些外部服务上，帮你操作。

只需要在聊天框里输入 `/auth` 或者点旁边的 **+** 登录服务。系统会自动提示你完成 OAuth 登录。

等登录后，你可以像正常对话一样告诉 Codex：

- "帮我看下 Gmail 里最近三封邮件说了什么"
- "看看我 GitHub 上有哪些新通知"

![OAuth 登录界面](/images/2026-07-01/codex-tips/codex-tips-12-oauth-login.jpg)

## 七、AGENTS.md：给 Codex 写个"员工手册"

和你用 CLAUDE.md 指挥 Claude Code 一样，Codex 也有一个类似的配置文件叫 `AGENTS.md`。

把项目相关的规矩、规范写在这个文件里，每次 Codex 干活的时候都会自动参考。

![AGENTS.md 文件](/images/2026-07-01/codex-tips/codex-tips-13-agents-md.png)

里面可以放这些内容：

- 项目架构说明
- 写代码的规范和风格
- 常用的命令和工具
- 技术栈说明

你还可以创建专属的 Agent，每个 Agent 有独立的工具和权限范围。比如专门跑测试的、专门审查代码的。

![Agent 配置](/images/2026-07-01/codex-tips/codex-tips-14-agent-tools.png)

AGENTS.md 的好处是：**写完一次，每次对话都省一半时间**。

## 八、浏览器操作 + 自定义 Skill

### 让 Codex 替你操作浏览器

Codex 有一个内置浏览器，你可以让它：点按钮、填表单、截图、切换页面。

![浏览器 Skill](/images/2026-07-01/codex-tips/codex-tips-15-image-upload.jpg)

让它帮你操作外部网站时，它会调用内置 Chromium 来执行。

![浏览器自动化](/images/2026-07-01/codex-tips/codex-tips-16-browser-skill.png)

### 自定义 Skill：把常用操作打包

内置的 Skills 列表里能看到所有已安装插件提供的技能。更厉害的是，你可以**自己创建 Skill**。

比如让 Codex 写一个文章改写的 Skill：

> "写一个文章改写 Skill，专门针对已有的 Markdown 文章进行改写，规则如下：[你的规则]"

Codex 会生成一个如 `rewrite` 的 Skill。之后新建对话时用 `/rewrite` 引用它，Codex 就会按你的规则改写文章。

![创建自定义 Skill](/images/2026-07-01/codex-tips/codex-tips-17-browser-automation.jpg)

![Skill 创建成功](/images/2026-07-01/codex-tips/codex-tips-18-custom-skill.png)

每个 Skill 解决一个重复出现的完整工作流。

## 九、Automation：让 Codex 定时帮你干活

你可以在 Codex 里创建定时任务，让它在后台自动执行。

![Automation 界面](/images/2026-07-01/codex-tips/codex-tips-19-skill-created.jpg)

操作很简单：点会话上面的三个点 → 添加自动化，或者直接在左侧菜单里选「自动化」。

配置项就几个：

| 配置 | 说明 |
|------|------|
| 标题 | 定时任务的名称 |
| 要求 | 写清楚要 Codex 执行什么任务 |
| 执行环境 | local（项目目录）、worktree（隔离目录）、chat（不绑定项目） |
| 运行频率 | 每日、每周等，可设具体时间 |
| 模型与推理 | 选 GPT 模型和推理强度 |

![自动化列表](/images/2026-07-01/codex-tips/codex-tips-20-automation.jpg)

![自动化配置](/images/2026-07-01/codex-tips/codex-tips-21-automation-list.jpg)

创建后左侧栏「自动化」下就能看到你的定时任务了。点击按钮还可以试运行一次。

适合什么场景？

- 定时扫描项目代码质量
- 每周自动生成周报
- 每天检查某个网站的更新

![自动化配置详情](/images/2026-07-01/codex-tips/codex-tips-22-automation-config.png)

## 十、手机版：用手机控制电脑

Codex 有手机版，支持手机远程操控电脑。

设置流程：手机端扫码 → 进入 ChatGPT 的 Codex 页面 → 允许手机控制电脑。

装好后你可以在手机上发指令，比如："把日历中 5 月 28 号讨论项目设计的日程删掉。"

电脑端的 Codex 会收到指令并自动执行。不用开电脑，不用开浏览器，手机上点一下就行。

![安卓 App 界面](/images/2026-07-01/codex-tips/codex-tips-23-android-app.png)

![手机控制 Codex](/images/2026-07-01/codex-tips/codex-tips-24-mobile-codex.jpg)

Windows 用户也能用！把 Codex 更新到最新版本，设置里就会出现移动版选项。

![Windows 设置界面](/images/2026-07-01/codex-tips/codex-tips-25-windows-setting.jpg)

![Windows 更新提示](/images/2026-07-01/codex-tips/codex-tips-26-windows-update.jpg)

## 最后一句话

Codex 不是装了就能用的工具，它是个需要"调教"的助手。权限配对了，效率翻倍。AGENTS.md 写好了，每次对话都省一半时间。插件装满了，一个工具干三个人的活。

工具帮你省时间，省下的时间花在哪里，才是你和别人的差距。

---

> 原文：[Codex 这些功能你开了等于白装 — @afly813](https://x.com/afly813/status/2066454931461042601)
>
> 相关推荐：[OpenAI 重磅更新！Codex Computer Use 正式支持 Windows](https://x.com/afly813/status/2066454931461042601?s=46)
