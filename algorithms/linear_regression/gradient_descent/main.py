

import csv
import array
from pprint import pprint

from tabulate import tabulate


with open('../../../datasets/linear_regression_vehicles.csv') as score_opportunity_file:
    vehicleslist_reader = csv.reader(score_opportunity_file, delimiter=";")
    
    ocurrences = list(enumerate(vehicleslist_reader))[1:]
    size = len(ocurrences)
    train_size = size * 0.80
    test_size = 1 - train_size
    df = []
    labels = []
    for idx, row in ocurrences:
        if idx <= 4:
            print(row[:-1])
            print(row[-1])

        df.append(row[:-1])
        labels.append(row[-1])
        # print(', '.join(f"{idx}: {row}\n"))

print("\n\n")
# print(f"df: {df}")
print(tabulate(df[:5]))
print(labels[:5])