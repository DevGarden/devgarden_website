# encoding: UTF-8
require "spec_helper"

feature("Search Views") do
  background do
    # Setup BG Stuff
  end

  scenario("Nav Bar") do
    # it("TODO(jon): Write this test")
  end

  scenario("Page Entries Info") do
    visit("/upmin/m/User")

    # Make sure some basic page entries info exists
    within(".page-entries-info") do
      within("b:first-of-type") do
        expect(page).to(have_content("1 - 30"))
      end

      expect(page).to(have_content("of"))
      expect(page).to(have_content("in total"))
    end
  end

  scenario("Pagination") do
    visit("/upmin/m/User")

    # Make sure some basic pagination exists
    within(".pagination:first-of-type") do
      within(".active, .current") do
        expect(page).to(have_content("1"))
      end

      expect(page).to(have_content("Next"))
      click_link("Next")
    end

    within(".pagination:nth-of-type(2)") do
      within(".active, .current") do
        expect(page).to(have_content("2"))
      end

      expect(page).to(have_content("Next"))
      expect(page).to(have_content("Prev"))

      click_link("3")
    end

    within(".pagination:last-of-type") do
      within(".active, .current") do
        expect(page).to(have_content("3"))
      end
    end
  end

  scenario("Search via integer") do
    visit("/upmin/m/User")

    expect(page).to(have_selector("a.search-result-link", count: 30))

    fill_in("q_id_gteq", with: 2)
    fill_in("q_id_lteq", with: 5)
    click_button("Search")

    expect(page).to(have_selector("a.search-result-link", count: 4))
  end

  scenario("config.items_per_page") do
    Upmin.configuration.items_per_page = 25

    visit("/upmin/m/Order")

    # Global config of 25 should override default of 30
    expect(page).to(have_selector("a.search-result-link", count: 25))

    # Reset this.
    Upmin.configuration = Upmin::Configuration.new
  end

  scenario("Model items_per_page with config.items_per_page") do
    Upmin.configuration.items_per_page = 25

    visit("/upmin/m/Shipment")

    # `items_per_page 20` in the model should override global config of 25
    expect(page).to(have_selector("a.search-result-link", count: 20))

    # Reset this.
    Upmin.configuration = Upmin::Configuration.new
  end

end
