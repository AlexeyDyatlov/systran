module Systran
  # Translate text or phrase
  class Translate
    # Module for translation for text or phrase
    module Translate
      # Translate
      def translate(args = {})
        # define params for request
        body = { 'input' => args[:input], 'source' => args[:source], 'target' => args[:target], 'key' => access_key }
        headers = { 'Content-Type' => 'application/json' }
        # make request
        self.class.post('/translation/text/translate', query: body, headers: headers).parsed_response
      end
    end
  end
end
