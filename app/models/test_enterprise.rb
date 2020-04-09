class TestEnterprise < ApplicationRecord
  scope :belong_province, ->(province) {
    if province.present?
      where("UPPER(test_enterprises.tinh) LIKE ?", "%#{province.upcase.strip}%")
    else
      all
    end
  }
end
