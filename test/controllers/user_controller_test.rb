require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

def setup 
    @user = User.new(nom:"prenom1 Nom1",email:"prenom@example.com")
end
test "nom doit etre present" do

    @user.nom =""
    assert_not @user.valid?
end
test "nom doit etre present" do

  @user.email =""

end
test "nom ne doit pas etre trop long" do
  @utilisateur.email = "a" * 51
  assert_not @utilisateur.valid?
end

test "email ne doit pas etre trop long" do
  @utilisateur.email = "a" * 244 + "@example.com"
  assert_not @utilisateur.valid?
end

test "email validation doit accepter les emails valides" do
  valid_addresses  = %w[@example.com AAA@example.COM]
  valid_addresses.each do |valid_address|
    @utilisateur.email = valid_address
    assert @utilisateur.valid?, "#{valid_address.inspect}"
  end
end
end
