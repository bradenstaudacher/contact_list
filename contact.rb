require_relative "contact_database"
require "pry"

class Contact
 
  attr_accessor :name, :email, :id
 
  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email
    @id = 0
  end
 
  def to_s
    # TODO: return string representation of Contact
    ["#{@name}","#{@email}"]
  end
 
  ## Class Methods
  class << self
    def generate_contact_list
      @con_list = []
      i = 1
      ContactDatabase.read_data.each do |contact|
      cc = Contact.new(contact[0], contact[1])
      cc.id = i
      i += 1
      @con_list << cc
        end
      return @con_list
    end
    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
       nc = Contact.new(name, email)
       ContactDatabase.write_data(nc.to_s)
    end
 
    def find(index)
      # TODO: Will find and return contact by index
      ContactDatabase.read_data[index]
    end
 
    def all
      ContactDatabase.read_data
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
      @con_list.each do |contact|
        if contact.id == id
          return contact.inspect
        end
      end
    end
  end
end

Contact.generate_contact_list

