# Student-Spending-habit-Analysis
 

 
 
Final Report  

 Understanding Student Spending Habits and  
Key Factors Driven Their Preferred Payment Methods  
 


ABSTRACT 
This proposal outlines a comprehensive analysis of student spending habits and their preferred payment methods using a dataset sourced from Kaggle. The dataset comprises information on the spending behavior of 1000 students, including demographic factors such as age, gender, major, year in school, as well as financial attributes like monthly income and financial aid. The primary objectives of this analysis are to investigate the influence of financial attributes on students' choice of payment methods, explore variations in monthly income across different demographic groups, identify factors influencing preferred payment methods for banking services, and assess differences in spending among students across categories and demographic segments. The proposed methodology involves data preparation, exploratory data analysis (EDA), statistical testing, and model building. Techniques such as histograms, box plots, and chi-square tests will be utilized to visualize data distributions, explore correlations, and assess associations between demographic variables and payment methods. Additionally, a classification model will be developed to predict preferred payment methods based on demographic and financial attributes. By leveraging insights gained from this analysis, student banking services companies can optimize marketing strategies, enhance customer satisfaction, improve customer retention, and promote the adoption of alternative payment methods among students. 














TABLE OF CONTENT   
1. Introduction  
2. Data  
3. Methodology  
4. Result and discussion  
5. Implementation  
6. Recommendation  
7. Conclusion. 
  




 














 
INTRODUCTION  
In today's digital age, understanding consumer behavior is paramount for businesses seeking to tailor their products and services effectively. Among various demographic segments, students represent a particularly dynamic and influential consumer group, characterized by unique spending habits and preferences. As such, the analysis of student spending behavior and their preferred payment methods holds significant relevance for industries catering to this demographic, particularly the banking sector and Payment industry. This proposal aims to delve into the intricacies of student spending habits and payment preferences, utilizing a dataset sourced from Kaggle comprising data from 1000 students across diverse demographic backgrounds and academic disciplines. The dataset encompasses a range of variables, including demographic factors such as age, gender, major, and year in school, as well as financial attributes like monthly income and financial aid. The overarching objectives of this analysis are multifaceted. Firstly, we seek to investigate the extent to which financial attributes, such as monthly income and financial aid, influence students' choice of payment methods. Additionally, we aim to ascertain the average monthly income of students and discern whether it varies significantly across different demographic groups. Also, we endeavor to identify the factors that drive students’ preferences for specific payment methods, thereby shedding light on the most prevalent spending types among students and their variations across demographic segments. Exploring these research questions provides valuable insights into the spending behavior of students and offers actionable intelligence for businesses, particularly those in the realm of banking services. Understanding the factors that influence students' payment preferences empowers companies to optimize their marketing efforts, tailor their product offerings, and enhance customer satisfaction. Moreover, predicting students' preferred payment methods enables businesses to develop targeted strategies to bolster customer acquisition, retention, and loyalty, ultimately fostering a mutually beneficial relationship between students and banking service providers. 
 




DATA 
While a universally accepted framework for examining the preferred payment methods of students does not yet exist, a multitude of factors have proven to be valuable in deciphering their expenditure patterns and assessing the impact of financial characteristics on their payment method selection. The dataset utilized in this analysis was obtained from the Kaggle platform (1). The dataset comprises information pertaining to the expenditure patterns of one thousand students, representing a wide range of demographic and academic contexts. With the objective of forecasting student spending habits and preferred payment methods, this analysis considers financial characteristics including financial aid and expenses in various spending categories, in addition to demographic variables including age, gender, major, year of study, and income. Miscellaneous expenses, accommodation, food, transportation, literature and supplies, entertainment, personal care, technology, and health and wellness are all classified as spending categories. Furthermore, each student's preferred payment method is encompassed within the dataset. 
The definition of 17 variances is as below:  
Age: Age of the student (in years) 
Gender: Gender of the student (Male, Female, Non-binary) 
Year in School: Year of study (Freshman, Sophomore, Junior, Senior) 
Major: Field of study or major 
Monthly Income: Monthly income of the student (in dollars) 
Financial Aid: Financial aid received by the student (in dollars) 
Tuition: Expenses for tuition (in dollars) 
Housing: Expenses for housing (in dollars) 
Food: Expenses for food (in dollars) 
Transportation: Expenses for transportation (in dollars) 
Books & Supplies: Expenses for books and supplies (in dollars) 
Entertainment: Expenses for entertainment (in dollars) 
Personal Care: Expenses for personal care items (in dollars) 
Technology: Expenses for technology (in dollars) 
Health & Wellness: Expenses for health and wellness (in dollars) 
Miscellaneous: Miscellaneous expenses (in dollars) 
Preferred Payment Method: Preferred payment method (Cash, Credit/Debit Card, Mobile Payment App) 
 






