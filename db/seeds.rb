subsector = Subsector.create!(
  name: 'Lĩnh vực công thương'
)

sector = subsector.sectors.create!(
  name: 'Kinh doanh xăng dầu'
)

enterprise = sector.enterprises.create!(
  tax_code: 'MS01',
  name: 'Novahub',
)

enterprise_detail = enterprise.create_enterprise_detail!(
  provincial: 'Đà Nẵng ',
  district: 'Hải Châu ',
  commune: 'Thạch Thang ',
  year_of_investigation: 2020,
  number_of_employee: 25,
  production_value: 100000
)

user = enterprise.users.create!(
  name: 'Nguyễn Nhi', 
  email: 'nhinguyen@novahub.vn',
  password: 'nhinhinhi'
)
# enterprise.users << user
# enterprise.enterprise_detail = enterprise_detail


