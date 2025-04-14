# BBC-iPlayer-Analysis
Longitudinal dataset of BBC iPlayer’s interface (August 2018 - April 2021 of daily scrapes). Used for UX and content analysis, with findings published in peer-reviewed journals. Includes R scripts, [Tableau dashboards](https://public.tableau.com/app/profile/jp.kelly8457/viz/AnAnalysisoftheBBCiPlayer/iPlayerAnalysis), and raw data.

# BBC iPlayer Interface Longitudinal Study  
*A data-driven analysis of the BBC iPlayer landing page, capturing daily snapshots over 2+ years.*  

## 📌 Overview  
**Goal**: Develop a replicable method to document and analyse the iPlayer interface over time, identifying patterns in content prioritisation, UX design, and editorial strategy. The method was also designed to be easily adapted for other VOD services.  
**Key Achievements**:  
- Created the first continuous dataset of iPlayer's landing page (2+ years of daily scrapes).  
- Published findings in [*Critical Studies in Television*](https://journals.sagepub.com/doi/full/10.1177/17496020211024201) (2021) and [*MedieKultur*](https://tidsskrift.dk/mediekultur/article/view/122386) (2021).
- Presented findings and methodology of this project at various conferences, including:
  * Digital Culture Meets Data (University of Brighton, UK, 2017)
  * Public Service Media's Online Strategies (Prague National Film Archive, Czech Rep., 2019)
  * Algorithms in Film and Television (Bilgi University, Türkiye, 2021)
  * Critical Studies in Television 2021 (Edge Hill University, UK, 2021)
  * RIPE@2021 (University of Fribourg, Switzerland, 2021)
  * Critical Studies in Television 2022 (Edge Hill University, UK, 2022)
  * ECREA 2022 (Århus University, Denmarkm 2022)
  * Television Publishing Strategies in an On-Demand Driven Media Culture (Århus University, Denmark, 2023)
  * Media Ecologies (Royal Holloway, UK, 2023)

---

## 🛠️ Methodology  
**Data Collection**:  
- Automated daily scrapes using ParseHub (capturing titles, synopses, row positions, channels).  
- Collected daily snapshots at consistent times (9pm GMT) to account for diurnal variation in content.  

**Data Processing**:  
- Cleaned/combined daily CSV files using [R script](https://figshare.com/articles/software/R_Script_-_Cleaning_BBC_iPlayer_Interface_Data/13296437?file=25619456).  
- Output: Structured dataset for temporal analysis.  

**Analysis & Outputs**:  
1. **Tableau Dashboards**: [Link to Tableau Public](https://public.tableau.com/app/profile/jp.kelly8457/viz/AnAnalysisoftheBBCiPlayer/iPlayerAnalysis)  
   - Visualised trends in content prominence, genre distribution, etc.  
2. **Academic Research**:  
   - Sole-authored, peer-reviewed journal article in [*Critical Studies in Television*](https://journals.sagepub.com/doi/full/10.1177/17496020211024201).  
   - Cross-national comparison with DRTV (Denmark) published in a co-authored article in [*MedieKultur*](https://tidsskrift.dk/mediekultur/article/view/122386).  

---

## 🎯 Key Insights  
1. **Decline in Channel Branding**:  
   - Channel affiliations dropped from near-ubiquitous to negligible over period of one year, indicating iPlayer's pivot toward unbranded content curation.
2. **Consistent Genre Placement**:
   - Heatmap analysis revealed that selected genres (e.g. film and sport) appeared in a higher concentration in selected rows. This indicated a high level of editorial curation and predictable navigation, but a reduction in exposure to diverse content.
3. **The Rise and Fall of "Box Sets"**:
   - Longitudinal analysis revealed that there was a rise and fall in the prominence of "box sets" on BBC iPlayer. This indicated an editorial shift away from pushing similar / same content to a more diverse media diet (more in line with the aims and objectives of public service media).

## Sample Screenshots


- **Genre Heatmap**
  
![Genre Heatmap](https://github.com/user-attachments/assets/84cc2ec6-cade-4494-ac3d-46da7ed69378)


- **Rise and Fall of Box Sets**
  
![Box Sets](https://github.com/user-attachments/assets/1a266b17-7d40-41a7-ade1-f1c990531930)


- **Decline of Branding and Channels**
  
![Channels](https://github.com/user-attachments/assets/ff4953f8-81fe-4a85-a250-9a827dda4d4f)


- **Distribution of Genre**
  
![Genre](https://github.com/user-attachments/assets/242032d5-7fae-4f31-8601-edfe17368121)

---

## 📂 Repository Structure  
