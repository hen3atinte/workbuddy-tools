#!/bin/bash
# Auto-refresh Feishu QR code and detect login
# Run this in the background while you scan

QR_FILE="$HOME/.workbuddy/feishu_qr_live.png"
SESSION="$HOME/.workbuddy/playwright-feishu"
REFRESH_SEC=90

echo "=== 飞书扫码自动维持脚本 ==="
echo "二维码每${REFRESH_SEC}秒自动刷新"
echo "保存位置: $QR_FILE"
echo ""

# Main loop
START_TIME=$(date +%s)
while true; do
  NOW=$(date +%s)
  ELAPSED=$((NOW - START_TIME))
  
  # Refresh QR every REFRESH_SEC seconds
  if [ $((ELAPSED % REFRESH_SEC)) -lt 3 ]; then
    echo "[$(date +%H:%M:%S)] 正在刷新二维码..."
    playwright-cli reload 2>/dev/null
    sleep 4  # Wait for animation
    
    # Take screenshot
    playwright-cli screenshot --filename="$QR_FILE" 2>/dev/null
    echo "[$(date +%H:%M:%S)] 二维码已更新 → $QR_FILE"
    sleep 2
  fi
  
  # Check if logged in
  URL=$(playwright-cli eval "window.location.href" 2>/dev/null | grep -o '"https://[^"]*"' | head -1 | tr -d '"')
  
  if [ -n "$URL" ] && [[ ! "$URL" =~ "accounts.feishu.cn" ]]; then
    echo ""
    echo "✅ 登录成功！"
    echo "当前页面: $URL"
    
    # Save state
    playwright-cli state-save "$SESSION/feishu_state.json" 2>/dev/null
    echo "登录态已保存"
    
    # Navigate to first doc
    playwright-cli goto "https://ta6hb0ysuge.feishu.cn/wiki/RyXHwqg0vitVFWkoIT1csrWgn9f" 2>/dev/null
    echo "浏览器保持开启，等待提取内容..."
    
    # Signal ready
    echo "READY" > "$SESSION/login_ready.signal"
    break
  fi
  
  sleep 5
done
