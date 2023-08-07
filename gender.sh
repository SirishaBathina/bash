def get_honorific(age, gender):
    if age < 18:
        return "Young " + ("lady" if gender == "female" else "man")
    elif age >= 18 and age <= 60:
        return "Mr." if gender == "male" else "Ms."
    else:
        return "Sir" if gender == "male" else "Madam"
age = int(input("Enter the person's age: "))
gender = input("Enter the person's gender (male/female): ").lower()
honorific = get_honorific(age, gender)
print("The honorific to use when addressing the person is:", honorific)
