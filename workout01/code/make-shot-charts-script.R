#title: make shots charts
#description: a short description of what the script is about
#input(s): what are the inputs required by the script?
#output(s): what are the outputs created when running the script?

install.packages("jpeg")
library(ggplot2)
library(jpeg)
library(grid)



court_file <- "/Users/mac/Desktop/workout01/images/nba-court.jpg"
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))

pdf('workout01/images/stephen-curry-shot-chart.pdf',width = 6.5,height = 5 )
ggplot(data = curry) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') + theme_minimal()
dev.off()

pdf('workout01/images/klay-thompson_shot_chart.pdf',width = 6.5,height = 5 )
ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()
dev.off()

pdf(file = '../Desktop/workout01/images/kevin-durant_shot_chart.pdf')
ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') + theme_minimal()
dev.off()

pdf('workout01/images/graymond-green_shot_chart.pdf',width = 6.5,height = 5 )
ggplot(data = green) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Graymond Green (2016 season)') + theme_minimal()
dev.off()

pdf('workout01/images/andre-iguodala_shot_chart.pdf',width = 6.5,height = 5 )
ggplot(data = iguodala) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') + theme_minimal()
dev.off()

pdf('workout01/images/gsw-shot-charts.pdf',width = 8, height = 7)
ggplot(data = shots_data) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart(2016 season)') + theme_minimal() + facet_wrap(~name)
dev.off()

png('workout01/images/gsw-shot-charts.png',width = 8, height = 7, units = "in",res = 1200)
ggplot(data = shots_data) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart(2016 season)') + theme_minimal() + facet_wrap(~name)
dev.off()


