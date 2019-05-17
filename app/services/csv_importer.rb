class CsvImporter

  def parse(file_data)
    rows = file_data.gsub("\r", '').split("\n").map{ |row| row.split("\t") }
    @attr = []

    rows.each do |row|
      row = row.first.split(",")
      next if (user_name = row[0]).blank? || (mobile_number = row[1]).blank?

      @attr << {:name => user_name, :mobile_no => mobile_number}
    end
  end

  def import
    @attr.each do |user_attr|
      user = User.new(user_attr)
      user.save!
    end
  end
end
