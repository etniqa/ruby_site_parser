require 'csv'

class Save
  def save_to_txt(file, data)
    CSV.open(file, "w", :write_headers => true, :col_sep => " | ",
             :headers => ["Question title".ljust(20), "Tags".ljust(20), "Owner".ljust(20), "Host".ljust(20)]) do |csv|
        data.each do |i|
          csv << i.values
        end
      # data.each do |i|
      #   i.values.each { |value|
      #     csv << value
      #   }
      # end
    end
  end
end