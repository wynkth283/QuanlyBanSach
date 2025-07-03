# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "🌱 Đang chạy file seeds.rb..."
# Seed LoaiQuyen
loai_quyen_admin = LoaiQuyen.find_or_create_by!(TenQuyen: 'Admin')
loai_quyen_khach = LoaiQuyen.find_or_create_by!(TenQuyen: 'KhachHang')
loai_quyen_nv = LoaiQuyen.find_or_create_by!(TenQuyen: 'NhanVien')

# Seed Admin user
Nguoidung.find_or_create_by!(Email: 'admin@quanlybansach.com') do |admin|
  admin.TenND = 'Admin'
  admin.AnhDaiDien = '' # Đường dẫn ảnh đại diện nếu có
  admin.DiaChi = 'Cà Mau'
  admin.SDT = 123456789
  admin.MatKhau = 'admin123' # Nên mã hóa mật khẩu nếu có xác thực
  admin.loai_quyen_id = loai_quyen_admin.id
end
