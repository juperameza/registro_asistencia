require "application_system_test_case"

class AlumnosTest < ApplicationSystemTestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "visiting the index" do
    visit alumnos_url
    assert_selector "h1", text: "Alumnos"
  end

  test "should create alumno" do
    visit alumnos_url
    click_on "New alumno"

    fill_in "Apellido materno", with: @alumno.apellido_materno
    fill_in "Apellido paterno", with: @alumno.apellido_paterno
    fill_in "Grado", with: @alumno.grado
    fill_in "Grupo", with: @alumno.grupo
    fill_in "Nombre", with: @alumno.nombre
    fill_in "Numero cuenta", with: @alumno.numero_cuenta
    click_on "Create Alumno"

    assert_text "Alumno was successfully created"
    click_on "Back"
  end

  test "should update Alumno" do
    visit alumno_url(@alumno)
    click_on "Edit this alumno", match: :first

    fill_in "Apellido materno", with: @alumno.apellido_materno
    fill_in "Apellido paterno", with: @alumno.apellido_paterno
    fill_in "Grado", with: @alumno.grado
    fill_in "Grupo", with: @alumno.grupo
    fill_in "Nombre", with: @alumno.nombre
    fill_in "Numero cuenta", with: @alumno.numero_cuenta
    click_on "Update Alumno"

    assert_text "Alumno was successfully updated"
    click_on "Back"
  end

  test "should destroy Alumno" do
    visit alumno_url(@alumno)
    click_on "Destroy this alumno", match: :first

    assert_text "Alumno was successfully destroyed"
  end
end
