# Build a class EmailParser that accepts a string of unformatted 
# email_addresses. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse 
        # create array of email strings
        parsed = @email_addresses.split(" ")
        # iterate through that array, removing "," from all strings
        parsed.map! do |email|
            email.tr(",","")
        end 
        # remove all duplicates from that array
        # return the edited / parsed array of emails
        parsed.uniq
    end 
end



