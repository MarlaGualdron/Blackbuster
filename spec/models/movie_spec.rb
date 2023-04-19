require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:release) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:rent_price) }
 
  subject(:movie) do
    create(:movie)
  end

  it do 
    is_expected.to be_valid
  end 

  describe '#create' do
    context 'When the title is nil' do
      before do
        movie.title = nil
      end
    
      it do
        is_expected.to be_invalid
      end
      context 'When the description is nil' do
        before do
          movie.description = nil
        end
      
        it do
          is_expected.to be_invalid
        end
      end
      context 'When the quantity is nil' do
        before do
          movie.quantity = nil
        end
      
        it do
          is_expected.to be_invalid
        end
      end
      context 'When the release is nil' do
        before do
          movie.release = nil
        end
      
        it do
          is_expected.to be_invalid
        end
      end
    end
  end
end
