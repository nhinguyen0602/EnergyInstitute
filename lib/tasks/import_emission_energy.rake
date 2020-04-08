desc 'import emission energy to database'
task :import_emission_energy => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

emission_energies = File.read("public/greenhouse_emission_consumptions.json")
emission_energies = JSON.parse emission_energies

for index in 0..1000 do
  emission_energy = TestEmissionEnergy.create!(emission_energies[index].symbolize_keys)
end

end