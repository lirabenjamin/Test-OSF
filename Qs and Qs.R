library(tidyverse)
library(gt)
w = 6
questions = paste0("~/Downloads/questions",w,".csv")
quotes = paste0("~/Downloads/quotes",w,".csv")

#Quotes
read_csv(quotes) %>% 
  filter(!is.na(quote)) %>% 
  group_by(Column1) %>% 
  mutate(n = n()) %>% 
  arrange(-n) %>% 
  select(-n) %>% 
  mutate(` ` = "") %>% 
  select(` `,everything()) %>% 
  gt()

#Questions
read_csv(questions) %>% 
  filter(!is.na(questions)) %>% 
  group_by(Column1) %>% 
  mutate(n = n()) %>% 
  arrange(-n) %>% 
  select(-n) %>% 
  mutate(` ` = "") %>% 
  select(` `,everything()) %>% 
  gt()
