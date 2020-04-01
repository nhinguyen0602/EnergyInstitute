module DataModel::EnergyConsumption
  def self.call
    xlsx = Roo::Spreadsheet.open(Rails.root.join('app/data/data.xlsx').to_s)
    sheet = xlsx.sheet('KNK_SUM')
    (6..sheet.last_row).map do |index|
      row = sheet.row(index)
      {
        nam: row[0],
        ten_doanh_nghiep:row[1],
        ma_so_doanh_nghiep: row[2],
        ma_cap_2: row[3],
        ten_nganh_cap_2: row[4],
        dien: row[5],
        qtnl_co2: row[6],
        qtnl_ch4: row[7],
        qtnl_n2o: row[8],
        pnl_co2: row[9],
        pnl_ch4: row[10],
        pnl_n2o: row[11],
        phat_tan_co2: row[12],
        phat_tan_ch4: row[13],
        phat_tan_n2o: row[14],
        qtcn_co2: row[15],
        qtcn_ch4: row[16],
        tong_tru_dien_co2: row[17],
        tong_tru_dien_ch4: row[18],
        tong_tru_dien_n2o: row[19],
        tong_co2: row[20],
        tong_ch4: row[21],
        tong_n2o: row[22],
        tong_quy_doi: row[23]
      }
    end
  end
end