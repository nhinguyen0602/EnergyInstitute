module DataModel::Enterprise
  def self.call
    xlsx = Roo::Spreadsheet.open(Rails.root.join('app/data/data.xlsx').to_s)
    sheet = xlsx.sheet('KNK_SPSX')
    (5..sheet.last_row).map do |index|
      row = sheet.row(index)
      {
        nam: row[0],
        ma_so_doanh_nghiep: row[1],
        ten_doanh_nghiep:row[2],
        ma_nganh_2: row[3],
        te_cap_2: row[4],
        ma_sp: row[5],
        ten_sp: row[6],
        don_vi: row[7],
        khoi_luong: row[8],
        hspt_co2: row[9],
        hspt_ch4: row[10],
        phat_thai_co2: row[11],
        phat_thai_ch4: row[12]
      }
    end
  end
end