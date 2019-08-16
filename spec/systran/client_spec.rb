RSpec.describe Systran::Client do
  let!(:client_without_key) { Systran::Client.new }
  let!(:client_with_key) { Systran::Client.new(access_key: '12345') }

  describe '.initialize' do
    context 'with access_key in params' do
      it 'assigns access_key to @access_key' do
        expect(client_with_key.access_key).to eq '12345'
      end
    end

    context 'without access_key in params' do
      it "assigns ENV['SYSTRAN_ACCESS_KEY'] to @access_key" do
        expect(client_without_key.access_key).to eq ENV['SYSTRAN_ACCESS_KEY']
      end
    end
  end
end
