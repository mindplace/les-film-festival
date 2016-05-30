require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

end

# require 'rails_helper'
#
# describe GamesController do
#   let!(:game) { Game.create!(user_throw: Game::THROWS.sample) }
#
#   describe "GET #index" do
#     it "assigns all games as @games" do
#       get :index
#       expect(assigns(:games)).to eq(Game.all)
#     end
#   end
#
#   describe "GET #show" do
#     it "assigns the requested game as @game" do
#       get :show, { id: game.id }
#       expect(assigns(:game)).to eq(game)
#     end
#
#     it "assigns winner throw" do
#       get :show, {id: game.id}
#       expect(assigns(:winner_throw)).to eq(game.winner_throw)
#     end
#
#     it "assigns loser throw" do
#       get :show, { id: game.id }
#       expect(assigns(:loser_throw)).to eq(game.loser_throw)
#     end
#   end
#
#   describe "GET #new" do
#     it "initializes a blank game object" do
#       get :new
#       expect(assigns(:game)).to be_an_instance_of(Game)
#     end
#
#     context "doesn't have a computer_throw or user_throw initially" do
#       it "computer_throw is initially nil" do
#         get :new
#         expect(assigns(:game).computer_throw).to be_nil
#       end
#
#       it "user_throw is initially nil" do
#         get :new
#         expect(assigns(:game).user_throw).to be_nil
#       end
#     end
#   end
#
#   describe "POST #create" do
#
#     context "when valid params are passed" do
#
#       before :each do
#         post :create, { game: { user_throw: "rock" } }
#       end
#
#       it "creates a new Game" do
#         expect {
#           post :create, { game: { user_throw: "rock" } }
#         }.to change(Game, :count).by(1)
#       end
#
#       it "assigns a newly created game as @game" do
#         expect(assigns(:game)).to be_an_instance_of(Game)
#       end
#
#       it "redirects to the created game" do
#         new_game = assigns(:game)
#         expect(subject).to redirect_to(game_path(new_game))
#       end
#     end
#
#     context "when invalid params are passed" do
#
#       before :each do
#         post :create, { game: { user_throw: "banana" } }
#       end
#
#       it "assigns a newly created but unsaved game as @game" do
#         expect(assigns(:game)).to be_an_instance_of(Game)
#       end
#
#       it "re-renders the 'new' template" do
#         expect(subject).to render_template(:new)
#       end
#     end
#   end
#
#   describe "DELETE #destroy" do
#
#     it "assigns the requested game as @game" do
#       delete :destroy, { id: game.id }
#       expect(assigns(:game)).to eq(game)
#     end
#
#     it "destroys the requested game" do
#       expect {
#         delete :destroy, id: game.id
#       }.to change(Game, :count).by(-1)
#     end
#
#     it "redirects to the games list" do
#       delete :destroy, { id: game.id }
#       expect(subject).to redirect_to(games_url)
#     end
#   end
#
# end
