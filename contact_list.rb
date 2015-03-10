require_relative 'contact'
require_relative 'contact_database'
require "pry"

case

when ARGV[0] == nil

when ARGV[0] == "help"
  puts "Here is a list of available commands:
    \n new  - Create a new contact
    \n list - List all contacts
    \n show - Show a contact
    \n find - Find a contact"

when ARGV[0] == "new"
  puts "Enter contact name"
  contact_name = STDIN.gets.chomp
  puts "Enter contact email"
  contact_email = STDIN.gets.chomp
  Contact.create(contact_name, contact_email)

when ARGV[0] == "list"
  puts Contact.all

when ARGV[0] == "show"
  puts "Enter id"
  index = STDIN.gets.chomp
  puts Contact.show(index.to_i)

when ARGV[0] == "find"
  puts "Enter index"
  index = STDIN.gets.chomp
  puts Contact.find(index.to_i)

end







