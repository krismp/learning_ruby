#---
# Excerpted from "Metaprogramming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr2 for more book information.
#---
module MyModule
  def my_method; 'hello'; end
end

obj = Object.new

class << obj
  include MyModule
end

obj.my_method            # => "hello"
obj.singleton_methods    # => [:my_method]

require_relative '../test/assertions'
assert_equals "hello", obj.my_method
assert_equals [:my_method], obj.singleton_methods
