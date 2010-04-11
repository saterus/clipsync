# Define a subclass of Ramaze::Controller holding your defaults for all
# controllers

class DefaultController < Ramaze::Controller
  layout :default
  helper :xhtml
  helper :form
  engine :haml
end

# Here go your requires for subclasses of Controller:
require __DIR__('main')
