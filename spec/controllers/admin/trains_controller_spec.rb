require 'rails_helper'

RSpec.describe Admin::TrainsController, type: :controller do
  login_admin

  describe 'GET #index' do
    let(:trains) { create_list(:train, 2) }

    before { get :index }

    it 'populates an array of all trains' do
      expect(assigns(:trains)).to match_array(trains)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    let(:train) { create(:train) }

    before { get :show, params: { id: train } }

    it 'assigns the requested train to @train' do
      expect(assigns(:train)).to eq train
    end

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    before { get :new }

    it 'assigns a new Train to @train' do
      expect(assigns(:train)).to be_a_new(Train)
    end

    it 'renders new view' do
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    let(:route) { create(:route) }

    context 'with valid attributes' do
      it 'saves the new train in the database' do
        expect { post :create, params: { train: attributes_for(:train, route_id: route) } }
          .to change(Train, :count).by(1)
      end

      it 'redirects to show view' do
        post :create, params: { train: attributes_for(:train, route_id: route) }
        expect(response).to redirect_to admin_train_path(assigns(:train))
      end
    end
  end

  # describe 'GET #edit' do
  #   it 'renders edit view' do
  #   end
  # end

  # describe 'PATCH #update' do
  #   it 'renders update view' do
  #   end
  # end

  # describe 'DELETE #destroy' do
  #   it 'renders destroy view' do
  #   end
  # end
end