METHODOLOGY AND TECHNIQUE 
Data Preparation and cleaning:  
Standardize column names, data types, and formats. Checking for missing values and handle them appropriately to ensure consistency and completeness of all relevant variables 
Variable selection to identify relevant variables and their purpose in answering the research question 
Summary descriptive statistics (mean, standard deviation) and value counts for relevant column 
Exploratory Data Analysis: 
 Conduct EDA to visualize the distribution of gender, major, age and payment methods across different demographic groups (for example across majors and academic years), spending categories different demographic groups (for example tuition distribution across majors and academic years). Plan to use plots such as bar charts and pie charts. 
Use heatmaps to identify correlations between demographic or spending variables and preferred payment methods 
Based on the correlations between spending variables, conduct EDA to visualize the distribution of significant correlations variables and preferred payment method. 
Statistical Test 
Perform a chi-square test of independence to assess whether there is a significant association between demographic variables (e.g., gender, year in school) and preferred payment methods. 
Prediction Model Building 
Build a classification model and train the model to predict the preferred payment method based on demographic and financial attributes 
Model accuracy evaluation. 
Feature importance analysis. 
 
 
RESULTS 
Demographic analysis 

 
The Dataset shows a relatively balanced distribution between males, females, and non-binary students which can allow for meaningful comparison of spending habits and payment references. 

 
Some majors are more represented than others, with certain fields like Biology and Economics having higher counts. 

 
The dataset contains a relatively balanced distribution across academic years. However, seniors and freshman have slightly higher representation compared to other years. 
 

 
There is considerable variation in preferred payment methods across different majors. Students in Economics and Biology tend to prefer card payments while engineering and psychology students prefer mobile app payments. Only computer science students prefer cash but not significantly different. 
Income and Spending analysis 
Income bracket analysis: students are grouped into 2 income brackets Medium (500 –1000) and High (1000-2000) which will help visualize how income level influences the choice of payment methods 

 
The Dataset shows a relatively balanced distribution between income levels of students.  

 
In general, cash is used less frequently on both income levels. Card is the most preferred method of payment for medium income while mobile apps are dominant in high income. 

 
Similarities: 
Across all payment methods and majors, the median income values are relatively consistent, ranging between 1100 and 1200 dollars. 
The Interquartile Range (IQR), representing the 25th to 75th percentiles, is also consistent across most majors and payment methods, spanning roughly 900 to 1400 dollars. 
Whiskers generally extend from around 800 to 1500 dollars for most combinations, indicating a similar range of income distribution across the majors and payment methods. 
Differences: 
Computer Science: 
Has a slightly lower median income (around 1100 dollars) compared to other majors for all payment methods. 
Whiskers for Computer Science generally extend from 800 to 1400 dollars, showing a slightly narrower range than other majors. 
Psychology: 
Exhibits a higher IQR and median income across all payment methods, particularly with Credit/Debit Card usage. 
The median income for Psychology students using Credit/Debit Cards is around 1250 dollars, with whiskers extending from 800 to 1500 dollars. 
Biology, Economics, and Engineering: 
Median income values are generally consistent across these three majors, with medians around 1200 dollars for all payment methods. 
The IQRs are similar, spanning 1000 to 1400 dollars. 

