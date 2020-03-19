desc 'Create order with company has paid before'
task :update_address => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

provinces = File.read("lib/tasks/local.json")
provinces = JSON.parse provinces

provinces.each do |province_raw|
  province = Province.create!(name: province_raw.dig("name"), code: province_raw.dig("code"))
  province_raw.dig("districts").each do |district_raw|
    district = province.districts.create!(name: district_raw.dig("name"))
    district_raw.dig("wards").each do |ward_raw|
      ward = district.wards.create!(name: ward_raw.dig("name"), prefix:ward_raw.dig("prefix"))
    end
  end
end

end