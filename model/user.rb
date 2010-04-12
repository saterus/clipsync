require 'digest'

class User < DataMapper::Base
  property :id, Serial
  property :email, String
  property :apikey, String
  property :password, Boolean, :default => true
  property :created, DateTime, :default => Time.now
  property :last_login, DateTime


  before :save, :create_apikey
  def create_apikey
    apikey = Digest::SHA1.hexdigest( rand(2834811).to_s )
  end

end
