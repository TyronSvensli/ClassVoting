import random
import pandas as pd

csv_file = input("The path to the CSV file: ")

df = pd.read_csv(csv_file, sep=';')

df[['first_name', 'last_name']] = str(df['name']).split(' ', 1)

for index, row in df.iterrows():
    grade = str(df.at[index, 'grade'])
    grade = grade.upper()

    name = str(df.at[index, 'name']).split(' ', 1)
    first_name = name[0]
    last_name = name[1]

    student_token = []

    for i in range(13):
        student_token.append(str(random.randint(0,9)))

    finished_token = ("".join(student_token))

    print("("+finished_token+", '"+first_name+"', '"+last_name+"', '"+grade+"', NULL),")
