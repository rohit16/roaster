require 'rails_helper'

RSpec.describe ShidtDetailsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/shidt_details').to route_to('shidt_details#index')
    end

    it 'routes to #new' do
      expect(get: '/shidt_details/new').to route_to('shidt_details#new')
    end

    it 'routes to #show' do
      expect(get: '/shidt_details/1').to route_to('shidt_details#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/shidt_details/1/edit').to route_to('shidt_details#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/shidt_details').to route_to('shidt_details#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/shidt_details/1').to route_to('shidt_details#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/shidt_details/1').to route_to('shidt_details#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/shidt_details/1').to route_to('shidt_details#destroy', id: '1')
    end
  end
end
