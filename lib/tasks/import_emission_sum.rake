desc 'import emission sum to database'
task :import_emission_sum => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

emission_sum = File.read("public/greenhouse_emission_sum.json")
emission_sum = JSON.parse emission_sum

for index in 0..1000 do
  enteprise = TestEmissionSum.create!(emission_sum[index].symbolize_keys)
end

end