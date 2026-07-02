#!/bin/sh
# 檢查 Coolify 中是否有設定 FIREBASE_CONFIG 環境變數
if [ -n "$FIREBASE_CONFIG" ]; then
  echo "發現 FIREBASE_CONFIG 環境變數，正在寫入設定檔..."
  echo "$FIREBASE_CONFIG" > firebase-config.json
  echo "firebase-config.json 寫入成功！"
else
  echo "警告: 未發現 FIREBASE_CONFIG 環境變數，系統將繼續使用單機模式或手動粘貼設定。"
fi