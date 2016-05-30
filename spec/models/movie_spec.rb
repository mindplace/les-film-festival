require 'rails_helper'

RSpec.describe Movie, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# describe Game do
#   let(:game) { Game.new }
#
#   describe "#recent" do
#     it "returns the last fives games" do
#       10.times { Game.create(user_throw: "rock", computer_throw: "rock") }
#       expect(Game.recent.length).to eq(5)
#     end
#   end
#
#   describe "#throw_for_computer!" do
#     it "sets computer_throw" do
#       expect{ game.throw_for_computer! }.to change{ game.computer_throw }
#     end
#
#     it "only sets the computer_throw once" do
#       game.throw_for_computer!
#       expect{ game.throw_for_computer! }.not_to change{ game.computer_throw }
#     end
#   end
#
#   describe "#computer_throw" do
#     describe "validations" do
#       it "is valid when it's rock" do
#         game.computer_throw = 'rock'
#         game.valid?
#         expect(game.errors[:computer_throw]).to be_empty
#       end
#
#       it "is valid when it's paper" do
#         game.computer_throw = 'paper'
#         game.valid?
#         expect(game.errors[:computer_throw]).to be_empty
#       end
#
#       it "is valid when it's scissors" do
#         game.computer_throw = 'scissors'
#         game.valid?
#         expect(game.errors[:computer_throw]).to be_empty
#       end
#
#       it "is NOT valid when it's pineapple" do
#         game.computer_throw = 'pineapple'
#         game.valid?
#         expect(game.errors[:computer_throw]).to_not be_empty
#       end
#     end
#   end
#
#   describe "#user_throw" do
#     describe "validations" do
#       it "is valid when it's rock" do
#         game.user_throw = 'rock'
#         game.valid?
#         expect(game.errors[:user_throw]).to be_empty
#       end
#
#       it "is valid when it's paper" do
#         game.user_throw = 'paper'
#         game.valid?
#         expect(game.errors[:user_throw]).to be_empty
#       end
#
#       it "is valid when it's scissors" do
#         game.user_throw = 'scissors'
#         game.valid?
#         expect(game.errors[:user_throw]).to be_empty
#       end
#
#       it "is NOT valid when it's pineapple" do
#         game.user_throw = 'pineapple'
#         game.valid?
#         expect(game.errors[:user_throw]).to_not be_empty
#       end
#     end
#   end
#
#   describe "#winner" do
#     context "when computer_throw is paper" do
#       before do
#         game.computer_throw = 'paper'
#       end
#
#       it "determines computer won if user_throw is rock" do
#         game.user_throw = 'rock'
#         expect(game.winner).to eq('computer')
#       end
#
#       it "determines user won if user_throw is scissors" do
#         game.user_throw = 'scissors'
#         expect(game.winner).to eq('user')
#       end
#     end
#
#     context "when computer throws rock" do
#       before do
#         game.computer_throw = 'rock'
#       end
#
#       it "determines computer won if user_throw is scissors" do
#         game.user_throw = 'scissors'
#         expect(game.winner).to eq('computer')
#       end
#
#       it "determines user won if user_throw is paper" do
#         game.user_throw = 'paper'
#         expect(game.winner).to eq('user')
#       end
#     end
#
#     context "when computer throws scissors" do
#       before do
#         game.computer_throw = 'scissors'
#       end
#
#       it "determines computer won if user_throw is rock" do
#         game.user_throw = 'rock'
#         expect(game.winner).to eq('user')
#       end
#
#       it "determines user won if user_throw is paper" do
#         game.user_throw = 'paper'
#         expect(game.winner).to eq('computer')
#       end
#     end
#
#     describe "validations" do
#        #Already Validated Everything Necessary
#     end
#   end
# end
