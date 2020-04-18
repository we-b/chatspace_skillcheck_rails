require "csv"

CSV.foreach('db/tags_view.csv') do |row|
  Tag.create(:name => row[1], :created_at => row[2], :updated_at => row[3])
end