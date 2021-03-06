library(ggplot2)
library(packcircles)

base = read.csv("/Users/pascal/Desktop/yt-data-t-index-cat.csv")

#Group inverted trend index by category
base$TrendIndex <- (51 - base$TrendIndex)
data = aggregate(TrendIndex ~ category_id, base, sum)

#Group median / max / min / avg trendindex by category
avgData = aggregate(TrendIndex ~ category_id, base, mean)
medianData = aggregate(TrendIndex ~ category_id, base, median.default)
minData = aggregate(TrendIndex ~ category_id, base, min)
maxData = aggregate(TrendIndex ~ category_id, base, max)

labels = list();
labels[1] = "Film & Animation"
labels[2] = "Autos & Vehicles"
labels[10] = "Music"
labels[15] = "Pets & Animals"
labels[17] = "Sports"
labels[19] = "Travel & Events"
labels[20] = "Gaming"
labels[22] = "People & Blogs"
labels[23] = "Comedy"
labels[24] = "Entertainment"
labels[25] = "News & Politics"
labels[26] = "HowTo & Style"
labels[27] = "Education"
labels[28] = "Science & Technology"
labels[29] = "Nonprofits & Activism"

#print(data)
print(avgData)
print(medianData)
print(minData)
print(maxData)

packing <- circleProgressiveLayout(data$TrendIndex, sizetype="area")

data <- cbind(data, packing)

dat.gg <- circleLayoutVertices(packing, npoints=50)

p <- ggplot() +
	geom_polygon(data = dat.gg, aes(x, y, group = id, fill = as.factor(id)), colour = "black", alpha = 0.6) +
	
	geom_text(data = data, aes(x, y, size = min(5000, TrendIndex), label = labels[category_id])) + 
	scale_size_continuous(range = c(1, 4)) +
	
	theme_void() + 
	theme(legend.position = "none") + 
	coord_equal()

#p <- ggplot(data, aes(x=data$category_id, y=data$TrendIndex), color="steelblue")
#p <- p + geom_point()
#print(p)

# bar chart calculation
#avgData$category_id = labels[avgData$category_id]

#p2 <- ggplot(avgData, aes(x = category_id, y = TrendIndex)) +
#    geom_bar(stat='identity') + 
#    scale_x_continuous(breaks = 1:29, labels = labels) +
#    theme(axis.text.x = element_text(angle = 45, hjust=1))

#print(p2)
#par(mar=c(11,4,4,4))

#barplot(height = avgData$TrendIndex, las = 2, main = "Avg. Trend Ranking Position by Video Category", names.arg=labels[avgData$category_id], col="#FF0000")

x <- barplot(height = medianData$TrendIndex, main = "Median Trend Ranking Position by Video Category", xaxt="n", col="#FF0000")
labs <- paste(labels[medianData$category_id], "Category")
text(cex = 0.7, x = x + 0.25, y = -1, labs, xpd = TRUE, srt = 45, pos=2)