- Similarities: 
Across all payment methods and majors, median housing values are relatively consistent, ranging between 700 and 800 dollars. 
The Interquartile Range (IQR), representing the 25th to 75th percentiles, is also consistent across most majors and payment methods, spanning roughly 600 to 900 dollars. 
Whiskers generally extend from around 500 to 1000 dollars for most combinations, indicating a similar range of housing expenditure distribution across majors and payment methods. 
Differences: 
Computer Science: 
Has a slightly lower median housing expenditure (around 650-700 dollars) compared to other majors for all payment methods. 
Whiskers for Computer Science generally extend from 500 to 850 dollars, showing a narrower range compared to other majors. 
IQR remains consistent across all payment methods, spanning around 600 to 800 dollars. 
Psychology: 
Exhibits a higher median housing expenditure across all payment methods, especially with Credit/Debit Card usage and Mobile Payment Apps. 
The median housing expenditure for Psychology students using Credit/Debit Cards is around 800 dollars, with whiskers extending from 600 to 1000 dollars. 
The IQR is also broader for Psychology compared to other majors, spanning 700 to 900 dollars. 
Biology, Economics, and Engineering: 
Median housing values are generally consistent across these three majors, with medians around 750 dollars for all payment methods. 
IQRs are similar, ranging from 650 to 900 dollars. 
Biology majors using Cash have a slightly higher median expenditure, around 800 dollars. 

Similarities: 
Across all payment methods and majors, median food spending values are relatively consistent, ranging between 200 and 300 dollars. 
The Interquartile Range (IQR) spans roughly 200 to 350 dollars across most majors and payment methods. 
Whiskers generally extend from around 150 to 400 dollars, indicating similar ranges of food expenditure across majors and payment methods. 
Differences: 
Computer Science: 
Has a slightly lower median food expenditure (around 250 dollars) compared to other majors for all payment methods. 
Whiskers for Computer Science extend from 150 to 350 dollars. 
Psychology: 
Exhibits a higher median food expenditure across all payment methods, especially with Mobile Payment Apps. 
The median food expenditure for Psychology students using Mobile Payment Apps is around 300 dollars. 
Biology, Economics, and Engineering: 
Median food values are consistent across these majors, with medians around 275 to 300 dollars. 
IQRs are similar, ranging from 200 to 350 dollars. 

Similarities: 
Across all payment methods and majors, median transportation spending values are relatively consistent, ranging between 100 and 150 dollars. 
The Interquartile Range (IQR) spans roughly 100 to 170 dollars across most majors and payment methods. 
Whiskers generally extend from around 50 to 200 dollars, indicating similar ranges of transportation expenditure across majors and payment methods. 
Differences: 
Computer Science: 
Has a slightly lower median transportation expenditure (around 100-120 dollars) compared to other majors for all payment methods. 
Whiskers for Computer Science extend from 50 to 180 dollars. 
Psychology: 
Exhibits a higher median transportation expenditure across all payment methods, especially with Mobile Payment Apps. 
The median transportation expenditure for Psychology students using Mobile Payment Apps is around 140 dollars. 
Biology, Economics, and Engineering: 
Median transportation values are consistent across these majors, with medians around 130-150 dollars. 
IQRs are similar, ranging from 100 to 170 dollars. 

 
 
