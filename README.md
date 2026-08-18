# ⚡ Ultimate CLI Suite for Google Antigravity (AGY)

> **Bộ công cụ tối thượng (All-in-One CLI Toolkit) nâng tầm trải nghiệm làm việc với Google Antigravity CLI (`agy`): Quản lý phiên chat thông minh, Hệ thống Snippet Note Pro Max chuẩn UI/UX, So sánh Đa nhiệm Split-Screen và Tự động đồng bộ Đám mây 24/7.**

---

## 🌟 Bộ Ba Công Cụ Cốt Lõi (Core Trio)

```
ultimate-cli/
├── agy            ← Wrapper thông minh cho Antigravity CLI, tự động gợi ý đặt tên/phân loại khi thoát
├── agy-history    ← TUI & Web Navigator tra cứu, tìm kiếm, đổi tên và quản lý toàn bộ lịch sử chat
└── agy-note       ← AI Snippet Note Manager: Render HTML Obsidian, Nhánh sâu Accordion, Split View & Cloud Sync
```

---

## 🚀 1. `agy-note` — AI Snippet Note Manager & Multi-Note Web Hub

`agy-note` giải quyết vấn đề lớn nhất khi làm việc với AI: **"Làm sao lưu lại các giải pháp, cấu hình, đoạn code hay mà không tốn token và không bị trôi mất trong hàng ngàn dòng chat?"**

### 💎 Điểm nổi bật & Tính năng vượt trội:

* 🎨 **Chuẩn giao diện UI/UX Pro Max (OLED Obsidian Theme):**
  * Typography cao cấp với **Inter** (văn bản) & **JetBrains Mono** (mã nguồn/badge).
  * Thẻ mục (§ 1, § 2...) kèm nút Anchor link trực tiếp.
  * Tự động nhận diện danh sách Key-Value (ví dụ: `1.1 Purpose: ...`) thành các **thẻ Badge phát sáng dạ quang**.
  * Bảng biểu Markdown (Tables) và Hộp cảnh báo (Callouts: `[!NOTE]`, `[!WARNING]`, `[!TIP]`).
  * Khối mã nguồn phong cách macOS kèm 3 chấm màu và nút **1-Click Copy Code** kèm Toast notification.

* 🌿 **Nhánh đào sâu mở rộng (Kiểu A — Interactive Expandable Accordion):**
  * Khi bạn muốn hỏi sâu về 1 mục cụ thể (Deep-dive), nội dung chi tiết được giấu trong khối `<details><summary>` mượt mà.
  * Click vào mũi tên để bung toàn bộ phân tích chi tiết mà **hoàn toàn không làm rối mắt hoặc dài trang**.

* 📱 **Tối ưu hóa Mobile-First (Thân thiện 100% trên điện thoại):**
  * Thanh cuộn ngang vuốt ngón tay (Horizontal Pill Slider) cho Filter Category và Mục lục nhanh (TOC).
  * Vùng chạm chuẩn Touch-Target $\ge 44\text{px}$, chống bấm nhầm.
  * Bố cục tự co giãn theo tỷ lệ màn hình (`clamp()`), không bị vỡ hay rớt dòng lắt nhắt.

* ⚡ **Chế độ So Sánh Cùng Lúc (Split View 2 - 4 Notes):**
  * Xem đồng thời 2, 3 hoặc 4 ghi chú trên cùng một màn hình (Split-Screen bằng iframe cục bộ).
  * Tự động xếp tầng thông minh trên điện thoại di động.

* ☁️ **Đồng bộ Đám mây 24/7 (Cloudflare Pages, Vercel, GitHub Pages):**
  * **Tắt máy tính vẫn truy cập 24/7:** Website được host trên máy chủ CDN toàn cầu của Cloudflare.
  * **Auto-Deploy Ngầm (Zero Effort):** Mỗi khi tạo hoặc sửa note, script tự động đẩy lên Cloud trong 1 giây mà bạn không cần gõ bất cứ lệnh nào!

* 🛡️ **Bảo toàn dữ liệu vĩnh viễn (Zero Data Loss):**
  * Lưu song song Markdown gốc tại `~/.gemini/antigravity-cli/notes/md/<id>.md`.
  * Có cờ `--rebuild` để render lại toàn bộ HTML bất cứ lúc nào.

