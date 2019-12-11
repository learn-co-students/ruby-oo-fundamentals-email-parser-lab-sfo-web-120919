# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :str_of_emails
    
    def initialize (str_of_emails)
        @str_of_emails = str_of_emails
    end

    def parse
        parsed = str_of_emails.split(' ')
        parsed.map! do |email|
            email.tr(",", "")
        end
        parsed.uniq
    end

end