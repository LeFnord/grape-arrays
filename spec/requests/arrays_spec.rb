# frozen_string_literal: true

require 'spec_helper'

RSpec.describe '/v1/arrays' do
  it_behaves_like 'POST', params: { names: %w[a b] }
  it_behaves_like 'PUT specific', key: 1, params: { names: %w[a b] }
end
