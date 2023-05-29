function department = create_department(name, num_students, num_grads)
  department.name = name;
  department.num_students = num_students;
  department.num_grads = num_grads; % The nth index is the number of graduates n year(s) ago
end
