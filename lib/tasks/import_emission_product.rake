desc 'import emission product to database'
task :import_emission_product => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

emission_products = File.read("public/greenhouse_emission_products.json")
emission_products = JSON.parse emission_products

emission_products.each do |emission_product_raw|
  emission_product = TestEmissionProduct.create!(emission_product_raw.symbolize_keys)
end

end