---

## 📋 2. Bảng Lệnh Tra Cứu Nhanh `agy-note`

| Lệnh | Ý nghĩa & Tác vụ |
| :--- | :--- |
| `agy-note` | Mở Menu TUI tương tác trực tiếp trên Terminal |
| `agy-note -l` | Liệt kê toàn bộ ghi chú đã lưu kèm thời gian & mốc trích xuất |
| `agy-note -o <STT>` | Mở 1 note cụ thể trên trình duyệt Web (VD: `agy-note -o 2`) |
| `agy-note -cmp 1 2` | Mở chế độ **Split View xem cùng lúc 2 - 4 Notes** (VD: `agy-note -cmp 1 2 3`) |
| `agy-note -w` | Mở trang chủ Web Hub Dashboard trung tâm (`index.html`) |
| `agy-note -v <STT>` | Đọc nội dung note nhanh trực tiếp trên Terminal |
| `agy-note -s <từ_khóa>` | Tìm kiếm note theo tiêu đề, category, mốc đầu/cuối, tag |
| `agy-note -d <STT>` | Xóa note khỏi hệ thống |
| `agy-note --rebuild` | Tạo lại toàn bộ HTML và Web Hub từ file Markdown gốc |
| `agy-note --setup-cloud`| Trình thuật sĩ kết nối Cloudflare Pages / Vercel / GitHub Pages |
| `agy-note --deploy` | Kích hoạt đồng bộ Cloud ngay lập tức |

---

## 💬 3. Hướng Dẫn Sử Dụng Trong Lúc Chat Với AI

Khi bạn đang chat với AI trong `agy`, bạn chỉ cần nói một câu tự nhiên:

### 👉 Tạo Note mới:
> *"Lưu note đoạn từ `[chữ đầu]` đến `[chữ cuối]` vào html cho tui với tiêu đề `Tóm tắt Kiến trúc NestJS`"*

### 👉 Thêm Nhánh con Đào sâu (Kiểu A):
> *"Thêm đoạn giải thích chi tiết này vào nhánh mục `1.1 Purpose` của note `Tender` theo kiểu A giúp tui"*

$\rightarrow$ AI sẽ tự động xử lý, định dạng Markdown/HTML và đồng bộ lên Cloud ngay tức thì!

---

## 🛠️ 4. Hướng Dẫn Cài Đặt (Installation)

### Cách 1: Clone và Cài đặt tự động (Khuyên dùng)

```bash
# 1. Clone repository
git clone https://github.com/kiet-w/ultimate-cli.git
cd ultimate-cli

# 2. Chạy script cài đặt
bash install.sh
```

### Cách 2: Thêm thủ công vào PATH
Đảm bảo thư mục `~/.local/bin` đã có trong file `~/.bashrc` hoặc `~/.zshrc`:
```bash
export PATH="$HOME/.local/bin:$PATH"
```

---

## 🌐 5. Cấu Trúc Thư Mục Lưu Trữ Dữ Liệu Local

Toàn bộ dữ liệu được quản lý độc lập tại thư mục người dùng:

```
~/.gemini/antigravity-cli/notes/
├── index.html                # Trang Web Hub Dashboard trung tâm
├── deploy_config.json        # Cấu hình đồng bộ Cloud (Cloudflare/Vercel)
├── notes_metadata.json       # Metadata, category, tags, mốc trích xuất
│
├── md/                       # KHO LƯU TRỮ RAW MARKDOWN GỐC (Bảo vệ vĩnh viễn)
│   ├── 20260818-114419-*.md
│   └── ...
│
└── html/                     # CÁC TRANG WEB ĐƠN LẺ ĐÃ RENDER UI/UX PRO MAX
    ├── 20260818-114419-*.html
    └── ...
```

---

## 📜 6. Giấy Phép & Tác Quyền

* **Author:** Baudui (kiet-w)
* **License:** [MIT License](LICENSE)
* **Powered by:** Google Antigravity & DeepMind Advanced Agentic Coding.
