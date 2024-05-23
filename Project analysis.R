Data = read.csv('student_spending.csv')
View(Data)
str(Data)
sum(is.na(Data))
mean(Data$monthly_income)
mean(Data$financial_aid)
library(esquisse)
esquisser()
library(ggplot2)
#Distribution by gender

ggplot(Data, aes(x = gender)) +
  geom_bar(fill = "skyblue") +
  theme_minimal() +
  labs(title = "Distribution of Gender", x = "Gender", y = "Count")

#Distribution by major

ggplot(Data, aes(x = major)) +
  geom_bar(fill = "skyblue") +
  theme_minimal() +
  labs(title = "Distribution of Major", x = "Major", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#Distribution by year in school
ggplot(Data, aes(x = year_in_school)) +
  geom_bar(fill = "skyblue") +
  theme_minimal() +
  labs(title = "Distribution of Year in School", x = "Year in School", y = "Count")

# Distribution of Spending Categories by Major
ggplot(Data, aes(x = major, fill = preferred_payment_method)) +
  geom_bar(position = "dodge") +
  theme_minimal() +
  labs(title = "Distribution of Preferred Payment Methods by Major", x = "Major", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Convert Monthly Income to Categorical (Binning) BIS471 class reference

Data$income_bracket <- cut(Data$monthly_income, breaks = c(-Inf, 500, 1000, 2000, Inf), 
                           labels = c("Low", "Medium", "High", "Very High"))

ggplot(Data, aes(x = income_bracket)) +
  geom_bar(fill = "skyblue") +
  theme_minimal() +
  labs(title = "Distribution of Monthly Income Brackets", x = "Income Bracket", y = "Count")
library(dplyr)
library(magrittr)
#reference from Stakflow and ChatGPT to group by the income bracket on preferred payment method

income_payment <- Data %>%
  group_by(income_bracket, preferred_payment_method) %>%
  summarise(count = n()) %>%
  mutate(percentage = round((count / sum(count)) * 100, 2))
print(income_payment)

ggplot(income_payment, aes(x = income_bracket, y = percentage, fill = preferred_payment_method)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme_minimal() +
  labs(title = "Payment Methods Across Monthly Income", x = "Income Bracket", y = "Percentage (%)")


# Distribution of Students with/without Financial Aid
ggplot(Data, aes(x = financial_aid)) +
  geom_bar(fill = "blue") +
  theme_minimal() +
  labs(title = "Distribution of Students Receiving Financial Aid", x = "Financial Aid", y = "Count")


# Box Plot of Spending on Tuition Fees by Major
ggplot(Data, aes(x = major, y = tuition, fill = major)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Tuition Fees Spending by Major", x = "Major", y = "Tuition Fees") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Box Plot of Spending on Rent by Year in School
ggplot(Data, aes(x = year_in_school, y = housing, fill = year_in_school)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Rent Spending by Year in School", x = "Year in School", y = "Housing")

# box Plot of Groceries Spending by Major
ggplot(Data, aes(x = major, y = food, fill = major)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Groceries Spending by Major", x = "Major", y = "food") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Violin Plot of Entertainment Spending by Year in School
ggplot(Data, aes(x = year_in_school, y = entertainment, fill = year_in_school)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Entertainment Spending by Year in School", x = "Year in School", y = "Entertainment")
ggplot(Data, aes(x = major, y = entertainment, fill = major)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Entertainment Spending by Major", x = "Major", y = "Entertainment")


# Select only spending-related columns
spending_vars <- Data[,6:17]
spending_corr <- cor(spending_vars)

# Correlation Heatmap
install.packages("corrplot")
library(corrplot)
corrplot::corrplot(spending_corr, method = "color", addCoef.col = "black", tl.cex = 0.8)
#reference from Stackflow for the easiest way to build heatmap

#Chi-square test for categorical variable

tbl1 = table(Data$gender, Data$preferred_payment_method)
chisq.test(tbl1)

# Ho: preferred payment method and Gender are not related
# Ha: preferred payment method is not independent by gender

tbl2 = table(Data$age, Data$preferred_payment_method)
chisq.test(tbl2)
#Ho: preferred payment method and age are not related
# Ha: preferred payment method is not independent by age

chisq_test2 <- table(Data$year_in_school, Data$preferred_payment_method)
chisq.test(chisq_test2)

#Ho: preferred payment method and year in school are not related
# Ha: preferred payment method is not independent by year in school

chisq_test <- chisq.test(table(data$major, data$preferred_payment_method))
print(chisq_test)

#Ho: preferred payment method and major are not related
# Ha: preferred payment method is not independent by major


a= aggregate(monthly_income ~ preferred_payment_method + major, data = Data, FUN = mean)
esquisser()
mean_by_gender = aggregate(tuition+housing+food+transportation +books_supplies
                           +entertainment+personal_care+technology+health_wellness
                           +miscellaneous~gender, data = Data, FUN = mean)
mean_by_gender

#prediction model buidling

set.seed(345)
training_prop = 0.75
training_rows = sample(nrow(Data), nrow(Data)*training_prop)
train = Data[training_rows, ]
test = Data[-training_rows, ]

library(randomForest)

set.seed(345)
mod = randomForest(factor(preferred_payment_method)~.-income_bracket+X, data = train, ntree=5000)
mod
#accuracy = 1-62% =38%
library(e1071)
nb_mod = naiveBayes(preferred_payment_method~.-income_bracket+X, data=train)
nb_mod
prediction_NB= predict(nb_mod, train)
accuracy_nb=mean(train$preferred_payment_method==prediction_NB)
#accuracy = 45% with naive baye
accuracy_nb
