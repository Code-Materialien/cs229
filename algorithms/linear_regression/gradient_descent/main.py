

import csv
from typing import Tuple, List

from tabulate import tabulate

# import array
# from pprint import pprint



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
        labels.append(float(row[-1]))
        # print(', '.join(f"{idx}: {row}\n"))

# print("\n\n")
# print(tabulate(df[:5]))
# print(labels[:5])


def split_dataset(data: List[List], labels: List[float], train_size: float = 0.8) -> Tuple[List, List, List, List]:
    # print(f"data: {data}")
    # print(f"labels: {labels}")

    split_index = round(len(data) * train_size)

    print(f"split index: {split_index}")

    training_data = data[:split_index]
    testing_data = data[split_index:]
    training_labels = labels[:split_index]
    testing_labels = labels[split_index:]

    return (training_data, training_labels, testing_data, testing_labels) 


X_train, y_train, X_test, y_test = split_dataset(df, labels)

print("\n\n")
print(tabulate(X_train[:5]))
print(y_train[:5])
print(tabulate(X_test[:5]))
print(y_test[:5])

𝜽 = [0.5, 0.01, 0.24]

# Hypothesis function 
# hᶿ(X) = x₀ + 𝜃₁.x₁ + 𝜽₂.x₂ + 𝜽₃.x₃ (this will lead to a prediction)
def hypothesis(𝜃: List[float], features: List[float], intercept: float = 0.0):
    if len(𝜃) != len(features):
        raise Exception()
    terms_sum = intercept + 𝜃[0]*features[0] + 𝜃[1]*features[1] + 𝜃[2]*features[2]

    return terms_sum

# Loss function
# J(𝜽) = ½𝚺 (hᶿ(xⁱ) - yⁱ)²
# Observation: Loss function returns a Mean Squared Error for calculating the absolute error and 
# fit it into a parabola and also the raw error including the sign; the last will be used to calculate
# gradient descent
def loss_function():
    pass 

for x in X_train:
    features = x[2:]
    h = hypothesis(𝜃, features)







