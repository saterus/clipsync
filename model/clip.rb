class Clip < DataMapper::Base
  property :id, Serial
  property :text, String
  property :persist, Boolean, :default => true
  property :created, DateTime, :default => Time.now

  validates_presence_of :text, :persist
  validates_length_of :text, :minimum => 1

  def after_create

  end

end
