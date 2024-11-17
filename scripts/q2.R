library(ggplot2)

args = commandArgs(trailingOnly = TRUE)
output_file=paste("output/q2_output/", args[1])
x_label=args[2]
y_label=args[3]
title=args[4]

df = read.table(file ("stdin"), sep = "\t", header = F, stringsAsFactors = F)
colnames(df)=c("x","y","cat")
print(head(df))

plot = ggplot(df, aes(x=x, y=y, group=cat))+geom_line(aes(color=cat))+labs(title = title, x = x_label, y = y_label)

ggsave(filename = output_file, plot = plot, width = 8, height = 6, dpi = 300)
