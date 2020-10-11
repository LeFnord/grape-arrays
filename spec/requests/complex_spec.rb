# frozen_string_literal: true

require 'spec_helper'

RSpec.describe '/v1/complex' do
  params = {
    "addresses": [
      {
        "street": 'some street a',
        "city": 'city a',
        "code": '12345'
      }, {
        "street": 'another street',
        "city": 'city b',
        "code": '67890'
      }
    ]
  }

  it_behaves_like 'POST', params: params
  it_behaves_like 'PUT specific', key: 1, params: params
end
