require 'test_helper'

class PinTest < ActiveSupport::TestCase
	test "Pin debe tener un nombre" do
		@pin = Pin.new({
			title:''
		})

		assert !@pin.valid?, "un pin sin nombre no es valido"
	end
end
