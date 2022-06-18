# mobility response with papres16
gss_all %>%
  lm(mobility ~ 
       # network variables
       net_college + six_plus +
       # parental socioeconomic status
       papres16 + below_avg_inc + above_avg_inc + pa_college + ma_college + 
       # demographic characteristics
       age + I(age^2) + female + non_white + 
       # educational attainment
       college + 
       # geography
       south + rural + city + diff_city + diff_state +
       # family structure
       one_parent + 
       # interaction terms
       below_avg_inc * college +
       above_avg_inc * college +
       below_avg_inc * net_college +
       above_avg_inc * net_college +
       net_college * six_plus, .) %>%
  summary()

# mobility response without papres16
gss_all %>%
  lm(mobility ~ 
       # network variables
       net_college + six_plus +
       # parental socioeconomic status
       below_avg_inc + above_avg_inc + pa_college + ma_college + 
       # demographic characteristics
       age + I(age^2) + female + non_white + 
       # educational attainment
       college + 
       # geography
       south + rural + city + diff_city + diff_state +
       # family structure
       one_parent + 
       # interaction terms
       below_avg_inc * college +
       above_avg_inc * college +
       below_avg_inc * net_college +
       above_avg_inc * net_college +
       net_college * six_plus, .) %>%
  summary()

# prestige response
gss_all %>%
  lm(prestige ~ 
       # network variables
       net_college + six_plus +
       # parental socioeconomic status
       papres16 + below_avg_inc + above_avg_inc + pa_college + ma_college + 
       # demographic characteristics
       age + I(age^2) + female + non_white + 
       # educational attainment
       college + 
       # geography
       south + rural + city + diff_city + diff_state +
       # family structure
       one_parent + 
       # interaction terms
       below_avg_inc * college +
       above_avg_inc * college +
       below_avg_inc * net_college +
       above_avg_inc * net_college +
       net_college * six_plus, .) %>%
  summary()
