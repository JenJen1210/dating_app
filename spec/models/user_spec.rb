require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'attributes' do
    it { should respond_to :first_name }
    it { should respond_to :last_name }
    it { should respond_to :city }
    it { should respond_to :state }
    it { should respond_to :email }
    it { should respond_to :password }
    it { should have_many :interests }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :gender }
  end

end
