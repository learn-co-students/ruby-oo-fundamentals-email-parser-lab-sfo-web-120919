# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



class EmailAddressParser
   attr_accessor :parse
   
   def initialize(email_addresses)
        @emails = email_addresses
   end
   def parse 
      
      # turn the string of emails into an array of particular emails
      emails = @emails.split(" ")
      # remove all all commas from the particular emails in the emails array
      emails.map! {|jason| jason.tr(",", "")}
      # finally, remove all duplicates from the emails array
      emails.map.uniq
      # return the edited emails array
      
   end
    
end


# parser = EmailAddressParser.new(email_addresses)
 
# parser.parse

 
