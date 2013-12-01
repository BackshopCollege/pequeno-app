require_relative '../interactors/list_urls'

module Pequeno
  module Interactors
    describe ListUrls do
      describe '#run' do
        it 'returns an array' do
          list = ListUrls.new
          result = list.run
          expect(result).to be_an(Array)
        end
      end
    end
  end
end
