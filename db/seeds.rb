lense_params =[
  {colour: 'black', description: "testing frist", prescription_type: 0, lens_type: 0, stock: 12, price: 1000},
  {colour: 'blue', description: "testing second", prescription_type: 1, lens_type: 1, stock: 10, price: 1100},
  {colour: 'green', description: "testing third", prescription_type: 2, lens_type: 2, stock: 11, price: 1300}
]

frame_params =[
  {name: 'Rimless',description: "testing frist", status: 1, stock: 10, price: 1000},
  {name: 'Semi-Rimless',description: "testing second", status: 1, stock: 11, price: 1200},
  {name: 'Full-Rimmed',description: "testing third", status: 1, stock: 14, price: 1400}  
]

user_params = [
    { 
        username: "testing user first",
        email: "testing_first@gmail.com",
        password: "password123",
        password_confirmation: "password123"
    },
    { 
        username: "testing user second",
        email: "testing_second@gmail.com",
        password: "password123",
        password_confirmation: "password123"
    },
    { 
        username: "testing user third",
        email: "testing_third@gmail.com",
        password: "password123",
        password_confirmation: "password123"
    }
]

admin_params = [
    { 
        username: "testing admin first",
        email: "testing__admin_first@gmail.com",
        password: "password123",
        password_confirmation: "password123",
        role: 1
    }
]

Lense.create(lense_params)
Frame.create(frame_params)
User.create(user_params)
User.create(admin_params)