class Cat < ActiveRecord::Base
  validates_presence_of :age

  #http://stackoverflow.com/questions/990364/how-can-i-get-a-regex-to-check-that-a-string-only-contains-alpha-characters-a-z
  # Name can only contain a-z or A-Z, and must be [1, 50] characters
  validates_format_of :name, with: /\A^[a-zA-Z]{1,50}$\z/, message: "must only contain upper or lowercase letters and must be between 1 and 50 letters"
  
  #http://stackoverflow.com/questions/11806498/validation-for-positive-integer-and-decimal-values
  # Age is >= 1
  validates :age, :numericality => { :greater_than_or_equal_to => 1 }
  
  #http://stackoverflow.com/questions/3608076/rails-how-do-i-validate-that-something-is-a-boolean
  # Validates it is a proper boolean value
  validates :declawed, :inclusion => {:in => [true, false]}
end
