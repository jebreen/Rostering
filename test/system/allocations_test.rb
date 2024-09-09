require "application_system_test_case"

class AllocationsTest < ApplicationSystemTestCase
  setup do
    @allocation = allocations(:one)
  end

  test "visiting the index" do
    visit allocations_url
    assert_selector "h1", text: "Allocations"
  end

  test "should create allocation" do
    visit allocations_url
    click_on "New allocation"

    fill_in "Shift", with: @allocation.shift_id
    fill_in "Staff", with: @allocation.staff_id
    click_on "Create Allocation"

    assert_text "Allocation was successfully created"
    click_on "Back"
  end

  test "should update Allocation" do
    visit allocation_url(@allocation)
    click_on "Edit this allocation", match: :first

    fill_in "Shift", with: @allocation.shift_id
    fill_in "Staff", with: @allocation.staff_id
    click_on "Update Allocation"

    assert_text "Allocation was successfully updated"
    click_on "Back"
  end

  test "should destroy Allocation" do
    visit allocation_url(@allocation)
    click_on "Destroy this allocation", match: :first

    assert_text "Allocation was successfully destroyed"
  end
end
