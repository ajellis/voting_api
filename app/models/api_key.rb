class ApiKey < ActiveRecord::Base
  # before_create :generate_access_token
  #
  #   def generate_access_token
  #   self.access_token = Securerandom.hex
  #     end while self.class.exists?(access_token: access_token)
end
