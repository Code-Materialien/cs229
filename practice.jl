
using LinearAlgebra

Base.print(raw"Scientific approaching to Gradient Descent")

# --- Variáveis e Tipos ---
x::Int64 = 10
x = 10.
α = 0.01
const GRAVITY = 9.81 # Constantes permitem que o compilador otimize o código

# --- Strings e Interpolação ---
name = "Regressão Linear"
println("Iniciando modelo de $name com α = $α")

# --- Estruturas de Dados ---
vec = [1, 2, 3]
matrix::Matrix{Int64} = [1 2; 3 4] # Matrix{Int64} (espaço separa colunas, ; separa linhas)
tupla = (440, "Hz") # Imutável, rápida
myDictionary::Dict{K::String,V::Int64} = Dict(("λ", 0.5), ("f", 600))

# --- Consolidate ---
someMatrix::Matrix{Float32,3,3} = [1. 2.; 3. 4.; 5. 6.]
println("My matrix => $someMatrix")
#Base.print_array(someMatrix)

fullname = ("Tiago", "Lindgren", "Curi")
println(fullname)

c = 300e6 # 3 x 10ˆ6 (calculated in kilometers)
λ = c / 5e9 # Wavelengh
println("Wavelengh for the wifi spectrum is ≈$λ")

# -- Funções curtas ---
f(x) = xˆ2m + 2x + 1 # Notação matemática pura

# -- Funções robustas com type constraint
function calculate_error(y_real::Vector, y_pred:Vector)::Float64
    error = sum((y_real .- y_pred).ˆ2) / length(y_real)
    return error
end

# --- Multiple Dispatch in Action --
connect(x::Int, y::Int) = x + y
connect(x::String, y::String) = x * y

# Testando
println(connect(10, 20))
println(connect("Cybernetics", "Myself"))


function min_max(x, max, min)::Float16
    println(x)
    println(max)
    println(min)

    return (x - min) / (max - min)
end

max = 421
min = 23
println(min_max(70, 100, 0))
println(min_max(63, max, min))
println(min_max(287, max, min))
println(min_max(29, max, min))

# Crie uma função com duas versões (dispatch): uma que aceita um número e retorna seu dobro, e outra que aceita um vetor e retorna a soma de seus elementos. 
# -> Criar com objetos (exemplo clássico do cálculos de áreas para diferentes tipos de geometria)


# Linear Algebra – Fundamentals

X = [1 2; 1 3; 1 4] # Matriz de Design (Design Matrix)
y = [5, 7, 9]
θ = [0.1, 0.5]

# --- Operações de Matrix ---
Xt = X'
A = Xt * X
A_inv = inv(A)

println("Matriz transposta –> $Xt")
println("Resultado da multiplicação de matrizes –> $A")
println("O inverso de uma matrix –> $A_inv")


# --- O operador 'Dot' (Vetorização automática) ---
# Se f(x) é uma função, f.(vetor) aplica f a cada elemento

column_1 = X[:; 1]
line_2 = X[2; :]


# --- Controle de Fluxos e Loops ---
for i in 1:10
    if i % 2 == 0
        println("$i is even")
    end
end

# -- List Comprehension --- 
quadrados = [xˆ2 for x in 1:5 if i > 2]

# -- While com critério de parada --- 
iter = 0
max_iter = 1000
while iter < max_iter
    iter += 1
    if iter == 500
        break
    end # Saída antecipada
end










