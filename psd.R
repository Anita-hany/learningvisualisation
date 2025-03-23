library(openintro)
glimpse(loans_full_schema)
loans <- loans_full_schema %>%
  select(loan_amount, interest_rate, term, grade, state, annual_income, homeownership, debt_to_income)
glimpse(loans)
ggplot(loans, aes(x = loan_amount, fill = homeownership))+
  geom_histogram(binwidth = 5000,
  labs(
    x = "Loan amount ($)",
    y = "Frequency",
    title = "Amounts of Lending Club loans"
  ) +
    facet_wrap(~ homeownership, nrow = 3)
  
#density plot
ggplot(loans, aes(x = loan_amount)) +
  geom_density()

#adjust 0.5
ggplot(loans, aes(x = loan_amount)) +
  geom_density(adjust = 2)
