# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_reader :emails 
  
  def initialize(email_str)
    @emails = email_str 
  end
    
  def parse
    @emails.split(" ").map! {|email| email.strip.tr(',', '') }.uniq 
  end 
  
  
end 
