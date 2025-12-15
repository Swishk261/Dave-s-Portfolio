# ============================================================================
# IPL FAN SURVEY DATA ANALYSIS - ENHANCED VERSION
# ============================================================================
# This script analyzes survey data from Indonesian Premier League (IPL) fans
# focusing on brand commitment, attachment, trust, satisfaction, and loyalty
# ============================================================================

# Load Required Libraries ----
library(tidyverse)
library(viridis)      # Professional color palettes
library(RColorBrewer) # Additional color palettes
library(scales)       # Better scale formatting

# Define custom color palettes ----
primary_color <- "#2C5F8D"
secondary_color <- "#E07A5F"
accent_color <- "#3D9970"
palette_5 <- c("#264653", "#2a9d8f", "#e9c46a", "#f4a261", "#e76f51")
palette_gradient <- c("#003f5c", "#58508d", "#bc5090", "#ff6361", "#ffa600")

# ============================================================================
# 1. DATA IMPORT AND PREPARATION
# ============================================================================

# Import data
IPL_Data <- read_csv("IPL_Data.csv")

# Explore data structure
glimpse(IPL_Data)
summary(IPL_Data)

# Rename variables for easier reading
IPL_data2 <- rename(IPL_Data,
                    Provinces_re = "Clusters based on provinces",
                    employment_status = "Job/Employment")

# Filter gender data (Male and Female only)
respondents_gender <- IPL_Data %>%
  select(Gender) %>%
  filter(Gender %in% c("Male", "Female"))

# Extract province data
IPL_provinces <- select(IPL_data2, Provinces_re)

# ============================================================================
# 2. DEMOGRAPHIC VISUALIZATIONS
# ============================================================================

# Gender Distribution ----
gender_summary <- respondents_gender %>%
  count(Gender) %>%
  mutate(percentage = n / sum(n) * 100)
  

ggplot(gender_summary, aes(x = "", y = n, fill = Gender)) +
  geom_bar(stat = "identity", width = 1, color = "white", size = 2) +
  coord_polar("y", start = 0) +
  geom_text(aes(label = paste0(n, "\n", round(percentage, 1), "%")), 
            position = position_stack(vjust = 0.5),
            color = "white", size = 5) +
  labs(title = "Total Number of Respondents from IPL Survey",
       x = NULL, y = NULL, fill = NULL) +
  scale_fill_brewer(palette = "Set2") +
  theme_void() +
  theme(legend.position = "bottom",
        plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
        legend.text = element_text(size = 11))

# Province Distribution ----
province_summary <- IPL_data2 %>%
  count(Provinces_re) %>%
  rename(province = Provinces_re, amount = n)

ggplot(province_summary, aes(x = "", y = amount, fill = province)) +
  geom_bar(stat = "identity", width = 1, color = "white", size = 1.5) +
  coord_polar("y", start = 0) +
  geom_text(aes(label = amount), 
            position = position_stack(vjust = 0.5),
            color = "white", size = 4.5, fontface = "bold") +
  labs(title = "Province Distribution of IPL Fans",
       x = NULL, y = NULL, fill = "Province") +
  scale_fill_brewer(palette = "Set2") +
  theme_void() +
  theme(legend.position = "bottom",
        plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
        legend.text = element_text(size = 10))
# ============================================================================
# 3. BRAND COMMITMENT ANALYSIS
# ============================================================================

# BC Question 2: Importance of IPL to Fans ----
BC2_summary <- IPL_data2 %>%
  count(BC2) %>%
  rename(answer = BC2, count = n)


ggplot(BC2_summary, aes(x = answer, y = count)) +
  geom_bar(stat = "identity", width = 0.6, fill = primary_color, alpha = 0.9) +
  geom_text(aes(label = count), hjust = -0.3, size = 4) +  
  coord_flip() +
  labs(title = "IPL Fan Answers to Brand Commitment",
       subtitle = "Question 2: Importance of IPL to Fans",
       x = "Response Level", y = "Number of Respondents") +
  theme_minimal() +
  theme(plot.title = element_text(size = 14),              
        plot.subtitle = element_text(size = 11, color = "gray40"),
        axis.title = element_text(size = 11),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank())
