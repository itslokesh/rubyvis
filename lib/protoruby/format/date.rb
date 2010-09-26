require 'date'
module Protoruby
  module Format
    class Date
      attr_reader :pattern
      def initialize(pattern)
        @pattern=pattern
        #@pad=Protoruby::Format.pad
      end
      def format(d)
        d.strftime(pattern)
      end
      def parse(s)
        ::Date.strptime(s, pattern)
      end
    end
  end
end