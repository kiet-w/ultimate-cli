#!/usr/bin/env bash
set -e

echo "🚀 Đang cài đặt Ultimate CLI (Antigravity Session Manager & Exit Hook)..."

INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

# 1. Kiểm tra agy-real
if [ ! -f "$INSTALL_DIR/agy-real" ] && [ -f "$INSTALL_DIR/agy" ] && [ ! -L "$INSTALL_DIR/agy" ]; then
    # Nếu file agy hiện tại là binary thực sự (>1MB), đổi tên thành agy-real
    filesize=$(stat -c%s "$INSTALL_DIR/agy" 2>/dev/null || stat -f%z "$INSTALL_DIR/agy" 2>/dev/null || echo 0)
    if [ "$filesize" -gt 1000000 ]; then
        echo "📦 Đang sao lưu binary gốc thành agy-real..."
        mv "$INSTALL_DIR/agy" "$INSTALL_DIR/agy-real"
    fi
fi

# 2. Cài đặt các file thực thi
cp bin/agy "$INSTALL_DIR/agy"
cp bin/agy-history "$INSTALL_DIR/agy-history"
chmod +x "$INSTALL_DIR/agy" "$INSTALL_DIR/agy-history"

# 3. Kiểm tra PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo "⚠️ Lưu ý: Thư mục $HOME/.local/bin chưa có trong PATH của bạn."
    echo "Hãy thêm dòng sau vào ~/.bashrc hoặc ~/.zshrc:"
    echo '  export PATH="$HOME/.local/bin:$PATH"'
fi

echo "✅ Cài đặt hoàn tất!"
echo "✨ Bạn có thể sử dụng:"
echo "   - 'agy'          : Chat với Antigravity CLI (tự động hỏi Name/Category khi thoát)."
echo "   - 'agy-history'  : Xem danh sách tối đa 15 phiên gần nhất, đổi tên, lọc category, dọn dẹp rác."
