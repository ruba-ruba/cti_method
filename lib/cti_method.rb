require 'cti_method/version'
require 'cti_method/exceptions'
require 'cti_method/extensions'

module CTIMethod
end

class Object
  extend CTIMethod::Extensions
end
