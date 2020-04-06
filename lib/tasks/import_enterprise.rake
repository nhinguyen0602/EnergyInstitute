desc 'import enterprise to database'
task :import_enterprise => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

enterprises = File.read("public/enterprises.json")
enterprises = JSON.parse enterprises

enterprises.each do |enterprise_raw|
  enteprise = TestEnterprise.create!(
    nam: enterprise_raw.dig("nam"),
    ma_so_doanh_nghiep: enterprise_raw.dig("ma"),
    ten_doanh_nghiep: enterprise_raw.dig("ten"),
    tinh: enterprise_raw.dig("tinh"),
    huyen: enterprise_raw.dig("huyen"),
    xa: enterprise_raw.dig("xa"),
    toa_do_X: enterprise_raw.dig("toa_do_x"),
    toa_do_Y: enterprise_raw.dig("toa_do_y"),
    nganh_cap_1: enterprise_raw.dig("nganh_cap_1"),
    ma_Cap: enterprise_raw.dig("ma_cap_2"),
    ten_nganh_cap_2: enterprise_raw.dig("ten_nganh_cap_2"),
    gtsx: enterprise_raw.dig("gtsx"),
    so_lao_dong: enterprise_raw.dig("so_lao_dong")
    )
end

end