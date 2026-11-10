#!/usr/bin/env bash
# ==========================================================
# Hospital Cleansing Tool - Launcher Script (.sh)
# ==========================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML_FILE="$SCRIPT_DIR/Data Cleansing.html"

echo "=================================================="
echo " 🏥 Hospital Cleansing Tool"
echo " ระบบทำความสะอาดและตรวจสอบคุณภาพข้อมูล รพ. (PDPA Safe)"
echo "=================================================="
echo " กำลังเปิดโปรแกรมในเบราว์เซอร์..."

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    start "" "$HTML_FILE"
elif command -v cmd.exe &> /dev/null; then
    cmd.exe /c start "" "$HTML_FILE"
elif command -v open &> /dev/null; then
    open "$HTML_FILE"
elif command -v xdg-open &> /dev/null; then
    xdg-open "$HTML_FILE"
else
    cmd.exe /c start "" "$HTML_FILE" 2>/dev/null || open "$HTML_FILE" 2>/dev/null
fi

