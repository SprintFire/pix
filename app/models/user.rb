class User < ActiveRecord::Base
  has_may :posts
end
