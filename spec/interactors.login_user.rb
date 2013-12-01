require_relative '../interactors/login_user'

module Pequeno
  module Interactors
    describe LoginUser do
      describe '#run' do

        let(:user) { 'backshop' }
        let(:pass) { 'password' }

        context 'when the user does not exist' do
          it 'returns nil' do
            login = LoginUser.new(user, pass)
            expect(login.run).to be_nil
          end
        end

      end
    end
  end
end
