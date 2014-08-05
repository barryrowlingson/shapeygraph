clip_height <- function(shapey, top, bottom=0, delta=1){
    ymin = shapey$height * bottom/100
    ymax = shapey$height * top/100
    clip_horizontal(shapey, ymin, ymax, delta=delta)
}

clip_horizontal <- function(shapey, v1, v2, delta=1){
    xmin=-delta
    xmax=shapey$width + delta
    rect=list(x=c(xmin, xmax, xmax, xmin),
        y=c(v1,v1,v2,v2))
    polyclip(shapey$polys, rect, "intersect")
}
