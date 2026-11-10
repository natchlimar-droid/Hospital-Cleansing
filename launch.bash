#!/usr/bin/env bash
# ==========================================================
# Hospital Cleansing Tool - Launcher Script (.bash / .sh)
# รองรับทั้ง Windows (Git Bash/WSL), macOS และ Linux
# ==========================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML_FILE="$SCRIPT_DIR/Data Cleansing.html"

echo "=================================================="
echo " 🏥 Hospital Cleansing Tool"
echo " ระบบทำความสะอาดและตรวจสอบคุณภาพข้อมูล รพ. (PDPA Safe)"
echo "=================================================="
echo " กำลังเปิดไฟล์: Data Cleansing.html..."

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    # Windows (Git Bash / Cygwin)
    start "" "$HTML_FILE"
elif command -v cmd.exe &> /dev/null; then
    # Windows Subsystem for Linux (WSL)
    cmd.exe /c start "" "$HTML_FILE"
elif command -v open &> /dev/null; then
    # macOS
    open "$HTML_FILE"
elif command -v xdg-open &> /dev/null; then
    # Linux Desktop
    xdg-open "$HTML_FILE"
else
    echo "ไม่พบคำสั่งเปิดเบราว์เซอร์อัตโนมัติ กรุณาเปิดไฟล์ด้วยตนเองที่:"
    echo "$HTML_FILE"
fi

echo " เปิดโปรแกรมสำเร็จ!"
