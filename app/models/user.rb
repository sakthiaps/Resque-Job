class User < ActiveRecord::Base
  #we need to move this to environment folder
  secret_key = "R\xF8@\xC8\b\xAElk2\a\xFF&\x1E\x82\xD0\x8Ca\x8A\xF4\xCD\x81\xF0\x19O\xAF\x1E\xC8\xCE\xE2\xCANY"

  attr_encrypted :mobile_no, :key => secret_key
end