class EmailAddressParser

    attr_accessor :email

    def initialize(email_addresses)
      @email = email_addresses
    end

    def parse
     # split the string of email into an array of emails     
        email_arr = @email.split(" ")
     # iterate through each email in email_arr, remove the commas
        final_arr = email_arr.map! {|email| email.tr(",","")}
     # remove duplicates in email_arr
        return final_arr.uniq
     # return email_Arr
     
    end 
  end
  


# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
