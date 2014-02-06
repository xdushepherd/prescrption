s = Roo::Excel.new("P020100106356717645465.xls")
s.default_sheet = s.sheets.first
1.upto(145) do |line|
  first_name = s.cell(line,"E")
  last_name  = s.cell(line,"C")
  price = s.cell(line,"G")
  name = first_name+last_name
  if price
    Drug.seed do |s|
      s.id    = line
      s.specifications  = first_name
      s.name  = name
      s.price = price
    end
  end
end