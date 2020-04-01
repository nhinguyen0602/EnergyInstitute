module DataModel::EnergyConsumption
  def self.call
    xlsx = Roo::Spreadsheet.open(Rails.root.join('app/data/data.xlsx').to_s)
    sheet = xlsx.sheet('SPSX')
    (7..sheet.last_row).map do |index|
      row = sheet.row(index)
      {
        nam: row[0],
        ma_so_doanh_nghiep:row[1],
        ten_doanh_nghiep: row[2],
        stt: row[3],
        ten_san_pham: row[4],
        ma_cap_2: row[5],
        ten_nganh_cap_2: row[6],
        don_vi: row[7],
        so_luong: row[8],
        do_nltt: row[9],
        fo_nltt: row[10],
        lpg_nltt: row[11],
        ng_nltt: row[12],
        npk_pnl: row[13],
        hs_pnl: row[14],
        than_pnl: row[15],
        ng_pnl: row[16],
        dien_pnl: row[17],
        antracite_nltt_tj: row[18],
        bitum_nltt_tj: row[19],
        than_coc_nltt_tj: row[20],
        ko_nltt_tj: row[21],
        do_nltt_tj: row[22],
        fo_nltt_tj: row[23],
        lpg_nltt_tj: row[24],
        ng_nltt_tj: row[25],
        tong: row[26]
      }
    end
  end
end