clip_height <- function(shapey, percentage, delta=1){
    xmin=-delta
    xmax=shapey$width + delta
    ymin=-delta
    ymax=shapey$height*perecntage/100
    rclip = 0
}

clip_horizontal <- function(shapey, v1, v2, delta=1){
    xmin=-delta
    xmax=shapey$width+delta
    rect=list(x=c(xmin, xmax, xmax, xmin),
        y=c(v1,v1,v2,v2))
    polyclip(shapey$polys, rect, "intersect")
}
