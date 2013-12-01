module Pequeno
  module Entities

    class Url
      attr_accessor :slang, :clicks, :stamp

      def initialize(slang: nil, clicks: 0, stamp: nil)
        @slang = slang
        @clicks = clicks
        @stamp = stamp
      end
    end

  end
end
