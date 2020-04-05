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

enterprise_detail = enterprise.enterprise_details.create!(
  provincial: 'Đà Nẵng ',
  district: 'Hải Châu ',
  commune: 'Thạch Thang ',
  year_of_investigation: 2020,
  number_of_employee: 25,
  production_value: 100000
)

enterprise.enterprise_details.create!(
  provincial: 'Thừa Thiên Huế ',
  district: 'Hương Trà ',
  commune: 'Tứ Hạ ',
  year_of_investigation: 2018,
  number_of_employee: 29,
  production_value: 100000
)

role = Role.create!(
  name: 'user'
)

user = enterprise.users.create!(
  name: 'Nguyễn Nhi', 
  email: 'nhinguyen@novahub.vn',
  password: 'nhinhinhi',
  role_id: role.id
)

enterprise.energy_consumptions.create!(
  year_of_investigation: 2019,
  self_produced_electricity: 10,
  consumption_electricity: 10,
  coal: 10,
  bitum_coal: 10,
  coke_coal: 10,
  dust_coal: 10,
  ko: 10,
  do: 10,
  fo: 10,
  lpg: 10,
  ng: 10,
  biomass_energy: 10,
  renewable_energy: 10
)

EmissionReason.create(description: 'rác thải sinh hoạt')
EmissionReason.create(description: 'tiêu thụ điện năng')

enterprise.greenhouse_emissions.create!(
  year_of_investigation: 2019
)

GreenhouseEmission.first.greenhouse_emission_details.create!(
  emission_reason_id: 1,
  carbon_dioxide: 10,
  methane: 10,
  nitrous_dioxide: 10
)

sector.climate_changes.create!(
  year_of_investigation: 2019,
  intensity: 10,
  energy_consumption: 10,
  emission_structure: 10,
  cnc_cnx_ratio: 10,
  cssx_mt_ratio: 10,
  cssx_sh_ratio:10,
  gtsx_hotro_ratio: 10,
  ctx_ratio: 10
)