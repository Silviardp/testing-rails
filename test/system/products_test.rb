require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
   test "visiting the index" do
    visit "/"
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product-infos", count: Product.count

    save_and_open_screenshot
  end
end
