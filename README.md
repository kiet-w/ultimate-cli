# 🚀 Ultimate CLI — Antigravity Session, Tag & History Manager

[![Platform: Linux](https://img.shields.io/badge/platform-Linux-blue.svg)](https://github.com/kiet-w/ultimate-cli)
[![Shell: Bash / Zsh](https://img.shields.io/badge/shell-Bash%20%2F%20Zsh-green.svg)](https://github.com/kiet-w/ultimate-cli)
[![Python: 3.8+](https://img.shields.io/badge/python-3.8+-yellow.svg)](https://github.com/kiet-w/ultimate-cli)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://github.com/kiet-w/ultimate-cli)

Bộ công cụ tối ưu trải nghiệm và quản lý phiên làm việc thông minh cho **Google Antigravity CLI (`agy`)**:
* 🛑 **Smart Exit Hook**: Tự động hỏi đặt **Tên (Name)** & gán **Category (Chuyên mục)** cho các phiên chat MỚI khi thoát (`Ctrl+C`, `Ctrl+D`, `/exit`).
* 🔄 **Auto-Save Phiên Cũ**: Tự động duy trì và lưu tiếp 100% Tên & Category của phiên cũ khi chat tiếp mà không hỏi lại làm phiền bạn.
* 🎮 **Lựa Chọn Chế Độ (Standard vs YOLO)**: Dễ dàng tiếp tục phiên làm việc ở chế độ **Thường (`agy`)** hoặc **YOLO / Auto-approve (`agy --yolo`)**.
* 📜 **Bảng Điều Khiển Lịch Sử (`agy-history`)**: Quản lý trực quan 15 log gần nhất với các thẻ màu phân loại chuyên mục (`[study]`, `[debug]`, `[work]`, `[project]`).
* ⚡ **Thao tác nhanh 1 chạm**: Đổi tên nhanh (`r 1 Tối ưu code`), gán tag nhanh (`t 1 study`), chat YOLO nhanh (`y 1`), lọc chuyên mục (`f`), dọn dẹp rác (`clean`).
* 🔍 **Đọc Log Toàn Văn**: Xem lại toàn bộ câu hỏi prompt và tool calls với trình cuộn màu `less`.
* 🌐 **Giao Diện Web Tra Cứu Tương Tác**: Tích hợp sẵn trang web (`index.html`) hỗ trợ Dark/Light mode, tìm kiếm nhanh (`Ctrl+K`) và copy lệnh 1-chạm.

---

## 📸 Giao Diện Bảng Quản Lý Phiên (`agy-history`)

```text
📜 DANH SÁCH CÁC PHIÊN CHAT AGY (Tối đa 15 log):
──────────────────────────────────────────────────────────────────────────────────────
STT  Thời gian     Category      ID        Tên phiên / Tóm tắt
──────────────────────────────────────────────────────────────────────────────────────
1    16/08 18:10   [study]       f8ca87d1  qa-pdf (hướng dẫn quản lý log và thoát cli...)
2    16/08 18:07   [study]       6859088a  @[Downloads/Effective_Software_Testing_...
3    16/08 17:41   [work]        2a22c09e  test (triển khai tính năng mới...)
4    16/08 17:27   [debug]       cbf1861a  Kiểm tra Headroom (hien tai headroom co dang...)
──────────────────────────────────────────────────────────────────────────────────────
Thao tác nhanh:
  • Nhập <STT>             : Chọn phiên (Mở tùy chọn Chat Thường / YOLO / Log / Đổi tên)
  • Nhập y <STT>           : Chat ngay phiên ở chế độ YOLO (agy --yolo)
  • Nhập r <STT> <tên_mới>   : Đổi tên nhanh (VD: r 1 Tối ưu game)
  • Nhập t <STT> <category>  : Gán category nhanh (VD: t 1 study)
  • Nhập f                 : Lọc theo Category
  • Nhập clean             : Xóa tất cả các phiên chưa có Tên/Category
  • Nhập q                 : Thoát
```

---

## ⚡ Cơ Chế Hoạt Động Thông Minh

### 1. Khi bạn thoát một phiên chat MỚI:
Hệ thống hiển thị hộp thoại gợi nhớ:
```text
╭─ 📝 Lưu thông tin phiên AGY MỚI vừa kết thúc ───────────────────╮
│ ID: a1b2c3d4 │ Nội dung: Tối ưu backend API...                  │
╰─────────────────────────────────────────────────────────────────╯
👉 Đặt Tên gợi nhớ [Enter để bỏ qua]: Tối ưu backend
👉 Đặt Category (VD: study, work, debug...) [Enter để bỏ qua]: work
✓ Đã lưu thông tin phiên chat mới (Tên: 'Tối ưu backend', Category: [work])!
```

### 2. Khi bạn chat tiếp một phiên CŨ đã có Tên/Category:
* Khi bạn thoát (`Ctrl+C` hoặc `/exit`), hệ thống **TỰ ĐỘNG LƯU VÀ DUY TRÌ TIẾP** Tên & Category cũ:
```text
✓ Đã tự động duy trì & lưu tiếp phiên chat (Tên: 'Tối ưu backend', Category: [work])!
```
*(Hoàn toàn không làm gián đoạn hay bắt bạn phải nhập lại thông tin)*.

---

### 3. 🎮 Chọn Chế Độ Khi Tiếp Tục Chat (Standard vs YOLO)
Khi bạn chọn số `<STT>` từ danh sách, menu tương tác cho phép chọn chế độ tức thì:
```text
Bạn đã chọn phiên #1: f8ca87d1 "qa-pdf" [study]

  [1] Tiếp tục chat — Chế độ Thường (agy)
  [2] Tiếp tục chat — Chế độ YOLO / Auto-approve (agy --yolo)
  [3] Xem lại toàn bộ lịch sử / log trên Terminal
  [4] Đặt / Đổi Tên gợi nhớ (Rename)
  [5] Đặt / Đổi Category (Phân loại)
  [6] Xóa phiên này
  [7] Quay lại danh sách
```

---

## 🛠️ Cài Đặt Tự Động 1-Chạm (Quick Install)

```bash
git clone https://github.com/kiet-w/ultimate-cli.git
cd ultimate-cli
chmod +x install.sh
./install.sh
```

---

## 📖 Bảng Lệnh Tra Cứu (CLI Reference)

| Lệnh | Chức năng chi tiết |
| :--- | :--- |
| **`agy`** | Mở phiên chat Antigravity CLI ở chế độ Thường. |
| **`agy --yolo`** | Mở phiên chat Antigravity CLI ở chế độ YOLO (tự động cấp quyền công cụ). |
| **`agy-history`** | Mở menu quản lý lịch sử tương tác (Dashboard tối đa 15 log). |
| **`agy-history -y <STT>`** | Tiếp tục phiên `<STT>` ngay lập tức ở chế độ **YOLO (`agy --yolo`)**. |
| **`agy-history --resume <STT>`** | Tiếp tục phiên `<STT>` ở chế độ **Thường (`agy`)**. |
| **`agy-history -n <STT> <tên>`** | Đổi tên nhanh cho phiên (Ví dụ: `agy-history -n 1 'Sửa lỗi mạng'`). |
| **`agy-history -t <STT> <tag>`** | Gán category cho phiên (Ví dụ: `agy-history -t 1 study`). |
| **`agy-history -c <category>`** | Lọc danh sách phiên theo category (Ví dụ: `agy-history -c debug`). |
| **`agy-history -v <STT>`** | Xem toàn văn log của phiên bằng trình cuộn màu `less`. |
| **`agy-history --clean`** | Dọn dẹp tất cả các phiên tạm không có Tên/Category. |
| **`agy-history --summary`** | In nhanh tóm tắt các phiên gần nhất. |
| **`agy-history --help`** | Hiển thị bảng trợ giúp lệnh nhanh. |

---

## 🗄️ Cấu Trúc Dữ Liệu Metadata

```text
~/.gemini/antigravity-cli/
├── session_tags.json               # Metadata toàn cục (Name, Category, Updated Timestamp)
└── brain/
    └── <conversation-id>/
        ├── meta.json               # Metadata riêng của phiên
        └── .system_generated/
            └── logs/
                ├── transcript.jsonl      # Log theo từng sự kiện JSON Lines
                └── transcript_full.jsonl # Toàn văn log hội thoại
```

---

## 🌐 Trang Web Tra Cứu (Interactive Cheatsheet)

Kho lưu trữ tích hợp sẵn giao diện Web (`index.html`) hỗ trợ tra cứu trực quan:
* **Mở xem offline trên máy:**
  ```bash
  xdg-open index.html
  ```
* **Kích hoạt GitHub Pages Online miễn phí:**
  1. Truy cập **GitHub Repository Settings** $\rightarrow$ **Pages**.
  2. Chọn Source: **Deploy from a branch** $\rightarrow$ Branch: `main` / `root`.
  3. Bấm **Save** để nhận link trang web trực tuyến: `https://kiet-w.github.io/ultimate-cli/`

---

## 📂 Cấu Trúc Repository

```text
ultimate-cli/
├── bin/
│   ├── agy              # Wrapper bash bắt sự kiện thoát (trap EXIT INT TERM)
│   └── agy-history      # Quản lý phiên, giao diện terminal, resume mode, rename, tags
├── docs/
│   ├── agy_cheatsheet.md # Cẩm nang hướng dẫn Markdown
│   └── index.html       # Bản web trong thư mục docs
├── index.html           # Trang web tra cứu chính (cho GitHub Pages)
├── install.sh           # Script cài đặt tự động 1 chạm
├── LICENSE              # Giấy phép MIT
└── README.md            # Tài liệu hướng dẫn đầy đủ
```

---

## 📄 License
Phát hành theo giấy phép [MIT License](LICENSE). Tự do sử dụng, chỉnh sửa và đóng góp!
