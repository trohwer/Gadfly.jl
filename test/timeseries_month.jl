using Gadfly, DataArrays, RDatasets
using Base.Dates

y = 1973
airquality = dataset("datasets", "airquality")

dates = Date[Date(1973, m, d)
             for (m, d) in zip(airquality[:Month], airquality[:Day])]
airquality[:Date] = dates

p = plot(airquality, x=:Date, y=:Temp, Geom.line)
