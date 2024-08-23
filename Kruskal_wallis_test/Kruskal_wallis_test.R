# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Kruskal Wallis Teat Use R Software Complete Step By Step
# loading the appropriate libraries
install.packages("dplyr")
library("dplyr")
# Use (Open) File Input From Github Olah Data Semarang (timbulwidodostp)
Input_kruskal_wallis_test = read.csv("https://raw.githubusercontent.com/timbulwidodostp/Kruskal_wallis_test/main/Kruskal_wallis_test/Input_kruskal_wallis_test.csv",sep = ";")
# Estimation Kruskal Wallis Teat Use R Software Complete Step By Step
Output_Kruskal_wallis_test <- kruskal.test(RR ~ D, data = Input_kruskal_wallis_test)
print(Output_Kruskal_wallis_test)
# BH test
Post_hoc_BH_test <- pairwise.wilcox.test(Input_kruskal_wallis_test$RR, Input_kruskal_wallis_test$D, p.adjust.method = "BH")
print(Post_hoc_BH_test)
# Bonferroni test
Post_hoc_Bonferroni_test <- pairwise.wilcox.test(Input_kruskal_wallis_test$RR, Input_kruskal_wallis_test$D, p.adjust.method = "bonferroni")
print(Post_hoc_Bonferroni_test)
# Kruskal Wallis Teat Use R Software Complete Step By Step
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
