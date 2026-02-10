using Base


# Read the data from the csv file and put it onto memory
f = open("../../datasets/linear_regression_vehicles.csv");
lines = readlines(f);

# Do a split to find out how many features are present in the dataset 

θ::Base.Vector = [0.5, 0.01, 0.24];
X = Base.Matrix{String}(undef, length(lines) - 1, 6)

# print("Theta values: $θ \n");
# print("X: $X")

# global ctr = 1
for (i, l) in enumerate(lines[2:end])
    X[i, :] = split(l, ";")

end

close(f)

println("X ⇏ $X")

final = "❤️";
println("\n\n$final")

n_rows = size(X, 1);
println("size $n_rows")

split_idx = Int(floor(n_rows * 0.8));
println("split_idx: $split_idx");



@views begin
    # X_train, X_label, Y_test, Y_label = any function that creates this structure

    # Separate the training set from the testing set (80/20)
    train_size = 0.8
    X_train = X[1:split_idx, :end] # This is using a new space of memory (we can just create a view to it, wich would be enough for creating a .csv just for the training data)
    X_test = X[split_idx:end, :end]


    y_train = X[1:split_idx, end]
    y_test = X[split_idx:end, end]

    println("training labels: $y_train\n\n")
    println("testing labels: $y_test")

end