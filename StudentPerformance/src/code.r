capture.output(t_test_BMI_Age, file = "C:\Users\surya\OneDrive\Desktop\siddartha rao PDS\PDS\Assignment-1/results/test_results_BMI_Age.txt")
> t_test_BMI_Frailty <- with(clean_raw_yield_data, t.test(clean_raw_yield_data$BMI  ~ clean_raw_yield_data$Frailty))
> raw_yield_data <- read.csv(""C:/Users/surya/OneDrive/Desktop/siddartha rao PDS/PDS/Assignment-1/data_raw/raw_yield_data.csv")
> write.csv(clean_raw_yield_data, ""C:/Users/surya/OneDrive/Desktop/siddartha rao PDS/PDS/Assignment-1/data_clean/clean_raw_yield_data.csv")
> View(clean_raw_yield_data)
> library(readr)
> StudentsPerformance <- read_csv("C:/Users/surya/OneDrive/Desktop/PDS/StudentPerformance/rawdata/StudentsPerformance.csv")
Rows: 1000 Columns: 8                                                                                                                                                
── Column specification ──────────────────────────────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr (5): gender, race/ethnicity, parental level of education, lunch, test preparation course
dbl (3): math score, reading score, writing score

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> View(StudentsPerformance)
> colnames(StudentsPerformance)
[1] "gender"                      "race/ethnicity"              "parental level of education"
[4] "lunch"                       "test preparation course"     "math score"                 
[7] "reading score"               "writing score"              
> namesOfcolumns <- c("Gender","Race","Parent_Education","Lunch","Test_Prep","Math_Score","Reading_Score","Writing_Score")
> colnames(mydata) <- namesOfcolumns
> colnames(StudentsPerformance) <- namesOfcolumns
> View(StudentsPerformance)
> table(StudentsPerformance$Math_Score)

  0   8  18  19  22  23  24  26  27  28  29  30  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48 
  1   1   1   1   1   1   1   1   2   1   3   2   3   1   2   5   2   4   3   4  10   6   6   5   9   9  11  11  11 
 49  50  51  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77 
 17  15  11  18  24  18  18   9  18  25  32  16  27  35  26  20  36  24  26  26  32  18  26  18  27  25  21  21  24 
 78  79  80  81  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100 
 14  22  17  22  18   8  11  14   8  16  15   6   8   9   6   4   7   2   3   6   3   3   7 
> table(StudentsPerformance$Lunch)

free/reduced     standard 
         355          645 
> table(StudentsPerformance$Parent_Education)

associate's degree  bachelor's degree        high school    master's degree       some college   some high school 
               222                118                196                 59                226                179 
> table(StudentsPerformance$Test_Prep)

completed      none 
      358       642 
> table(StudentsPerformance$Race)

group A group B group C group D group E 
     89     190     319     262     140 
> ggplot(StudentsPerformance,aes(Math_score))+geom_histogram(binwidth=5, color="gray",aes(fill=Gender))
> ggplot(StudentsPerformance,aes(Math_score)) + geom_histogram(binwidth=5, color="gray",aes(fill=Gender))
Error in ggplot(StudentsPerformance, aes(Math_score)) : 
  could not find function "ggplot"
> ggplot(StudentsPerformance, aes(Math_score)) + geom_histogram(binwidth=5, color="gray",aes(fill=Gender))
> install.packages("ggplot")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/surya/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
Warning in install.packages :
  package ‘ggplot’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
> ggplot(StudentsPerformance, aes(Math_score)) + geom_histogram(binwidth=5, color="gray",aes(fill=Gender))
Error in ggplot(StudentsPerformance, aes(Math_score)) : 
  could not find function "ggplot"
> install.packages("ggplot2")

Restarting R session...

> install.packages("ggplot2")
> ggplot(StudentsPerformance, aes(Math_score)) + geom_histogram(binwidth=5, color="gray",aes(fill=Gender))
> library(ggplot2)
> ggplot(StudentsPerformance, aes(Math_score)) + geom_histogram(binwidth=5, color="gray",aes(fill=Gender))
> ggplot(StudentsPerformance, aes(Math_Score)) + geom_histogram(binwidth=5, color="gray",aes(fill=Gender))
> p <- ggplot(StudentsPerformance, ass(Math_Score)) + geom_histogram(binwidth = 5, color="gray",aes(fill+Gender))
Error in ass(Math_Score) : could not find function "ass"
> p <- ggplot(StudentsPerformance, aes(Math_Score)) + geom_histogram(binwidth = 5, color="gray",aes(fill+Gender))
> p <- p + xlab("Math Scores") + ylab("Gender") + ggtitle("Math Scores by Gender")
> p
> p <- ggplot(StudentsPerformance, aes(Math_Score)) + geom_histogram(binwidth = 5, color="gray",aes(fill=Gender))
> p <- p + xlab("Math Scores") + ylab("Gender") + ggtitle("Math Scores by Gender")
> p
> ggplot(StudentsPerformance, aes(x = Race, fill = Gender)) + geom_bar(position = "stack") + ggtitle("Distribution of Students") + ylab("Students") + xlab("Groups")
> ggplot(StudentsPerformance, aes(x = Parent_Education, fill = Gender)) + geom_bar(position = "stack") + ggtitle("Distribution of Students") + ylab("Students") + xlab("Parents Education Qualification")