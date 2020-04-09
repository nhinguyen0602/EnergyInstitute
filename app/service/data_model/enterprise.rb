module DataModel::Enterprise
  def self.call
    xlsx = Roo::Spreadsheet.open(Rails.root.join('app/data/data.xlsx').to_s)
    sheet = xlsx.sheet('SPSX')
    (5..sheet.last_row).map do |index|
      row = sheet.row(index)
      {
        nam: row[0],
        ma_so_doanh_nghiep: row[1],
        ten_doanh_nghiep:row[2],
        stt: row[3],
        ma_san_pham: row[4],
        ten_san_pham: row[5],
        ma_cap_2: row[6],
        ten_nganh_cap_2: row[7],
        don_vi: row[8],
        so_luong: row[9],
        gtsx: row[10]
      }
    end
  end
end