Similarities: 
Across all payment methods and years in school, median monthly income values are generally consistent, ranging between 1000 and 1200 dollars. 
The Interquartile Range (IQR) spans roughly 900 to 1300 dollars across most groups and payment methods. 
Whiskers generally extend from around 700 to 1500 dollars, indicating similar ranges of monthly income distribution across years and payment methods. 
Differences: 
Freshman: 
Median income is relatively higher for Freshmen using Credit/Debit Cards and Cash (around 1200 dollars). 
Whiskers for Freshmen extend from 700 to 1500 dollars. 
Juniors: 
Have a slightly lower median income (around 1000 dollars) compared to other groups for all payment methods. 
Whiskers for Juniors extend from 700 to 1300 dollars. 
Seniors: 
Show a broader IQR, particularly for Cash and Mobile Payment Apps, indicating wider income distribution. 
Median income for Seniors using Credit/Debit Cards is around 1100 dollars. 
Sophomores: 
Exhibit higher variability, especially with Credit/Debit Cards. 
The median income for Sophomores using Credit/Debit Cards is around 1000 dollars, with whiskers extending from 700 to 1400 dollars. 
 
 

 
Similarities: 
Across all payment methods and years in school, median housing values are generally consistent, ranging between 700 and 800 dollars. 
The Interquartile Range (IQR) spans roughly 600 to 900 dollars across most groups and payment methods. 
Whiskers generally extend from around 500 to 1000 dollars, indicating similar ranges of housing expenditure across years and payment methods. 
Differences: 
Freshmen: 
Median housing expenditure is relatively higher for Freshmen using Cash and Credit/Debit Cards (around 800 dollars). 
Whiskers for Freshmen extend from 500 to 1000 dollars. 
Juniors: 
Have a slightly lower median housing expenditure (around 700 dollars) compared to other groups for all payment methods. 
Whiskers for Juniors extend from 500 to 900 dollars. 
Seniors: 
Show a broader IQR, particularly for Cash and Mobile Payment Apps, indicating wider expenditure distribution. 
Median housing expenditure for Seniors using Mobile Payment Apps is around 800 dollars. 
Sophomores: 
Exhibit higher variability, especially with Mobile Payment Apps. 
The median housing expenditure for Sophomores using Mobile Payment Apps is around 700 dollars, with whiskers extending from 500 to 1000 dollars. 
 

 
Similarities: 
Across all payment methods and years in school, median transportation spending values are generally consistent, ranging between 100 and 150 dollars. 
The Interquartile Range (IQR) spans roughly 100 to 170 dollars across most groups and payment methods. 
Whiskers generally extend from around 50 to 200 dollars, indicating similar ranges of transportation expenditure across years and payment methods. 
Differences: 
Freshmen: 
Median transportation expenditure is higher for Freshmen using Cash (around 150 dollars). 
Whiskers for Freshmen extend from 50 to 200 dollars. 
Juniors: 
Have a slightly lower median transportation expenditure (around 100-120 dollars) compared to other groups for all payment methods. 
Whiskers for Juniors extend from 50 to 180 dollars. 
Seniors: 
Show a broader IQR, particularly for Credit/Debit Cards and Cash, indicating wider expenditure distribution. 
Median transportation expenditure for Seniors using Credit/Debit Cards is around 150 dollars. 
Sophomores: 
Exhibit higher variability, especially with Mobile Payment Apps. 
The median transportation expenditure for Sophomores using Mobile Payment Apps is around 140 dollars, with whiskers extending from 50 to 200 dollars. 

