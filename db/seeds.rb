Store.create(name: 'Nike', adress: 'San Fernando')
Store.create(name: 'Pollo loco', adress: 'San Sebastian')
Store.create(name: 'KFC', adress: 'La estación')
Employee.create(email: 'Maria@gmail.com', name: 'Ever', position: 'Cajero', employee_number: 1, private_number: 1, status: 'Active',
                id_store: 1)
Employee.create(email: 'Lidia@gmail.com', name: 'Armando', position: 'Recursos', employee_number: 2,
                private_number: 2, status: 'Active', id_store: 1)
Employee.create(email: 'Juana@gmail.com', name: 'sebastian', position: 'Limpiador', employee_number: 3, private_number: 3,
                status: 'Active', id_store: 1)
Employee.create(email: 'Rocio@gmail.com', name: 'Ricardo', position: 'Lider', employee_number: 4, private_number: 4,
                status: 'Active', id_store: 1)
Employee.create(email: 'Diego@gmail.com', name: 'Diego', position: 'Recursos', employee_number: 5, private_number: 5,
                status: 'Active', id_store: 2)
Employee.create(email: 'Elisa@gmail.com', name: 'Iker', position: 'Produccion', employee_number: 6, private_number: 6,
                status: 'Active', id_store: 2)
Employee.create(email: 'Luisa@gmail.com', name: 'Omar', position: 'Cajero', employee_number: 7, private_number: 7,
                status: 'Active', id_store: 2)
Employee.create(email: 'Diego@gmail.com', name: 'Francisco', position: 'Calidad', employee_number: 8, private_number: 8,
                status: 'Active', id_store: 2)
Employee.create(email: 'Sofía@gmail.com', name: 'goku', position: 'Produccion', employee_number: 9, private_number: 9,
                status: 'Active', id_store: 3)
Employee.create(email: 'Irene@gmail.com', name: 'Vegeta', position: 'Gerente', employee_number: 10, private_number: 10,
                status: 'Active', id_store: 3)
Employee.create(email: 'manuel@gmail.com', name: 'Manuel', position: 'Cajero', employee_number: 11, private_number: 11,
                status: 'Active', id_store: 3)
Employee.create(email: 'david@gmail.com', name: 'David', position: 'Recursos', employee_number: 12, private_number: 12,
                status: 'Active', id_store: 3)

NUMERO_TIENDAS = 3
NUMERO_TOTAL_EMPLEADOS = 12
employee_number = 0

for day in 2...8
  until employee_number >= NUMERO_TOTAL_EMPLEADOS
    for id_store in 1..NUMERO_TIENDAS
      employee_number += 1
      Check.create(id_employee: employee_number, id_sucursal: id_store,
                   timestamp: '2023-02-0' + day.to_s + ' 07:0' + rand(9).to_s + ':00', check: 'in')

      Check.create(id_employee: employee_number, id_sucursal: id_store,
                   timestamp: '2023-02-0' + day.to_s + ' 16:0' + rand(9).to_s + ':00', check: 'out')
    end
  end
  employee_number = 0
end

User.create!({:email => "admin@gmail.com", :password => "123456", :password_confirmation => "123456" })
User.create!({:email => "iker@gmail.com", :password => "123456", :password_confirmation => "123456" })
