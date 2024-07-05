import pandas as pd
import pyodbc

# Read the CSV file
df = pd.read_csv('C:/Users/Rayfi/Downloads/Recipes.csv')

# Process your data: example to remove square brackets
df['Steps'] = df['Steps'].str.replace(r"[\[\]']", "")

# Connect to SQL Server
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=(localdb)\MSSQLLocalDb;'
                      'Database=RecipeRedux;'
                      'Trusted_Connection=yes;')

# Insert data into the database
for index, row in df.iterrows():
    cursor = conn.cursor()
    insert_query = """
    INSERT INTO Recipe (RecipeID, Name, Minutes, Tags, Steps, Description, Ingredients)
    VALUES (?, ?, ?, ?, ?, ?, ?)
    """
    cursor.execute(insert_query, row['RecipeID'], row['Name'], row['Minutes'], row['Tags'], row['Steps'], row['Description'], row['Ingredients'])
    cursor.commit()
cursor.close()
conn.close()
