desc 'Create order with company has paid before'
task :update_province => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

provinces = File.read("lib/tasks/local.json")
provinces = JSON.parse provinces
end