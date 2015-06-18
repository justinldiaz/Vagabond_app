require 'rails_helper'

RSpec.describe City, :type => :model do

  pending "add some examples to (or delete) #{__FILE__}"

   context 'Initialization' do
    let(:user) { User.new }

    it "allows the user to post to the city" do
      expect(user).to add_to(@city).with(1).post
    end

    it 'allows users to delete post through cities page' do
       
      
    end

  end
end