# BC Question 6: By Employment Status ----
BC6_summary <- IPL_data2 %>%
  group_by(employment_status, BC6) %>%
  summarise(summary = n(), .groups = "drop")

ggplot(BC6_summary, aes(x = employment_status, y = summary, 
                        color = factor(BC6), group = factor(BC6))) +
  geom_point(size = 4, alpha = 0.8) +
  geom_line(alpha = 0.6, size = 1) +
  labs(title = "Brand Commitment Question 6 by Employment Status",
       subtitle = "Response patterns across different employment groups",
       x = "Employment Status", y = "Count", color = "Response") +
  scale_color_viridis_d(option = "plasma") +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        axis.text.x = element_text(angle = 45, hjust = 1, size = 10),
        legend.position = "right")

# BC Question 7: Team Quality Perception by Province ----
summary_BC7 <- IPL_data2 %>%
  group_by(Provinces_re, BC7) %>%
  summarize(summary = n(), .groups = "drop")

ggplot(summary_BC7, aes(x = Provinces_re, y = summary, 
                        color = factor(BC7), shape = factor(BC7))) +
  geom_point(size = 4, alpha = 0.8) +
  labs(title = "Team Quality Perception by Province",
       subtitle = "BC Question 7: How fans rate their team compared to competitors",
       x = "Province", y = "Number of Responses", 
       color = "Rating", shape = "Rating") +
  scale_color_manual(values = palette_gradient) +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        axis.text.x = element_text(angle = 45, hjust = 1, size = 10),
        legend.position = "right")

# BC Question 8: Higher Level Competition ----
summary_BC8 <- IPL_data2 %>%
  count(BC8) %>%
  rename(summary = n)

ggplot(summary_BC8, aes(x = BC8, y = summary)) +
  geom_bar(stat = "identity", width = 0.6, fill = secondary_color, alpha = 0.9) +
  geom_text(aes(label = summary), vjust = -0.5, size = 4.5, fontface = "bold") +
  labs(title = "Brand Commitment Question 8",
       subtitle = "Fan responses to higher level competition",
       x = "Response Level", y = "Number of Respondents") +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# ============================================================================
# 4. BRAND ATTACHMENT ANALYSIS
# ============================================================================

# BA Question 1 ----
BA1_counts <- IPL_Data %>%
  count(BA1) %>%
  mutate(percentage = n / sum(n) * 100) %>%
  arrange(desc(BA1))

# Pie chart
ggplot(BA1_counts, aes(x = "", y = percentage, fill = factor(BA1))) +
  geom_bar(stat = "identity", width = 1, color = "white", size = 1.5) +
  geom_text(aes(label = paste0(round(percentage), "%")), 
            position = position_stack(vjust = 0.5),
            color = "white", size = 4.5, fontface = "bold") +
  coord_polar("y", start = 0) +
  labs(title = "Brand Attachment Question 1 Distribution",
       fill = "Response Level", x = NULL, y = NULL) +
  scale_fill_manual(values = palette_5) +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
        legend.position = "bottom",
        legend.text = element_text(size = 10))

# Bar chart
ggplot(BA1_counts, aes(x = factor(BA1), y = percentage, fill = factor(BA1))) +
  geom_bar(stat = "identity", width = 0.7, alpha = 0.9) +
  geom_text(aes(label = paste0(round(percentage), "%")), 
            vjust = -0.5, color = "black", size = 4.5, fontface = "bold") +
  labs(title = "Brand Attachment Question 1 Responses",
       x = "Response Level", y = "Percentage (%)") +
  scale_fill_manual(values = palette_5) +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(face = "bold", size = 14),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# BA Question 3: Pleasant Sensation ----
BA3_counts <- IPL_Data %>%
  count(BA3) %>%
  mutate(percentage = n / sum(n) * 100) %>%
  arrange(desc(BA3))

