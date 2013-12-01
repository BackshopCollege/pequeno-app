require_relative '../entities/url'

module Pequeno
  module Interactors

    class ListUrls
      def run
        urls = []
        number = Random.rand(10) + 1
        number.times do
          urls << Entities::Url.new({
            slang: "url#{Random.rand(100)}",
            clicks: Random.rand(1000),
            stamp: Time.now
          })
        end
        urls
      end
    end

  end
end
