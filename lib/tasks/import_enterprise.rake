desc 'import enterprise to database'
task :import_enterprise => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

enterprises = File.read("public/enterprises.json")
enterprises = JSON.parse enterprises

for index in 0..1000 do
  enteprise = TestEnterprise.create!(
    nam: enterprises[index].dig("nam"),
    ma_so_doanh_nghiep: enterprises[index].dig("ma"),
    ten_doanh_nghiep: enterprises[index].dig("ten"),
    tinh: enterprises[index].dig("tinh"),
    huyen: enterprises[index].dig("huyen"),
    xa: enterprises[index].dig("xa"),
    toa_do_X: enterprises[index].dig("toa_do_x"),
    toa_do_Y: enterprises[index].dig("toa_do_y"),
    nganh_cap_1: enterprises[index].dig("nganh_cap_1"),
    ma_Cap: enterprises[index].dig("ma_cap_2"),
    ten_nganh_cap_2: enterprises[index].dig("ten_nganh_cap_2"),
    gtsx: enterprises[index].dig("gtsx"),
    so_lao_dong: enterprises[index].dig("so_lao_dong")
    )
end

end