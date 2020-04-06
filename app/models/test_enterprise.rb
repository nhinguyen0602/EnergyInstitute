class TestEnterprise < ApplicationRecord

  scope :in_year, ->(year) {
    if year.present?
      where("nam = ?", year)
    else
      all
    end
  }

  scope :belong_province, ->(province) {
    if province.present?
      where("UPPER(test_enterprises.tinh) LIKE ?", "%#{province.upcase.strip}%")
    else
      all
    end
  }
end
