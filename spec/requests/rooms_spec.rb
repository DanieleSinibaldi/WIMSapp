require 'rails_helper'

RSpec.describe 'Rooms API', type: :request do
  # initialize test data
  let!(:rooms) { create_list(:room, 10) }
  let(:room_id) { rooms.first.id }

  # Test suite for GET /places
  describe 'GET /places' do
    # make HTTP get request before each example
    before { get '/places' }

    it 'returns places' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(rooms.uniq{|r| r.place}.count)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /places/:a_place
  describe 'GET /places/:a_place' do
    before { get "/places/#{rooms.first.place}" }

    it 'returns rooms' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(rooms.keep_if{|r| r.place == "#{rooms.first.place}"}.count)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /rooms/:id
  describe 'GET /rooms/:id' do
    before { get "/rooms/#{room_id}" }

    context 'when the record exists' do
      it 'returns the room' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(room_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:room_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Room/)
      end
    end
  end

  # Test suite for PUT /rooms/:id
  describe 'PUT /rooms/:id' do
    let(:valid_attributes) { { occupation: "g" } }

    context 'when the record exists' do
      before { put "/rooms/#{room_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

end
