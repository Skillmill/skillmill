require 'rails_helper'

RSpec.describe Design, type: :model do

  describe 'Design' do

    it { should belong_to(:project) }
    it { should belong_to(:designer) }
    it { should belong_to(:customer) }
    it { should have_many(:reviews) }

    it 'should validate description, thirpartycontent' do
      d = Design.new(description: 'Desc', thirdpartycontent: '3rdParty', image:
          File.open(File.join(Rails.root, '/spec/support/logo.png')))
      d.description = ''
      expect(d.valid?).to be(false)
    end

  end

end
