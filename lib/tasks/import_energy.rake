desc 'import energy to database'
task :import_energy => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

energies = File.read("public/energy_consumptions.json")
energies = JSON.parse energies

energies.each do |energy_raw|
  energy = TestEnergy.create!(
    nam: energy_raw.dig("nam"),
    ma_so_doanh_nghiep: energy_raw.dig("ma_so_doanh_nghiep"),
    ten_doanh_nghiep: energy_raw.dig("ten_doanh_nghiep"),
    ma_cap: energy_raw.dig("ma_cap"),
    ten_nganh: energy_raw.dig("ten_nganh"),
    dien: energy_raw.dig("dien_nltt"),
    antracite_nltt: energy_raw.dig("antracite_nltt"),
    bitum_nltt: energy_raw.dig("bitum_nltt"),
    coc_nltt: energy_raw.dig("than_coc_nltt"),
    ko_nltt: energy_raw.dig("ko_nltt"),
    do_nltt: energy_raw.dig("do_nltt"),
    fo_nltt: energy_raw.dig("fo_nltt"),
    lpg_nltt: energy_raw.dig("lpg_nltt"),
    ng_nltt: energy_raw.dig("ng_nltt"),
    npk_pnl: energy_raw.dig("npk_pnl"),
    hs_pnl: energy_raw.dig("hs_pnl"),
    than_pnl: energy_raw.dig("than_pnl"),
    ng_pnl: energy_raw.dig("ng_pnl"),
    dien_pnl: energy_raw.dig("dien_pnl"),
    antracite_tj: energy_raw.dig("antracite_nltt_tj"),
    bitum_tj: energy_raw.dig("bitum_nltt_tj"),
    coc_tj: energy_raw.dig("than_coc_nltt_tj"),
    ko_tj: energy_raw.dig("ko_nltt_tj"),
    do_tj: energy_raw.dig("do_nltt_tj"),
    fo_tj: energy_raw.dig("fo_nltt_tj"),
    lpg_tj: energy_raw.dig("lpg_nltt_tj"),
    ng_tj: energy_raw.dig("ng_nltt_tj"),
    tong: energy_raw.dig("tong")
    )
end

end