class TakeAction
  @queue = :action_items

  def self.perform(file_data)
    importer = CsvImporter.new
    importer.parse(file_data)
    importer.import
  end
end
