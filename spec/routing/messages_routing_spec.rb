require 'rails_helper'

RSpec.describe 'routing to messages' do
  it 'routes /api/v1/messages to messages#index' do
    expect(get: '/api/v1/messages').to route_to(
      controller: 'api/v1/messages',
      action: 'index',
      format: :json
    )
  end

  it 'routes /api/v1/messages to messages#create' do
    expect(post: '/api/v1/messages').to route_to(
      controller: 'api/v1/messages',
      action: 'create',
      format: :json
    )
  end
end
