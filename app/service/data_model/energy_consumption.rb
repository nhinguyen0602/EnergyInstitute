module DataModel::EnergyConsumption
  def self.call
    xlsx = Roo::Spreadsheet.open(Rails.root.join('app/data/data.xlsx').to_s)
    sheet = xlsx.sheet('KNK_TDNL')
    (6..sheet.last_row).map do |index|
      row = sheet.row(index)
      # {
      #   nam: row[0],
      #   ma_so_doanh_nghiep:row[1],
      #   ten_doanh_nghiep: row[2],
      #   ma_cap_2: row[3],
      #   ten_nganh_cap_2: row[4],
      #   he_so_su_dung_nang_luong: row[5],
      #   dien: row[6],
      #   antracite_co2: row[7],
      #   antracite_ch4: row[8],
      #   antracite_n2o: row[9],
      #   coke_co2: row[10],
      #   coke_ch4: row[11],
      #   coke_n2o: row[12],
      #   bitum_co2: row[13,
      #   bitum_ch4: row[14],
      #   bitum_n2o: row[15],
      #   do_co2: row[16],
      #   do_ch4: row[17],
      #   do_n2o: row[18],
      #   fo_co2: row[19],
      #   fo_ch4: row[20],
      #   fo_n2o: row[21],
      #   lpg_co2: row[22],
      #   lpg_ch4: row[23],
      #   lpg_n2o: row[24],
      #   khi_tu_nhien_co2: row[25],
      #   khi_tu_nhien_ch4: row[26],
      #   khi_tu_nhien_n2o: row[27],
      #   nang_luong_sinh_khoi_co2: row[28],
      #   nang_luong_sinh_khoi_ch4: row[29],
      #   nang_luong_sinh_khoi_n2o: row[30],
      #   tong_co2: row[31],
      #   tong_ch4: row[32],
      #   tong_n2o: row[33],
      #   tong: row[34]
      # }
    end
  end
end