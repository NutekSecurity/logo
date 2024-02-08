require 'ffi'

module Logo
  extend FFI::Library
  ffi_lib 'liblogo.dylib'
  attach_function :logo_black, [], :string
  attach_function :logo, [], :string
end

puts Logo.logo_black
puts Logo.logo