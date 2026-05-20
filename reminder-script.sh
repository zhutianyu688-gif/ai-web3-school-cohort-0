#!/bin/bash

# AI × Web3 School 学习提醒脚本
# 设置时间：每天中午12点

# 配置
LEARNING_REPO_DIR="$HOME/ai-web3-school-cohort-0"
LOG_FILE="$LEARNING_REPO_DIR/learning-reminders.log"

# 创建日志文件
mkdir -p "$LEARNING_REPO_DIR"
touch "$LOG_FILE"

# 记录提醒
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 中午学习提醒时间到！" >> "$LOG_FILE"

# 显示提醒信息
echo "🎯 AI × Web3 School 学习提醒"
echo "============================"
echo "时间：$(date '+%Y-%m-%d %H:%M:%S')"
echo ""
echo "📚 今日学习建议："
echo "1. 检查WCB Learning平台是否有新课程"
echo "2. 继续学习AI × Web3 Bridge章节"
echo "3. 更新学习记录"
echo "4. 准备下午的学习任务"
echo ""
echo "🔗 快速链接："
echo "- WCB Learning: https://web3career.build"
echo "- Handbook: https://aiweb3.school/zh/handbook/"
echo "- GitHub仓库: https://github.com/zhutianyu688-gif/ai-web3-school-cohort-0"
echo ""
echo "💡 学习小贴士："
echo "- 专注AI × Web3 Bridge的核心概念"
echo "- 记录学习过程中的问题和思考"
echo "- 及时提交到GitHub仓库"
echo ""
echo "提醒时间：$(date '+%H:%M:%S')" >> "$LOG_FILE"

# 如果有终端，显示通知
if command -v terminal-notifier &> /dev/null; then
    terminal-notifier -title "AI × Web3 School 学习提醒" -message "中午学习时间到！请检查学习进度并更新记录。" -sound default
fi