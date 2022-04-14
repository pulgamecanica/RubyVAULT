module UserSeeds
  def self.import(filename=File.dirname(__FILE__) + "/../users.csv")
    field_names = nil
    User.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          user = User.create!(attribute_hash)
        end
      end
    end
  end
end