Similarities: 
Across all payment methods and years in school, median food spending values are relatively consistent, ranging between 250 and 300 dollars. 
The Interquartile Range (IQR) spans roughly 200 to 350 dollars across most groups and payment methods. 
Whiskers generally extend from around 100 to 400 dollars, indicating similar ranges of food expenditure across years and payment methods. 
Differences: 
Freshmen: 
Median food expenditure is higher for Freshmen using Cash (around 300 dollars). 
Whiskers for Freshmen extend from 100 to 400 dollars. 
Juniors: 
Have a slightly lower median food expenditure (around 250 dollars) compared to other groups for all payment methods. 
Whiskers for Juniors extend from 100 to 350 dollars. 
Seniors: 
Show a broader IQR, particularly for Credit/Debit Cards and Cash, indicating wider expenditure distribution. 
Median food expenditure for Seniors using Mobile Payment Apps is around 300 dollars. 
Sophomores: 
Exhibit higher variability, especially with Mobile Payment Apps. 
The median food expenditure for Sophomores using Mobile Payment Apps is around 250 dollars, with whiskers extending from 150 to 400 dollars. 
Statistical analysis 
The Chi-Square Test is conducted for all category variables (gender, years in school, major, and preferred payment method), which shows no relationship between those variables.  
Prediction Model 
Both Random Forest and Naive Bayes models have shown relatively low accuracy when predicting students preferred payment methods using “preferred_payment_method’’ as the target and all other demographic and spending attributes as the predictors. 

 
The accuracy of the Naive Bayes model is 45% while the performance of Random Forest model is worse at 38% . 
 
 
 






















  
DISCUSSION 
Spending attributes and payment methods: 
Monthly Income: 
Higher income students tend to prefer Mobile Payment Apps, while those with moderate incomes lean towards Credit/Debit Cards. 
Cash usage is generally less frequent across all income levels. 
Financial Aid: 
Although not directly linked to payment preferences in the analysis, financial aid could indirectly influence choices by providing students with varying levels of disposable income. 
Housing:  
Students with higher housing expenditures tend to prefer Mobile Payment Apps. 
Students with moderate housing expenditures prefer Credit/Debit Cards. 
Insight:  
Banks/Universities should consider income-specific marketing campaigns to promote suitable payment methods. 
Banks/Universities should offer specialized housing-related financial products for Computer Science students with lower expenditures. 
Banks/Universities can provide tailored budgeting tools for students with varying housing expenses. 
Banks/Universities should promote credit/debit cards to students with higher transportation costs. 
Banks/Universities should offer travel rewards programs to encourage card usage among students. 
Banks/Universities should focus on mobile payment solutions and offer food-related rewards programs for students with high food expenses. 
Average Monthly Income Variability: 
Major: 
Students majoring in Computer Science have a relatively lower median income (around 1100 dollars). 
Psychology students have the highest median income (around 1250 dollars). 
Year in School: 
Freshmen have a higher median income (around 1200 dollars), while Juniors earn slightly less (around 1000 dollars). 
Insight: Banks can develop specialized financial products for majors with lower incomes, such as Computer Science, to meet their unique needs. 
Most Common Spending Type: 
Overall: 
Food is the most significant spending type for students, with a median expenditure of around 250-300 dollars. 
Variation by Demography: 
Major: 
Psychology students spend more on food (around 300 dollars), while Computer Science students spend less (around 250 dollars). 
Year in School: 
Freshmen have the highest median food spending (around 300 dollars). 
Insight: Merchants and Payment Providers should consider partnering with food vendors to offer discounts and rewards tailored to students' spending behavior. 
Differences in Spending Across Demographic Groups: 
Housing: 
Computer Science students have lower median housing expenditures (around 650-700 dollars). 
Psychology students spend the most on housing (around 800 dollars). 
Transportation: 
Freshmen have the highest transportation spending (around 150 dollars). 
Insight: Banks an offer specialized financial management tools like budgeting apps for students in need of managing housing and transportation expenses effectively. 
Preferred Payment Methods Across Demographic Groups: 
Major: 
Economics and Biology students prefer Credit/Debit Cards. 
Engineering and Psychology students favor Mobile Payment Apps. 
Year in School: 
Freshmen prefer Credit/Debit Cards, while Seniors and Juniors opt for Mobile Payment Apps. 
Insight: Banks should tailor product offerings and marketing strategies according to the unique preferences of each group. 
Predictability of Preferred Payment Methods: 
Model Accuracy: 
Naive Bayes Model: 45% accuracy. 
Random Forest Model: 38% accuracy. 
Insight: Demographic variables alone are not sufficient predictors of payment preferences. Other factors like lifestyle and personal attitudes towards finance likely play a crucial role. 
 
 




















  
IMPLEMENTATION 
The insights gained from this analysis present valuable opportunities for banking institutions and financial service providers to better cater to the diverse needs and preferences of the student population. We have several ideas that should be implemented to strengthen the position in the student market, foster customer loyalty, and attract new customers. 
Firstly, developing targeted marketing campaigns tailored to specific demographic groups and their preferred payment methods is crucial. This involves promoting credit/debit card usage among majors like Economics and Biology while focusing on increasing mobile payment app adoption among Engineering and Psychology students. Secondly, offering specialized financial products and services aligned with students' income levels and spending patterns can enhance customer satisfaction. For instance, developing budgeting tools and housing-related financial solutions for Computer Science students with lower housing expenditures. Additionally, providing customized offerings for majors with relatively lower incomes, such as Computer Science, can address their specific financial needs. Thirdly, partnering with relevant merchants, particularly food vendors and transportation services, can facilitate the development of rewards and discount programs tailored to students' spending behavior. For example, implementing food-related rewards programs for Psychology majors, who typically have higher food expenditures and travel rewards for students with significant transportation costs. 
Furthermore, implementing financial education and literacy initiatives is essential to equip students with effective money management and responsible spending habits. This can be achieved through workshops, seminars, or online resources specifically designed for the student demographic. Lastly, enhancing the integration of mobile payment apps and services across various merchants and service providers is crucial to cater to the preferences of Engineering, Psychology, and Senior students, who favor mobile payment methods. 
 


