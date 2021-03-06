class User < ActiveRecord::Base
  has_many(:playlists)

validates(:name, { :presence => :true })
validates(:username, { :presence => :true })
validates(:email, { :uniqueness => { case_sensitive: false }})
validates(:password, { :length => {:minimum => 8, :maximum => 16 }})
has_secure_password

end
