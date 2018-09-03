
users = [
    {
        first_name: "leah" ,
        last_name: "eramo" ,
        gender: "female",
        username: "leahpleurodon",
        dob: "13/03/1991",
        active: true,
        email: "boogers@email.com",
        password: "pudding"
      },
      {
        first_name: "Erica" ,
        last_name: "Murnane" ,
        gender: "female",
        username: "ricammm",
        dob: "07/03/1990",
        active: true,
        email: "facehead@email.com",
        password: "pudding"
      },
      {
        first_name: "Dave" ,
        last_name: "Jackson" ,
        gender: "male",
        username: "genocyyydal",
        dob: "14/06/1950",
        active: true,
        email: "son@email.com",
        password: "pudding"
      },
      {
        first_name: "Amy" ,
        last_name: "Bullard" ,
        gender: "female",
        username: "amy",
        dob: "19/04/1989",
        active: true,
        email: "amyb@email.com",
        password: "pudding"
      }
]


users.each do |u|
    User.create(u)
end