require 'test_helper'
require 'pry'

module CTIMethod
  class Test
    cti_method :cti_interface

    def cti_interface
      'OHAI!'
    end
  end

  describe Test do
    it "must respond positively" do
      Test.cti_interface.must_equal 'OHAI!'
    end
  end

  class TestWithNoMandatoryArgs
    cti_method :cti_interface

    def initialize(some_arg = 'default')
      @some_arg = some_arg
    end

    def cti_interface
      'OHAI!'
    end
  end

  describe TestWithNoMandatoryArgs do
    it "must respond positively" do
      TestWithNoMandatoryArgs.cti_interface.must_equal 'OHAI!'
    end
  end

  class TestWithMandatoryArgs
    cti_method :cti_interface

    def initialize(some_arg)
      @some_arg = some_arg
    end

    def cti_interface
      'OHAI!'
    end
  end

  describe TestWithMandatoryArgs do
    it "must respond positively" do
      proc { TestWithMandatoryArgs.cti_interface }.must_raise CTIMethod::CTIInitializationError
    end
  end

  class TestWithMethodArgs
    cti_method :cti_interface

    def cti_interface(a,b)
      "OHAI! #{a},#{b}"
    end
  end

  describe TestWithMethodArgs do
    it "must respond positively" do
      TestWithMethodArgs.cti_interface(1, 2).must_equal "OHAI! 1,2"
    end
  end
end
