require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:password_confirmation) }
 
  subject(:user) do
    create(:user)
  end

  it do 
    is_expected.to be_valid
  end 

  describe '#create' do
    context 'When the password is nil' do
      before do
        user.password = nil
      end
    
      it do
        is_expected.to be_invalid
      end
      context 'When the password_confirmation is nil' do
        before do
          user.password_confirmation = nil
        end
      
        it do
          is_expected.to be_invalid
        end
      end
      context 'When the name is nil' do
        before do
          user.name = nil
        end
      
        it do
          is_expected.to be_invalid
        end
      end
      context 'When the mail is nil' do
        before do
          user.email = nil
        end
      
        it do
          is_expected.to be_invalid
        end
      end
    end
  end
end
