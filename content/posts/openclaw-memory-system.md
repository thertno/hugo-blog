---
title: "AI Agent 记忆系统实战：从零搭建你的 Agent 知识库"
date: 2026-03-19T00:25:00+08:00
draft: false
tags:
  - AI Agent
  - 记忆系统
  - LLM
  - 知识管理
summary: "每个 LLM Agent 都有致命弱点：上下文窗口 ≠ 记忆。本文详解如何为 AI Agent 搭建 NOW.md + 日志 + 知识库 + 归档的四层记忆系统，附 YAML 温度衰减模型和防幻觉规范。"
---

每个 LLM Agent 都有一个致命弱点：**上下文窗口 ≠ 记忆**。

对话结束，一切归零。Agent 对之前的事情一无所知。你告诉过它一百次的事情，它会再问你第一百零一次。

怎么解决？答案很简单也很反直觉：**文件即记忆**。Agent 的记忆在磁盘上，不在脑子里。

## 核心原则

- **文件 = 事实来源** — 不写进文件 = 从来不知道
- **先读再写** — 避免重复和冲突
- **禁止覆写** — NOW.md 除外，其他 memory 文件禁止覆写
- **冲突暴露** — 宁可暴露冲突，不可静默覆盖

## 四层记忆架构

### 第 1 层：NOW.md（工作台）

每次 heartbeat 覆写，只保留当天完成项。记录当前状态、优先级和阻塞项。

### 第 2 层：每日日志 memory/YYYY-MM-DD.md

事件流水，记录当天发生的一切。是后续所有知识的原材料。

### 第 3 层：知识库

从日志中提炼出的持久知识：

- **INDEX.md** — 知识导航枢纽
- **lessons/TOPIC.md** — 可复用经验（按主题追加）
- **decisions/YYYY-MM-DD-slug.md** — 战略决策记录
- **people/NAME.md** — 人物/Agent 画像
- **projects/** — 项目状态追踪

### 第 4 层：归档

超过 30 天无引用的日志、超过 14 天的已完成 actions、超过 30 天的反思，全部移至 `.archive/`。

## 温度衰减模型

| 温度 T | 状态 | 行为 |
|--------|------|------|
| T > 0.7 | 🔥 Hot | 活跃索引 |
| 0.3 < T ≤ 0.7 | 🌤️ Warm | 降权检索 |
| T ≤ 0.3 | 🧊 Cold | 移至 .archive |

某些文件永不归档：decisions/、优先级 🔴 的 lessons/、people/。

## 防止记忆幻觉

Agent 写 memory 时容易犯的四个错误：

1. **编造** — 写入从未发生的事情
2. **错误** — 写入不准确的信息
3. **冲突** — 同一事实的矛盾版本
4. **遗漏** — 重要信息没有记录

解决方案：

- 写入前必须读取已有文件
- 使用 `memlog.sh` 脚本自动获取时间戳，禁止硬编码
- 知识文件 CRUD 回写时使用验证流程

### CRUD 回写验证

```
新信息到来 → 读取目标文件 → 比较内容
  ├─ 无关 → ADD（追加）
  ├─ 一致 → NOOP（跳过）
  ├─ 更新 → UPDATE（标记旧版 superseded）
  └─ 矛盾 → CONFLICT（两版保留，人工裁决）
```

## YAML Frontmatter 规范

```yaml
---
title: "Cron调度纪律"
date: 2026-02-13
category: lessons
priority: 🔴          # 🔴核心 | 🟡重要 | ⚪参考
status: active        # active | superseded | conflict
last_verified: 2026-02-26
tags: [cron, automation, reliability]
---
```

## 渐进式建设（4 周落地）

### 阶段 0（立即）

NOW.md + AGENTS.md + 每日日志。效果：基本跨 session 记忆。

### 阶段 1（第 1 周）

增加 INDEX.md、lessons/、decisions/。效果：可检索的知识沉淀。

### 阶段 2（第 2 周）

增加 Frontmatter 规范、memlog.sh 脚本。效果：日志追加式，知识文件 CRUD 验证。

### 阶段 3（第 3 周）

增加 .archive/ 冷存储、夜间反思 cron、QMD 语义搜索。效果：主动遗忘 + 高质量检索。

### 阶段 4（第 4 周+）

自动过时检测、冲突处理流程、HEARTBEAT.md 健康检查。效果：自维护的知识系统。
