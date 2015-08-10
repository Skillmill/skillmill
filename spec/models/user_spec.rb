require 'rails_helper'

RSpec.describe User, type: :model do

  it { should have_many(:projects) }
  it { should have_many(:reviews) }
  it { should have_many(:active_posts) }
  it { should have_many(:submitted_designs) }

  it { should validate_presence_of(:role) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }


  it 'should respond_to creative?' do
    user = User.new(role: 'creative')
    expect(user.creative?).to be true
  end

  it 'should respond_to customer?' do
    user = User.new(role: 'customer')
    expect(user.customer?).to be true
  end


end
