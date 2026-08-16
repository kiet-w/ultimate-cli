# 📖 CẨM NANG TRA CỨU ANTIGRAVITY CLI (`agy`)

Tài liệu hướng dẫn tra cứu nhanh về quản lý phiên làm việc, phím tắt, phân loại Category và cấu trúc log.

---

## 1. 📋 Cơ chế hiển thị trong Danh sách Phiên (`DANH SÁCH CÁC PHIÊN CHAT`)

Khi xem danh sách các phiên chat của `agy`, bảng hiển thị sẽ có các trường thông tin:

| Cột | Ý nghĩa | Chi tiết hiển thị |
| :--- | :--- | :--- |
| **STT** | Số thứ tự | Thứ tự các phiên gần đây nhất (tối đa 15 log). |
| **Thời gian** | Timestamp | Ngày và giờ của phiên làm việc (ví dụ: `16/08 17:44`). |
| **Category** | Thẻ phân loại | Nhãn chuyên mục của phiên: `[study]`, `[debug]`, `[frontend]`, hoặc `[-]` nếu chưa gán. |
| **ID** | Conversation ID | Mã định danh 8 ký tự đầu của phiên (ví dụ: `f8ca87d1`). |
| **Tên phiên / Tóm tắt** | Tiêu đề & Nội dung | **Có 2 trường hợp hiển thị:**<br>• **Nếu có đặt tên:** Hiển thị **Tên phiên** in đậm + tóm tắt trong ngoặc `(...)`<br>• **Nếu bỏ qua không đặt tên:** Trích xuất tự động **câu prompt / nội dung đầu tiên**. |

### 💡 Ví dụ thực tế:
* **Có đặt tên & Category:**
  ```text
  3  16/08 17:27  [debug]  cbf1861a Kiểm tra Headroom (hien tai headroom co dang...)
  ```
* **Không đặt tên (bỏ qua):**
  ```text
  1  16/08 17:44  [-]      f8ca87d1 hiện tại thi những cái dặt trên đều duc...
  ```

---

## 2. ⚡ Phím tắt & Cách thoát CLI nhanh

### Khi CLI hỏi đặt tên phiên lúc thoát:
* **`Enter` trực tiếp (để trống):** Tự động bỏ qua đặt tên thủ công, hệ thống tự lưu với timestamp và tóm tắt prompt.
* **`Esc` hoặc `Ctrl + C` lần 2:** Bỏ qua hộp thoại và thoát ngay lập tức.

### Cách thoát nhanh không bao giờ bị hỏi:
* **`Ctrl + D` 2 lần (`Ctrl+D Ctrl+D`):** Tổ hợp phím thoát nhanh chuẩn terminal.
* **Gõ lệnh `/exit` hoặc `/quit`:** Thoát trực tiếp và tự động in lệnh `agy --conversation=<id>` để resume lại sau.

---

## 3. 🏷️ Quản lý, Đổi tên & Gán Category

Bạn có thể chỉnh sửa lại tên và category bất cứ lúc nào:
1. Gõ lệnh:
   ```bash
   /resume
   ```
2. Dùng phím mũi tên ↑ / ↓ để chọn phiên cần đổi.
3. Nhấn **`F2`**, nhập tên mới hoặc sửa category rồi bấm **`Enter`** để lưu (hoặc `Esc` để hủy).

---

## 4. 🗄️ Cấu trúc lưu trữ Log (`transcript.jsonl`)

Toàn bộ lịch sử trao đổi, tool calls và metadata của mỗi phiên đều được lưu tự động tại:

```text
~/.gemini/antigravity-cli/brain/<conversation-id>/
├── .system_generated/
│   └── logs/
│       ├── transcript.jsonl        # Log từng bước theo chuẩn JSON Lines
│       └── transcript_full.jsonl   # Log toàn văn đầy đủ
├── scratch/                        # File nháp, script tạm thời
└── task.md / artifacts...          # Tài liệu và kế hoạch sinh ra
```

### Các lệnh Terminal tra cứu nhanh:
```bash
# 1. Tìm lại phiên chat chứa từ khóa cụ thể:
grep -r "từ_khóa" ~/.gemini/antigravity-cli/brain/*/ .system_generated/logs/transcript.jsonl

# 2. Xem các câu hỏi / prompt của user trong một phiên:
grep '"type":"USER_INPUT"' ~/.gemini/antigravity-cli/brain/<conversation-id>/.system_generated/logs/transcript.jsonl

# 3. Xem 10 dòng đầu tiên của log phiên:
head -n 10 ~/.gemini/antigravity-cli/brain/<conversation-id>/.system_generated/logs/transcript.jsonl
```

---

## 5. 🚀 Lệnh xem nhanh file này từ Terminal

Bất cứ lúc nào muốn mở lại cẩm nang này trong terminal, bạn chỉ cần gõ:
```bash
cat ~/agy_cheatsheet.md
# hoặc nếu muốn cuộn trang:
less ~/agy_cheatsheet.md
```
