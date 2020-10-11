module Starter
# List of dependencies
using Plots

# List of functions to be exported
export example_plot
export new_plot

# Definitions of any new types provided

# Function definitions
"""
    example_plot(n)

This function evaluates Sin(x) at n points in the interval [0, 2π], creates a
    plot and then returns the plot.

"""
function example_plot(n)
    title = "This is an example plot."
    x1 = collect(range(0.0, 2*π, length=n))
    y1 = sin.(x1)

    # Plot the points
    p = plot(x1, y1, seriestype=:scatter,label="Some sample points",
    title=title, xlabel="x", ylabel="sin(x)", markersize=10, markercolor="red")

    # Now plot the true function
    x2 = collect(range(0.0, 2*π, length=1000))
    y2 = sin.(x2)
    plot!(x2, y2, label="Underlying function.", color="green", linewidth=2)
    return p
end

"""
Evaluates x^alpha.log(x) at n points with values of x = {2^y:1 <= y <= n} and returns a log plot.

"""
function new_plot(alpha,n)
    
    title = "Log plot of new function."
    x = collect(2 .^ (1:n))
    
    y = x.^alpha.*log.(x)

    # Plot the new function
    g = plot(x,y,title=title,markersize=10,
        linewidth=2,xaxis=:log,yaxis=:log,label="f(x)")
    
    return g
end

# End the module definition
end
