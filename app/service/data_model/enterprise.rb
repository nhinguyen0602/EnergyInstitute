module DataModel::Enterprise
  def self.call
    xlsx = Roo::Spreadsheet.open(Rails.root.join('app/data/data.xlsx').to_s)
    sheet = xlsx.sheet('TTDN')
    (5..sheet.last_row).map do |index|
      row = sheet.row(index)
      {
        nam: row[0],
        ma: row[1],
        ten:row[2],
        tinh: row[3],
        huyen: row[4],
        xa: row[5],
        toa_do_x: row[6],
        toa_do_y: row[7],
        nganh_cap_1: row[8],
        ma_cap_2: row[9],
        ten_nganh_cap_2: row[10],
        gtsx: row[11],
        so_lao_dong: row[12]
      }
    end
  end
end