ggplot(BA3_counts, aes(x = factor(BA3), y = percentage)) +
  geom_bar(stat = "identity", fill = accent_color, width = 0.7, alpha = 0.9) +
  geom_text(aes(label = paste0(round(percentage), "%")), 
            vjust = -0.5, color = "black", size = 4.5, fontface = "bold") +
  labs(title = "Brand Attachment Question 3",
       subtitle = "Pleasant sensation when thinking of football club",
       x = "Response Level", y = "Percentage (%)") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# BA Question 4 ----
BA4_counts <- IPL_Data %>%
  count(BA4) %>%
  mutate(percentage = n / sum(n) * 100) %>%
  arrange(desc(BA4))

ggplot(BA4_counts, aes(x = "", y = percentage, fill = factor(BA4))) +
  geom_bar(stat = "identity", width = 1, color = "white", size = 1.5) +
  coord_polar("y", start = 0) +
  labs(title = "Brand Attachment Question 4 Distribution",
       fill = "Response Level") +
  scale_fill_manual(values = palette_5) +
  geom_text(aes(label = paste0(round(percentage), "%")), 
            position = position_stack(vjust = 0.5),
            color = "white", size = 4.5, fontface = "bold") +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
        legend.position = "bottom")

# ============================================================================
# 5. BRAND TRUST ANALYSIS
# ============================================================================

# BT Question 1: Trust in Football Club ----
BT1_counts <- IPL_Data %>%
  count(BT1) %>%
  mutate(percentage = n / sum(n) * 100) %>%
  arrange(desc(BT1))

ggplot(BT1_counts, aes(x = factor(BT1), y = percentage, fill = factor(BT1))) +
  geom_bar(stat = "identity", width = 0.7, alpha = 0.9) +
  geom_text(aes(label = paste0(round(percentage), "%")), 
            vjust = -0.5, color = "black", size = 4.5, fontface = "bold") +
  labs(title = "Brand Trust Question 1",
       subtitle = "How much respondents trust their football club",
       x = "Trust Level", y = "Percentage (%)") +
  scale_fill_viridis_d(option = "mako", direction = -1) +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# BT Question 2: Dependence on Football Club ----
BT2_counts <- IPL_Data %>%
  count(BT2) %>%
  mutate(percentage = n / sum(n) * 100) %>%
  arrange(desc(BT2))

ggplot(BT2_counts, aes(x = factor(BT2), y = percentage, fill = factor(BT2))) +
  geom_bar(stat = "identity", width = 0.7, alpha = 0.9) +
  geom_text(aes(label = paste0(round(percentage), "%")), 
            vjust = -0.5, color = "black", size = 4.5, fontface = "bold") +
  labs(title = "Brand Trust Question 2",
       subtitle = "Majority of fans are not dependent on their football club",
       x = "Dependence Level", y = "Percentage (%)") +
  scale_fill_viridis_d(option = "rocket", direction = -1) +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# ============================================================================
# 6. BRAND SATISFACTION ANALYSIS
# ============================================================================

# BS Question 3 ----
Brand_s3 <- IPL_data2 %>%
  group_by(BS3) %>%
  summarise(total = n(), .groups = "drop")

ggplot(Brand_s3, aes(x = factor(BS3), y = total)) +
  geom_bar(stat = "identity", fill = primary_color, alpha = 0.9, width = 0.7) +
  geom_text(aes(label = total), vjust = -0.5, size = 4.5, fontface = "bold") +
  labs(title = "Brand Satisfaction Question 3",
       subtitle = "Overall satisfaction levels",
       x = "Satisfaction Level", y = "Number of Respondents") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# BS Question 4: Club Meets Needs ----
summary_BS4 <- IPL_data2 %>%
  group_by(BS4) %>%
  summarise(summary = n(), .groups = "drop")

ggplot(summary_BS4, aes(x = factor(BS4), y = summary, fill = factor(BS4))) +
  geom_bar(stat = "identity", width = 0.7, alpha = 0.9) +
  geom_text(aes(label = round(summary)), vjust = -0.5, 
            color = "black", size = 4.5, fontface = "bold") +
  labs(title = "Brand Satisfaction Question 4",
       subtitle = "170 out of 258 respondents don't believe club meets their needs",
       x = "Response Level", y = "Number of Respondents") +
  scale_fill_manual(values = palette_gradient) +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# BS Question 5 ----
