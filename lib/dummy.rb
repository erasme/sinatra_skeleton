#
# This is the Dummy module
#
# It's just a do-nothing module that serves as a base for a modular Sinatra 
# app.
# If you need to build a modular app, just create another module
#

module Dummy
    class App < Sinatra::Base
      # Root route or this application
      get '/' do
        "Hello, world!"
      end

      class<<self

        # This is just a classic method demonstrating the use of yard
        #
        # @param [Int] value The value to return back
        # @return [Int] the returned value, which is exactly the same as the parameter
        def just_a_standard_method(value)
          value
        end
      end
    end
end