RECOMMENDATION 
The research concept centers around the study of student spending habits and the key factors driving their preferred payment methods. The dataset shows no significant relationship between target response and predictor aims to explore the factors that lead different types of students to choose different payment methods. However, to ensure the long-term success of these implementations and foster customer loyalty, banks and payment providers should consider to following recommendations.  While continuing to conduct regular data collection and analysis to track changes in student spending habits, income levels, and payment preferences is important, banks should also collaborate with universities, student organizations, and other stakeholders to gain deeper insights into student lifestyles, attitudes towards finance, and evolving payment preferences. This will enable banks and payment providers to adapt their products and services accordingly and ensure that data is collected correctly. 
Income level plays a crucial role in shaping students' payment preferences. Therefore, we recommend that banks and payment providers consider income-specific marketing campaigns to promote suitable payment methods. For students with higher income levels, the focus should be on promoting the adoption of mobile payment apps through targeted marketing efforts. Conversely, for students with moderate income levels, marketing campaigns should emphasize the benefits of credit/debit card usage.  Students with higher transportation costs represent a distinct segment that requires specialized offerings. To cater to their needs, banks should promote credit/debit cards through targeted marketing campaigns, highlighting travel rewards and benefits. Additionally, offering specialized financial management tools, such as budgeting apps, can assist these students in effectively managing their transportation expenses.  For students with high food expenses, a comprehensive approach is recommended. Banks should focus on promoting mobile payment solutions through enhanced integration with food vendors and targeted marketing efforts. Furthermore, offering food-related rewards programs in collaboration with food vendors can incentivize students to adopt these payment methods, aligning with their spending behavior. Partnering with food vendors to offer discounts and rewards tailored to students' spending patterns can further enhance customer satisfaction and loyalty. 
Effective management of housing and transportation expenses is a common challenge faced by many students. To support this segment, banks should provide specialized financial management tools, such as budgeting apps, that cater specifically to tracking and optimizing these expenses. Additionally, offering personalized financial advisory services, including one-on-one consultations or AI-powered chatbots, can assist students in developing strategies for managing these expenses effectively. 
Student spending habits and preferences are subject to change over time. Therefore, it is crucial for banks and payment providers to remain adaptive and responsive to emerging trends. This can be achieved by regularly reviewing and analyzing data on student spending patterns, income levels, and payment preferences, enabling the identification of new trends and the adaptation of offerings accordingly. Furthermore, fostering collaborative partnerships with universities, student organizations, and other stakeholders can provide valuable insights into evolving student lifestyles and financial needs, facilitating the development of tailored solutions. By implementing these recommendations, banks and payment providers can better cater to the unique needs and preferences of the student demographic, fostering customer satisfaction, loyalty, and long-term relationships while contributing to responsible financial education and practices. However, firms should keep in mind that consumer behavior might change in time to time especially students of different generations so they should investigate consumer behavior always and adapt the products and services to serve them as per the customer's current requirements. Last but not least, this study is useful for academics where the current study could serve as a reference and may provide some guides for future researchers who would like to study about the same topic. 
 
 
 
 
 
 CONCLUSION 
Through an in-depth analysis of student spending habits and preferred payment methods, this study has provided valuable insights into the dynamic landscape of student consumer behavior. By leveraging a dataset encompassing demographic variables and financial attributes, we have unraveled significant correlations and variations, shedding light on the factors influencing payment preferences among students from diverse backgrounds. 
Our findings underscore the importance of tailored strategies in the banking and financial services sector to effectively cater to the unique needs and preferences of different student segments. From majors to academic years and income levels, demographic nuances play a pivotal role in shaping spending patterns and payment method preferences. The observed trends, such as the prevalence of card payments in certain majors and the dominance of mobile app payments among others, highlight the necessity for customized product offerings and targeted marketing approaches. 
Moreover, the study advocates for proactive engagement with students through financial education initiatives and strategic partnerships with educational institutions and vendors. By empowering students with the knowledge and tools to manage their finances effectively, banks can foster long-term relationships and promote responsible financial habits among the student population. 
In essence, the recommendations derived from this analysis serve as a roadmap for banking institutions and financial service providers to navigate the intricacies of the student market successfully. By aligning their strategies with the identified preferences and behaviors of students, organizations can not only enhance customer satisfaction and loyalty but also seize untapped opportunities for growth and innovation in the evolving landscape of student banking services. 
 
 




