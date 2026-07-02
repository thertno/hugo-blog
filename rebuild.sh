#!/bin/bash
# Hugo 博客重新构建脚本
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

export PATH="$HOME/bin:$PATH"

echo "🔨 正在构建 Hugo 博客..."
hugo --buildFuture --gc

echo "✅ 构建完成！输出目录: $SCRIPT_DIR/public/"
echo "📄 总页面数: $(find public -name '*.html' | wc -l)"
