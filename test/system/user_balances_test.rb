require "application_system_test_case"

class UserBalancesTest < ApplicationSystemTestCase
  setup do
    @user_balance = user_balances(:one)
  end

  test "visiting the index" do
    visit user_balances_url
    assert_selector "h1", text: "User balances"
  end

  test "should create user balance" do
    visit user_balances_url
    click_on "New user balance"

    fill_in "Amount", with: @user_balance.amount
    fill_in "Currency", with: @user_balance.currency
    fill_in "User", with: @user_balance.user_id
    click_on "Create User balance"

    assert_text "User balance was successfully created"
    click_on "Back"
  end

  test "should update User balance" do
    visit user_balance_url(@user_balance)
    click_on "Edit this user balance", match: :first

    fill_in "Amount", with: @user_balance.amount
    fill_in "Currency", with: @user_balance.currency
    fill_in "User", with: @user_balance.user_id
    click_on "Update User balance"

    assert_text "User balance was successfully updated"
    click_on "Back"
  end

  test "should destroy User balance" do
    visit user_balance_url(@user_balance)
    click_on "Destroy this user balance", match: :first

    assert_text "User balance was successfully destroyed"
  end
end
