json.extract! alumno, :id, :numero_cuenta, :nombre, :apellido_paterno, :apellido_materno, :grado, :grupo, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
