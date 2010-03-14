require 'java'

#Do not need for GAE
#require 'rhino/rhino-1.7R2.jar'

module Rhino
  # This module contains all the native Rhino objects implemented in Java
  # e.g. 
  #   Rhino::J::NativeObject # => org.mozilla.javascript.NativeObject
  module J
    import "org.mozilla.javascript"
  end
end

unless Object.method_defined?(:tap)
  class Object #:nodoc:
    def tap
      yield self
      self
    end
  end
end