require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'When testing the comment model' do
    it { should belong_to(:user) }
    it { should belong_to(:post) }
  end
end
