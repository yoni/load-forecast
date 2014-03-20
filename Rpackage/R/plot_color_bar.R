#' Plots a color bar, to be used as a legend.
#' @export
#' @examples
#' plot_color_bar()
plot_color_bar <- function(balance_point=BALANCE_POINT) {

    limits <- degree_hour_limits(balance_point)
    color.bar(palette(), limits[1], limits[2])

}

#' Function to plot color bar
#' @export
color.bar <- function(lut, min, max=-min, nticks=11, ticks=seq(min, max, len=nticks), title='') {
    scale = (length(lut)-1)/(max-min)

    dev.new(width=1.75, height=5)
    plot(c(0,10), c(min,max), type='n', bty='n', xaxt='n', xlab='', yaxt='n', ylab='', main=title)
    axis(2, ticks, las=1)
    for (i in 1:(length(lut)-1)) {
     y = (i-1)/scale + min
     rect(0,y,10,y+1/scale, col=lut[i], border=NA)
    }
}

