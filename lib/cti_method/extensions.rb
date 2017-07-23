module CTIMethod
  module Extensions
    def cti_method(*methods)
      methods.each do |method_name|
        define_singleton_method(method_name) do |*args|
          begin
            new.send(method_name, *args)
          rescue ArgumentError => e
            raise CTIInitializationError.new(e)
          end
        end
      end
    end
  end
end
