module Pequeno
  module Entities

    class User
      attr_accessor :username, :encrypted_pass

      def initialize(username: nil, pass: nil)
        @username = username
        @encrypted_pass = pass # to encrypt
      end
    end

  end
end
