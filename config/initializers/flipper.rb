# require_relative "./ar_setup"

require 'flipper'

require 'flipper/adapters/active_record'

Flipper.configure do |config|
  config.default do
    # pick an adapter, this uses memory, any will do
    adapter = Flipper::Adapters::Memory.new


    # adapter = Flipper::Adapters::ActiveRecord.new
    flipper = Flipper.new(adapter)
    
    # pass adapter to handy DSL instance
    # flipper = Flipper.new(adapter)

    # binding.pry
    flipper[:from_initializer_disabled].enable
    flipper[:from_initializer_disabled].disable
    
    flipper[:from_initializer_enabled].enable

    flipper
  end
end

