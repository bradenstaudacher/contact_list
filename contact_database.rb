## TODO: Implement CSV reading/writing
require 'csv'
require "pry"

# con_list = []
# object_list = CSV.read('contacts.csv').each do |contact|
#    con_list << Contact.new(contact[0], contact[1])
#  end


class ContactDatabase
  
  class << self
    def write_data(contact_arr)
      CSV.open('contacts.csv', "a") do |csv_file|
        csv_file << contact_arr
      end
    end

    def read_data
      CSV.read('contacts.csv')
    end
  end
end
