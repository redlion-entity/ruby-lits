class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
  has_many :twits, dependent: :destroy
  has_many :comments
  validates :nickname, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 5}
  validates :email, presence: true, uniqueness: true, email: true
end
