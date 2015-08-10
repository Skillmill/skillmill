require 'rails_helper'

RSpec.describe Review, type: :model do

  describe 'Review' do



    it { should belong_to(:user) }
    it { should belong_to(:design) }
    it { should validate_presence_of(:rating) }
    it { should validate_presence_of(:comment) }

    it 'validate presence' do
      review = Review.new(rating: 3, comment: 'Comment')
      review.should be_valid
      review.rating = '9'
      review.should_not be_valid
    end

  end


end
