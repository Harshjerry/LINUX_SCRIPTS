import csv

fo = open("sample.csv", "r")
csv_reader = csv.reader(fo)

next(csv_reader)  # skip header

count = 0
prod_count = 0

for row in csv_reader:
    count += 1

    if row[1] == "prod":
        prod_count += 1
        print("PROD:", row[0])

    if row[5] == "stopped":
        print("STOPPED:", row[0])

print(f"total servers are {count}")
print(f"total prod servers are {prod_count}")

fo.close()