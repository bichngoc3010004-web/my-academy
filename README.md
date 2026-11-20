# MY ACADEMY — bản chạy ngay trên máy

## Mở website
- Tải `my-academy.html` và mở bằng Chrome/Edge.
- Không cần cài đặt, không cần tài khoản, không cần trả phí.
- Dữ liệu được lưu trong bộ nhớ trình duyệt trên máy đang sử dụng.

## Chức năng hiện có
- Tạo và quản lý môn học.
- Thêm bài học, phân loại bài giảng/bài tập/ôn tập/kiểm tra.
- Gắn liên kết tài liệu (Google Drive, PDF online...).
- Đánh dấu bài học hoàn thành và xem tiến độ.
- Nhập điểm kiểm tra, xem điểm trung bình.
- Xuất và nhập bản sao lưu JSON.

## Quan trọng về đồng bộ online
Đây là bản chạy ngay (local-first), chưa phải website công khai và chưa đồng bộ giữa nhiều thiết bị. Để có URL công khai và đồng bộ online cần tạo/kết nối tài khoản dịch vụ hosting và database (ví dụ Cloudflare Pages + Supabase). Không chia sẻ mật khẩu hoặc khóa bí mật cho bất kỳ ai. Chỉ dùng khóa publishable/anon ở phía trình duyệt và bật Row Level Security cho mọi bảng.

## Gói mã nguồn
- `index.html`, `style.css`, `app.js`: mã nguồn ứng dụng.
- `schema.sql`: cấu trúc database tham khảo cho bước triển khai online.
