require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe '#create' do
    
    it 'creates a new task' do

      expect(Task.find_by(title: 'Task1').details).to eq('Long Details')
    end

    it 'redirects to show_path' do
      post :create, params: { task: { title: 'Task1', details: 'Long Details' } }
      expect(response).to redirect_to(taskpath(Task.find_by(title: 'Task1')))
    end
  end
end
