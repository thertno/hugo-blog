#!/bin/bash
# 新建博客文章
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

export PATH="$HOME/bin:$PATH"

if [ -z "$1" ]; then
    echo "用法: $0 <文章标题>"
    echo "示例: $0 我的第一篇文章"
    exit 1
fi

# 将标题转为 URL 友好的 slug
SLUG=$(echo "$1" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')

hugo new "posts/${SLUG}.md"
echo "✅ 已创建: content/posts/${SLUG}.md"
