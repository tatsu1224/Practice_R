#ggplotのGUIツール


install.packages("ggplotgui", dependencies = TRUE)
install.packages("esquisse", dependencies = TRUE)
install.packages("ggraptR", dependencies = TRUE)

#ggplotgui
library(ggplotgui)
ggplot_shiny(data=df_diamond)

#esquisse BIツールっぽい
library(esquisse)
esquisser(data=df_diamond)

#ggraptR 高機能っぽいが使いにくい
library(ggraptR)
ggraptR()
