# require 'rails_helper'
#
# feature "User playing the game" do
#   scenario "when user wins game" do
#     visit '/games/new'
#       allow_any_instance_of(Game).to receive(:computer_throw).and_return("paper")
#       click_button("throw-scissors")
#       expect(page).to have_content("User won!!")
#   end
#
#   scenario "when user loses game" do
#     visit '/games/new'
#       allow_any_instance_of(Game).to receive(:computer_throw).and_return("rock")
#       click_button("throw-scissors")
#       expect(page).to have_content("Computer won!!")
#   end
# end
#
# feature "User visits website" do
#   scenario "sees a list of games and can view them" do
#     game = Game.create(user_throw: "rock", computer_throw: "paper")
#     visit "/"
#     expect(page).to have_content("paper vs. rock Winner: computer")
#   end
#
#   scenario "can start a new game" do
#     visit "/"
#     expect(page).to have_content("New Game")
#   end
# end
