require './classifications.rb'
require './apple.rb'
require './specs/specs.rb'

angio_sperms_spec = AngiospermsSpec.new()
apple = Apple.new()

puts angio_sperms_spec.satisfies?(apple)
