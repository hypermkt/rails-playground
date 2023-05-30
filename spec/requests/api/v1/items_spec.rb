require 'rails_helper'

RSpec.describe 'Api::V1::Item', type: :request do
  describe '#index' do
    let!(:item) { create(:item) }
    before { get api_v1_items_url }

    it { expect(response.status).to eq(200) }
    it { expect(json.size).to eq 1 }
  end
end
