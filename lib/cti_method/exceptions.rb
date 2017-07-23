module CTIMethod
  class CTIInitializationError < ArgumentError
    def message
      super + "\n#{self.class}: CTI method can not be used on class which require initialization arguments"
    end
  end
end
