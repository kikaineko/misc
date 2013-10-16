require 'roo'

xl = Roo::Excelx.new("test.xlsx")
#doc.default_sheet = doc.sheets.first
xl.sheets.each do |sheet_name|
  xl.default_sheet = sheet_name
  (xl.first_row..xl.last_row).each do |r|
    (xl.first_column..xl.last_column).each do |c|
      p xl.cell(r,c)
    end
  end
end

doc=xl
puts doc.cell(1,1)
puts xl.cell(1,1)
p xl.cell(1,"A")
p xl.cell("A",1)

p doc
p doc.last_row
p doc.info
