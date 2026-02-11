

import csv


with open('../../datasets/linear_regression_vehicles.csv') as score_opportunity_file:
    vehicleslist_reader = csv.reader(score_opportunity_file, delimiter=";")

    for row in vehicleslist_reader:
        print(', '.join(row))