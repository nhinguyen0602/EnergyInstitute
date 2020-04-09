module DataModel::EnergyConsumption
  def self.call
    xlsx = Roo::Spreadsheet.open(Rails.root.join('app/data/data.xlsx').to_s)
    sheet = xlsx.sheet('TDNL')
    (7..sheet.last_row).map do |index|
      row = sheet.row(index)
      {
        nam: row[0],
        ma_so_doanh_nghiep:row[1],
        ten_doanh_nghiep: row[2],
        ma_cap: row[3],
        ten_nganh: row[4],
        dien_nltt: row[5],
        antracite_nltt: row[6],
        bitum_nltt: row[7],
        than_coc_nltt: row[8],
        ko_nltt: row[9],
        do_nltt: row[10],
        fo_nltt: row[11],
        lpg_nltt: row[12],
        ng_nltt: row[13],
        npk_pnl: row[14],
        hs_pnl: row[15],
        than_pnl: row[16],
        ng_pnl: row[17],
        dien_pnl: row[18],
        antracite_nltt_tj: row[19],
        bitum_nltt_tj: row[20],
        than_coc_nltt_tj: row[21],
        ko_nltt_tj: row[22],
        do_nltt_tj: row[23],
        fo_nltt_tj: row[24],
        lpg_nltt_tj: row[25],
        ng_nltt_tj: row[26],
        tong: row[27]
      }
    end
  end
end
