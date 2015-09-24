require 'rails_helper'

RSpec.describe Interest, type: :model do

  describe 'attributes' do
    it { should respond_to :name }
    it { should respond_to :description }
    it { should respond_to :user_id }
    it { should validate_presence_of :name }
    it { should belong_to :user }
  end

end
