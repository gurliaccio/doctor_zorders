require 'rails_helper'

describe User do
  let(:user) { User.new(name: "Gerry Pass", email: "rgpass@gmail.com",
                        password: "foobar", password_confirmation: "foobar") }

  subject { user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }

  it { should be_valid }

  describe 'validations' do
    describe 'name' do
      context 'not present' do
        before { user.name = nil }
        it { should_not be_valid }
      end
    end
  end
end    