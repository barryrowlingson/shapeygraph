area_height <- function(shapey, h=0:100){
    afull = area.owin(owin(poly=shapey$poly))
    100 * sapply(h, function(ht){
        area.owin(owin(poly=clip_height(shapey,ht,0)))
    }
           ) / afull 
}
