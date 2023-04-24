require "application_system_test_case"

class AsistenciaTest < ApplicationSystemTestCase
  setup do
    @asistencium = asistencia(:one)
  end

  test "visiting the index" do
    visit asistencia_url
    assert_selector "h1", text: "Asistencia"
  end

  test "should create asistencium" do
    visit asistencia_url
    click_on "New asistencium"

    fill_in "Alumno", with: @asistencium.alumno_id
    fill_in "Asistencia", with: @asistencium.asistencia
    click_on "Create Asistencium"

    assert_text "Asistencium was successfully created"
    click_on "Back"
  end

  test "should update Asistencium" do
    visit asistencium_url(@asistencium)
    click_on "Edit this asistencium", match: :first

    fill_in "Alumno", with: @asistencium.alumno_id
    fill_in "Asistencia", with: @asistencium.asistencia
    click_on "Update Asistencium"

    assert_text "Asistencium was successfully updated"
    click_on "Back"
  end

  test "should destroy Asistencium" do
    visit asistencium_url(@asistencium)
    click_on "Destroy this asistencium", match: :first

    assert_text "Asistencium was successfully destroyed"
  end
end
