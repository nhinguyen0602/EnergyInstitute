desc 'import product to database'
task :import_product => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

products = File.read("public/products.json")
products = JSON.parse products

for index in 0..1000 do
  product = TestProduct.create!(
    nam: products[index].dig("nam"),
    ma_so_doanh_nghiep: products[index].dig("ma_so_doanh_nghiep"),
    ten_doanh_nghiep: products[index].dig("ten_doanh_nghiep"),
    stt: products[index].dig("stt"),
    ma_san_pham: products[index].dig("ma_san_pham"),
    ten_san_pham: products[index].dig("ten_san_pham"),
    ma_cap_2: products[index].dig("ma_cap_2"),
    ten_nganh_cap_2: products[index].dig("ten_nganh_cap_2"),
    don_vi: products[index].dig("don_vi"),
    so_luong: products[index].dig("so_luong"),
    gtsx: products[index].dig("gtsx")
    )
end

end