summary_BS5 <- IPL_data2 %>%
  group_by(BS5) %>%
  summarise(total = n(), .groups = "drop")

ggplot(summary_BS5, aes(x = factor(BS5), y = total, fill = factor(BS5))) +
  geom_bar(stat = "identity", width = 0.7, alpha = 0.9) +
  geom_text(aes(label = round(total)), vjust = -0.5, 
            color = "black", size = 4.5, fontface = "bold") +
  labs(title = "Brand Satisfaction Question 5",
       x = "Response Level", y = "Number of Respondents") +
  scale_fill_viridis_d(option = "turbo") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(face = "bold", size = 14),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# ============================================================================
# 7. BRAND LOYALTY ANALYSIS
# ============================================================================

# BL Question 1: Loyalty Level ----
category_counts <- IPL_Data %>%
  count(BL1)

ggplot(category_counts, aes(x = factor(BL1), y = n)) +
  geom_bar(stat = "identity", fill = accent_color, alpha = 0.9, width = 0.7) +
  geom_text(aes(label = n), vjust = -0.5, size = 4.5, fontface = "bold") +
  labs(title = "Brand Loyalty Question 1",
       subtitle = "Majority of fans are loyal to their football club",
       x = "Loyalty Rating", y = "Number of Votes") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# Mean Values for BL1, BL2, BL3 ----
reduced_data <- IPL_Data %>%
  select(BL1, BL2, BL3)

mean_values <- reduced_data %>%
  summarise(mean_BL1 = mean(BL1, na.rm = TRUE),
            mean_BL2 = mean(BL2, na.rm = TRUE),
            mean_BL3 = mean(BL3, na.rm = TRUE)) %>%
  pivot_longer(cols = starts_with("mean"), 
               names_to = "Variable", 
               values_to = "Mean") %>%
  mutate(Variable = c("BL1: First\nPreference", 
                     "BL2: Recommend\nto Others",
                     "BL3: Would Not\nChange"))

ggplot(mean_values, aes(x = Variable, y = Mean, fill = Variable)) +
  geom_bar(stat = "identity", alpha = 0.9, width = 0.7) +
  geom_text(aes(label = round(Mean, 2)), vjust = -0.5, 
            size = 5, fontface = "bold") +
  geom_hline(yintercept = 3.5, linetype = "dashed", 
             color = "red", size = 1) +
  annotate("text", x = 0.6, y = 3.7, 
           label = "Positive Threshold (3.5)", 
           color = "red", hjust = 0, size = 3.5) +
  labs(title = "Mean Brand Loyalty Scores",
       subtitle = "All scores above 3.5 indicate positive brand loyalty",
       x = "Brand Loyalty Questions", y = "Mean Score") +
  scale_fill_manual(values = c("#2C5F8D", "#3D9970", "#E07A5F")) +
  scale_y_continuous(limits = c(0, 5), expand = c(0, 0)) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(face = "bold", size = 14),
        plot.subtitle = element_text(size = 11, color = "gray40"),
        panel.grid.major.x = element_blank(),
        panel.grid.minor = element_blank())

# BL Question 3: Would Change Club ----
BL3_counts <- IPL_Data %>%
  count(BL3) %>%
  mutate(percentage = n / sum(n) * 100) %>%
  arrange(desc(BL3))

ggplot(BL3_counts, aes(x = "", y = percentage, fill = factor(BL3))) +
  geom_bar(stat = "identity", width = 1, color = "white", size = 1.5) +
  geom_text(aes(label = paste0(round(percentage), "%")), 
            position = position_stack(vjust = 0.5),
            color = "white", size = 5, fontface = "bold") +
  coord_polar("y", start = 0) +
  labs(title = "Brand Loyalty Question 3",
       subtitle = "Vast majority would not change their football club",
       fill = "Response Level", x = NULL, y = NULL) +
  scale_fill_manual(values = palette_5) +
  theme_void() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
        plot.subtitle = element_text(hjust = 0.5, size = 11, color = "gray40"),
        legend.position = "bottom",
        legend.text = element_text(size = 10))

# ============================================================================
# END OF ANALYSIS
# ============================================================================