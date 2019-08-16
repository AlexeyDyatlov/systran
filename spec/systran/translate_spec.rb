RSpec.describe Systran::Translate do
  let!(:client) { Systran::Client.new }
  let!(:translate) { client.translate }

  context '.translate' do
    context 'for invalid request' do
      let(:bad_client) { Systran::Client.new(access_key: '123456') }
      it 'returns response with error' do
        response = bad_client.translate(text: 'Hola', target: 'en')

        expect(response['error']).to_not eq nil
      end
    end

    context 'for valid request' do
      it 'returns translations' do
        response = client.translate(input: 'Тест', source: 'ru', target: 'en')

        expect(response['outputs']).to be_kind_of(Array)
      end
    end
  end
end
