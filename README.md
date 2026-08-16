# 🚀 Ultimate CLI — Antigravity Session & History Manager

Bộ công cụ nâng cấp toàn diện cho **Antigravity CLI (`agy`)**:
* 🏷️ **Tự động hỏi đặt Tên (Name) & gán Category (Group/Tag)** mỗi khi thoát (`Ctrl+C`, `Ctrl+D`, `/exit`).
* 📜 **Quản lý danh sách phiên (`agy-history`)**: Hiển thị bảng màu sắc trực quan (tối đa 15 log), hỗ trợ đổi tên nhanh, gán tag, lọc chuyên mục, dọn dẹp phiên rác tự động.
* 🔍 **Trình đọc Log tích hợp**: Xem lại toàn văn lịch sử chat với giao diện màu sắc bằng trình cuộn `less`.
* 🌐 **Trang Web Tra Cứu Tương Tác**: Tích hợp sẵn giao diện Web (`index.html`) hỗ trợ Dark/Light mode, tìm kiếm nhanh và copy lệnh 1-chạm.

---

## 📸 Giao diện Quản lý Phiên (`agy-history`)

```text
📜 DANH SÁCH CÁC PHIÊN CHAT AGY (Tối đa 15 log):
──────────────────────────────────────────────────────────────────────────────────────
STT  Thời gian     Category      ID        Tên phiên / Tóm tắt
──────────────────────────────────────────────────────────────────────────────────────
1    16/08 17:44   [-]           f8ca87d1  hiện tại thi những cái dặt trên đều duc...
2    16/08 17:41   [study]       2a22c09e  agy --conversation=f8ca87d1... --yolo (hiện tại...)
3    16/08 17:27   [debug]       cbf1861a  Kiểm tra Headroom (hien tai headroom co dang...)
4    16/08 17:21   [study]       6859088a  @[Downloads/Effective_Software_Testing_...
──────────────────────────────────────────────────────────────────────────────────────
Thao tác nhanh:
  • Nhập <STT>             : Chọn phiên (Chat tiếp / Xem log / Đổi tên / Đổi category / Xóa)
  • Nhập r <STT> <tên_mới>   : Đổi tên nhanh (VD: r 1 Tối ưu game)
  • Nhập t <STT> <category>  : Gán category nhanh (VD: t 1 study)
  • Nhập f                 : Lọc theo Category
  • Nhập clean             : Xóa tất cả các phiên chưa có Tên/Category
  • Nhập q                 : Thoát
```

---

## ⚡ Cơ chế Hoạt động & Hook Thoát Phiên

### 1. Khi thoát khỏi `agy` (dù bấm `Ctrl+C`, `Ctrl+D` hay `/exit`):
Trình bao bọc (wrapper) sẽ tự động kích hoạt hộp thoại:

```text
╭─ 📝 Lưu thông tin phiên AGY vừa kết thúc ───────────────────────╮
│ ID: cbf1861a │ Câu hỏi: Kiểm tra Headroom...                    │
│ Tên hiện tại: (chưa đặt) │ Category: (chưa có)                  │
╰─────────────────────────────────────────────────────────────────╯
👉 Đặt Tên gợi nhớ [Enter để bỏ qua/xóa rác]: 
👉 Đặt Category (VD: study, work, debug...) [Enter để bỏ qua]: 
```

* **Nếu nhập Tên / Category:** Phiên sẽ được lưu vào metadata (`meta.json` và `session_tags.json`).
* **Nếu nhấn `Enter` bỏ qua:** Nếu phiên chưa có tên/category thì sẽ tự động được dọn dẹp để giữ danh sách log luôn gọn gàng (tối đa 15 log chất lượng nhất).

---

## 🛠️ Cài Đặt Nhanh

### Cách 1: Clone và chạy script cài đặt
```bash
git clone https://github.com/kiet-w/ultimate-cli.git
cd ultimate-cli
chmod +x install.sh
./install.sh
```

---

## 📖 Hướng Dẫn Sử Dụng Chi Tiết

### 1. Chạy Antigravity CLI như bình thường
```bash
agy
# Hoặc chế độ tự động cấp quyền:
agy --yolo
```

### 2. Quản lý lịch sử và đổi tên / category với `agy-history`
```bash
# Mở menu quản lý tương tác:
agy-history

# Đổi tên nhanh phiên chat theo STT:
agy-history -n 1 "Tối ưu hóa backend"

# Gán Category nhanh cho phiên chat theo STT:
agy-history -t 1 "work"

# Lọc và xem các phiên thuộc category:
agy-history -c study

# Xem log toàn văn của phiên:
agy-history -v 1

# Tiếp tục chat với phiên cũ:
agy-history --resume 1

# Dọn dẹp tất cả các phiên tạm không có tên/category:
agy-history --clean
```

---

## 🌐 Trang Web Tra Cứu (Interactive Cheatsheet)

Kho lưu trữ có sẵn file `index.html` chứa cẩm nang tra cứu tương tác:
* **Mở xem offline:**
  ```bash
  xdg-open index.html
  ```
* **Host Online qua GitHub Pages:**
  1. Vào **Repository Settings** $\rightarrow$ **Pages**.
  2. Tại mục **Build and deployment**, chọn Source: **Deploy from a branch** $\rightarrow$ Branch: `main` / `root`.
  3. Bấm **Save** để nhận link trang web online (ví dụ: `https://kiet-w.github.io/ultimate-cli/`).

---

## 📂 Cấu Trúc Thư Mục Repo

```text
ultimate-cli/
├── bin/
│   ├── agy              # Shell wrapper tự động kích hoạt exit hook
│   └── agy-history      # Script Python quản lý danh sách phiên, đổi tên, lọc tag
├── docs/
│   ├── agy_cheatsheet.md # Cẩm nang Markdown
│   └── index.html       # Trang web tài liệu
├── index.html           # Trang web chính (cho GitHub Pages)
├── install.sh           # Script cài đặt 1 chạm
└── README.md            # Tài liệu hướng dẫn
```

---
*Tác giả: [kiet-w](https://github.com/kiet-w) &bull; Được tối ưu cho Antigravity CLI.*
