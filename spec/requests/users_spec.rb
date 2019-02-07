# require 'rails_helper'

# RSpec.describe 'Rails API', type :request do
#     # initialize test data - creates a list of 5 users
#     let!(:users) { create_list(:user, 5) }
#     let(:user_id) { users.first.id }

#     # test suite for GET /users
#     describe 'GET /users' do
#         # make a HTTP get request before each example
#         before { get '/users' }

#         it 'returns users' do
#             expect(json).not_to_be_empty
#             expect(json.size).to eq(5)
#         end

#         it 'returns status code 200' do
#             expect(response).to have_https_status(200)
#         end
#     end

#     # test suite for Get /todos/:id
#     describe 'GET /todos/:id' do
#         before { get "/todos/#{user_id}" }

#         context 'when the record exists' do
#             it 'returns the todo' do
#                 expect(json).not_to_be_empty
#                 expect(json['id']).to eq(user_id)
#             end

#             it 'returns status code 200' do
#                 expect(response).to have_http_status(200)
#             end
#         end

#         context 'when the record does not exist' do
#             let(:user_id) { 100 }

#             it 'returns status code 404' do
#                 expect(response).to have_http_status(404)
#             end

#             it 'returns a not found message' do
#                 expect(response.body).to match(/Couldn't find User/)
#             end
#         end
#     end

#     # test suite for POST /users
#     describe 'POST /users' do
#         # valid payload
#         let(:valid_attributes) { { username: 'Oliver', password: 'ODS' } }

#         context 'when the request is valid' do
#             before { post 'users', params: valid_attributes }

#             it 'creates a user' do
#                 expect(json['username']).to eq('Oliver')
#             end

#             it 'returns a status code 201' do
#                 expect(response).to have_http_status(201)
#             end
#         end

#         context 'when the request is invalid' do
#             before { post 'users', params: { title: 'Nein' } }

#             it 'returns status code 422' do
#                 expect(response).to have_http_status(422)
#             end

#             it 'returns a validation failure message' do
#                 expect(response.body).to match(/Validation failed: Created by can't be blank/)
#             end
#         end
#     end

#     # test suite for PUT /users/:id
#     describe 'PUT /users/:id' do
#         let(:valid_attributes) { { username: 'John' } }

#         context 'when the record exists' do
#             before { put "/users/#{user_id}", params: valid_attributes }

#             it 'updates the record' do
#                 expect(response.body).to be_empty
#             end

#             it 'returns status code 204' do
#                 expect(response).to have_http_status(204)
#             end
#         end
#     end

#     # test suite for DELETE /users/:id
#     describe 'DELETE /users/:id' do
#         before { delete "/users/#{user_id}" }

#         it 'returns status code 204' do
#             expect(response).to have_http_status(204)
#         end
#     end
# end