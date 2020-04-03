module DataModel::EnergyConsumption
  def self.call
    xlsx = Roo::Spreadsheet.open(Rails.root.join('app/data/data.xlsx').to_s)
    sheet = xlsx.sheet('KNK_SUM')
    (6..sheet.last_row).map do |index|
      row = sheet.row(index)
      {
        nam: row[0],
        ma_so_doanh_nghiep:row[1],
        ten_doanh_nghiep: row[2],
        ma_cap_2: row[3],
        ten_nganh: row[4],
        dien: row[5],
        antracite_nltt: row[6],
        bitum_nltt: row[7],
        coc_nltt: row[8],
        ko_nltt: row[9],
        do_nltt: row[10],
        fo_nltt: row[11],
        lpg_nltt: row[12],
        ng: row[13],
        
      }
    end
  end
end