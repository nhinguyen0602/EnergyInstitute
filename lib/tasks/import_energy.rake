desc 'import energy to database'
task :import_energy => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }

energies = File.read("public/energy_consumptions.json")
energies = JSON.parse energies

for index in 0..1000 do
  energy = TestEnergy.create!(
    nam: energies[index].dig("nam"),
    ma_so_doanh_nghiep: energies[index].dig("ma_so_doanh_nghiep"),
    ten_doanh_nghiep: energies[index].dig("ten_doanh_nghiep"),
    ma_cap: energies[index].dig("ma_cap"),
    ten_nganh: energies[index].dig("ten_nganh"),
    dien: energies[index].dig("dien_nltt"),
    antracite_nltt: energies[index].dig("antracite_nltt"),
    bitum_nltt: energies[index].dig("bitum_nltt"),
    coc_nltt: energies[index].dig("than_coc_nltt"),
    ko_nltt: energies[index].dig("ko_nltt"),
    do_nltt: energies[index].dig("do_nltt"),
    fo_nltt: energies[index].dig("fo_nltt"),
    lpg_nltt: energies[index].dig("lpg_nltt"),
    ng_nltt: energies[index].dig("ng_nltt"),
    npk_pnl: energies[index].dig("npk_pnl"),
    hs_pnl: energies[index].dig("hs_pnl"),
    than_pnl: energies[index].dig("than_pnl"),
    ng_pnl: energies[index].dig("ng_pnl"),
    dien_pnl: energies[index].dig("dien_pnl"),
    antracite_tj: energies[index].dig("antracite_nltt_tj"),
    bitum_tj: energies[index].dig("bitum_nltt_tj"),
    coc_tj: energies[index].dig("than_coc_nltt_tj"),
    ko_tj: energies[index].dig("ko_nltt_tj"),
    do_tj: energies[index].dig("do_nltt_tj"),
    fo_tj: energies[index].dig("fo_nltt_tj"),
    lpg_tj: energies[index].dig("lpg_nltt_tj"),
    ng_tj: energies[index].dig("ng_nltt_tj"),
    tong: energies[index].dig("tong")
    )
end

end