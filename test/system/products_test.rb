require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Brand", with: @product.brand
    fill_in "Category", with: @product.category
    fill_in "Description", with: @product.description
    fill_in "Discountpercentage", with: @product.discountPercentage
    fill_in "Minimumorderquantity", with: @product.minimumOrderQuantity
    fill_in "Price", with: @product.price
    fill_in "Rating", with: @product.rating
    fill_in "Sku", with: @product.sku
    fill_in "Stock", with: @product.stock
    fill_in "Tags", with: @product.tags
    fill_in "Title", with: @product.title
    fill_in "Weight", with: @product.weight
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Brand", with: @product.brand
    fill_in "Category", with: @product.category
    fill_in "Description", with: @product.description
    fill_in "Discountpercentage", with: @product.discountPercentage
    fill_in "Minimumorderquantity", with: @product.minimumOrderQuantity
    fill_in "Price", with: @product.price
    fill_in "Rating", with: @product.rating
    fill_in "Sku", with: @product.sku
    fill_in "Stock", with: @product.stock
    fill_in "Tags", with: @product.tags
    fill_in "Title", with: @product.title
    fill_in "Weight", with: @product.weight
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
