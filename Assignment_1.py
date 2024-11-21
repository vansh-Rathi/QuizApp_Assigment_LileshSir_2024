print("""         1 ----> Register
         2 ----> Sign In       
         3 ----> Recover Password
         4 ----> Exit """)

registered_users = []
credentials_db = {}
current_user = None

while True:
  choice = input("Enter the number associated with the service you want to use: ")
  if choice == '1':
    # registration
    username = input("Enter your name: ").lower()
    password = input("Enter your password: ")
    birth_date = input("Enter your DOB (format '12/11/2003'): ")

    registered_users.append(username)
    credentials_db[username] = {password: birth_date}

    print(f"{username}, you have been registered successfully!")

  elif choice == '2':
    # login
    current_user = input("Enter your name: ").lower()
    if current_user in registered_users:
      password_input = input("Enter your password: ")
      if password_input in credentials_db[current_user]:
        print(f"Welcome {current_user}, you have been logged in successfully!")
      else:
        print("Incorrect password!")
    else:
      print("Username not found!")
      print("Not registered? Please register first!")

  elif choice == '3':
    # forgot password
    if current_user is None:
      print("You need to log in first to recover your password.")
    else:
      dob_input = input("Enter your DOB as you provided during registration: ")
      if dob_input in credentials_db[current_user].values():
        new_password = input("Enter your new password: ")
        credentials_db[current_user][new_password] = dob_input
        print(f"{current_user}, your password has been updated successfully!")
      else:
        print("Incorrect DOB!")
        print("Please try again or create a new account!")

  else:
    print("Exiting the service!")
    break
