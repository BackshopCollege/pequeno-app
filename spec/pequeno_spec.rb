# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe 'Pequeno' do
  context 'as a Sinatra app' do
    it 'responds to home requests' do
      get '/'
      expect(last_response).to be_ok
    end
  end
end
