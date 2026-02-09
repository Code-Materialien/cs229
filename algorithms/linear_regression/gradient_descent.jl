using Base


f = open("../../datasets/basic_vehicles.csv");
lines = readlines(f);

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