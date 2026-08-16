# 🚀 Ultimate CLI — Antigravity Session, Tag & History Manager

[![Platform: Linux](https://img.shields.io/badge/platform-Linux-blue.svg)](https://github.com/kiet-w/ultimate-cli)
[![Shell: Bash / Zsh](https://img.shields.io/badge/shell-Bash%20%2F%20Zsh-green.svg)](https://github.com/kiet-w/ultimate-cli)
[![Python: 3.8+](https://img.shields.io/badge/python-3.8+-yellow.svg)](https://github.com/kiet-w/ultimate-cli)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://github.com/kiet-w/ultimate-cli)

Bộ công cụ tối ưu và nâng cấp toàn diện cho **Google Antigravity CLI (`agy`)**:
* 🏷️ **Tự động bắt sự kiện thoát (`Exit Hook`)**: Tự động hiển thị hộp thoại hỏi đặt **Tên (Name)** & gán **Category (Chuyên mục)** mỗi khi kết thúc phiên chat (dù bằng `Ctrl+C`, `Ctrl+D`, `/exit` hay `/quit`).
* 🎮 **Lựa chọn Chế độ chạy (Standard vs YOLO)**: Dễ dàng chọn tiếp tục phiên làm việc ở chế độ **Thường (`agy`)** hoặc **YOLO / Auto-approve (`agy --yolo`)**.
* 📜 **Bảng điều khiển lịch sử trực quan (`agy-history`)**: Hiển thị bảng màu sắc quản lý 15 log gần nhất với các thẻ chuyên mục phân loại rõ ràng (`[study]`, `[debug]`, `[work]`, `[project]`).
* ⚡ **Thao tác nhanh 1 chạm**: Đổi tên nhanh (`r 1 Tối ưu`), gán tag nhanh (`t 1 study`), lọc chuyên mục (`f`), dọn dẹp phiên rác (`clean`).
* 🔍 **Trình đọc Log toàn văn**: Xem lại toàn bộ chi tiết hội thoại, prompt và tool calls với trình cuộn màu `less`.
* 🌐 **Giao diện Web Tra Cứu Tương Tác**: Tích hợp sẵn tài liệu web (`index.html`) hỗ trợ Dark/Light mode, tìm kiếm nhanh (`Ctrl+K`) và copy lệnh 1-chạm (sẵn sàng deploy GitHub Pages).

---

## 📸 Giao Diện Bảng Điều Khiển (`agy-history`)

```text
📜 DANH SÁCH CÁC PHIÊN CHAT AGY (Tối đa 15 log):
──────────────────────────────────────────────────────────────────────────────────────
STT  Thời gian     Category      ID        Tên phiên / Tóm tắt
──────────────────────────────────────────────────────────────────────────────────────
1    16/08 17:58   [study]       f8ca87d1  Tối ưu code (hiện tại khi thoát cli...)
2    16/08 17:41   [work]        2a22c09e  Build tính năng mới (hướng dẫn deploy...)
3    16/08 17:27   [debug]       cbf1861a  Kiểm tra Headroom (hien tai headroom co dang...)
4    16/08 17:21   [study]       6859088a  @[Downloads/Effective_Software_Testing_...
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

## ⚡ Các Tính Năng Nổi Bật

### 1. 🛑 Exit Hook thông minh (Hỏi Tên & Category khi thoát)
Mỗi khi bạn thoát khỏi phiên làm việc `agy`:
```text
╭─ 📝 Lưu thông tin phiên AGY vừa kết thúc ───────────────────────╮
│ ID: f8ca87d1 │ Câu hỏi: Tối ưu hoá hiệu năng hệ thống...        │
│ Tên hiện tại: (chưa đặt) │ Category: (chưa có)                  │
╰─────────────────────────────────────────────────────────────────╯
👉 Đặt Tên gợi nhớ [Enter để bỏ qua]: Tối ưu backend
👉 Đặt Category (VD: study, work, debug...) [Enter để bỏ qua]: work
✓ Đã lưu thông tin phiên chat thành công!
```
* **Nếu nhập Tên & Category**: Lưu vĩnh viễn vào metadata để tìm kiếm và resume nhanh.
* **Nếu nhấn `Enter` bỏ qua**: Hệ thống giữ lại phiên và trích xuất câu prompt đầu tiên làm tóm tắt hiển thị.

---

### 2. 🎮 Chọn Chế Độ Khi Tiếp Tục Chat (Standard vs YOLO)
Khi bạn chọn một phiên từ danh sách, menu tương tác cho phép chọn chế độ tức thì:
```text
Bạn đã chọn phiên #1: f8ca87d1 "Tối ưu backend" [work]

  [1] Tiếp tục chat — Chế độ Thường (agy)
  [2] Tiếp tục chat — Chế độ YOLO / Auto-approve (agy --yolo)
  [3] Xem lại toàn bộ lịch sử / log trên Terminal
  [4] Đặt / Đổi Tên gợi nhớ (Rename)
  [5] Đặt / Đổi Category (Phân loại)
  [6] Xóa phiên này
  [7] Quay lại danh sách
```

---

## 🛠️ Cài Đặt Nhanh (1-Step Install)

Chỉ cần clone repository và chạy script cài đặt tự động:

```bash
git clone https://github.com/kiet-w/ultimate-cli.git
cd ultimate-cli
chmod +x install.sh
./install.sh
```

> **Script tự động:**
> 1. Nhận diện binary gốc `agy-real` và thiết lập wrapper `agy`.
> 2. Cài đặt `agy-history` vào `~/.local/bin/`.
> 3. Cấp quyền thực thi `chmod +x`.
> 4. Kiểm tra cấu hình biến môi trường `$PATH`.

---

## 📖 Bảng Lệnh Tra Cứu Dòng Lệnh (CLI Reference)

| Lệnh | Chức năng chi tiết |
| :--- | :--- |
| **`agy`** | Chạy Antigravity CLI ở chế độ Thường (tự động hỏi tên/category khi thoát). |
| **`agy --yolo`** | Chạy Antigravity CLI ở chế độ YOLO (tự động bỏ qua hỏi cấp quyền). |
| **`agy-history`** | Mở bảng điều khiển tương tác (Dashboard tối đa 15 log). |
| **`agy-history -y <STT>`** | Tiếp tục phiên `<STT>` ngay lập tức ở chế độ **YOLO (`agy --yolo`)**. |
| **`agy-history --resume <STT>`** | Tiếp tục phiên `<STT>` ở chế độ **Thường (`agy`)**. |
| **`agy-history -n <STT> <tên>`** | Đổi tên nhanh cho phiên (Ví dụ: `agy-history -n 1 'Sửa lỗi mạng'`). |
| **`agy-history -t <STT> <tag>`** | Gán category cho phiên (Ví dụ: `agy-history -t 1 study`). |
| **`agy-history -c <category>`** | Lọc danh sách phiên theo category (Ví dụ: `agy-history -c debug`). |
| **`agy-history -v <STT>`** | Xem toàn văn nội dung log của phiên bằng trình cuộn `less`. |
| **`agy-history --clean`** | Dọn dẹp tất cả các phiên tạm thời chưa có Tên và Category. |
| **`agy-history --summary`** | In nhanh tóm tắt 3 phiên gần nhất. |
| **`agy-history --help`** | Hiển thị hướng dẫn sử dụng nhanh. |

---

## 🗄️ Cấu Trúc File & Dữ Liệu Metadata

```text
~/.gemini/antigravity-cli/
├── session_tags.json               # Metadata lưu trữ toàn cục (Name, Category, Timestamp)
└── brain/
    └── <conversation-id>/
        ├── meta.json               # Metadata của riêng phiên đó
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
└── README.md            # Tài liệu hướng dẫn đầy đủ
```

---

## 📄 License
Phát hành theo giấy phép [MIT License](LICENSE). Tự do sử dụng, chỉnh sửa và đóng góp!
