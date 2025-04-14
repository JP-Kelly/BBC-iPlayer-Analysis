# BBC iPlayer Longitudinal Interface Analysis (2018-2021)  
*The first continuous dataset of iPlayer's landing page, with peer-reviewed findings on content prioritisation and UX trends.*  

📊 [Tableau Dashboards](https://public.tableau.com/app/profile/jp.kelly8457/viz/AnAnalysisoftheBBCiPlayer/iPlayerAnalysis)  
📝 [Published Papers](https://github.com/JP-Kelly/BBC-iPlayer-Analysis/blob/main/publications.md)  
🛠️ [R Script](https://figshare.com/articles/software/R_Script_-_Cleaning_BBC_iPlayer_Interface_Data/13296437)   

---

## 📌 Overview  
**Goal**: Develop a replicable method to document and analyse the iPlayer interface over time, identifying patterns in content prioritisation, UX design, and editorial strategy. The method was also designed to be easily adapted for other VOD services.  

**Key Achievements**:  
- Created the first continuous dataset of iPlayer's landing page (2+ years of daily scrapes).  
- Published findings in [*Critical Studies in Television*](https://journals.sagepub.com/doi/full/10.1177/17496020211024201) (2021) and [*MedieKultur*](https://tidsskrift.dk/mediekultur/article/view/122386) (2021).  
- Presented at 8 international conferences (2017-2023), including ECREA 2022 (Århus, Denmark), RIPE@2021 (Fribourg, Switzerland), and Critical Studies in Television (Edge Hill, UK).  

<details>
<summary><b>Complete Conference List</b> (click to expand / collapse)</summary>   

- Digital Culture Meets Data (University of Brighton, UK, 2017)  
- Public Service Media's Online Strategies (Prague National Film Archive, Czech Rep., 2019)  
- Algorithms in Film and Television (Bilgi University, Türkiye, 2021)  
- Critical Studies in Television 2021 (Edge Hill University, UK, 2021)  
- RIPE@2021 (University of Fribourg, Switzerland, 2021)  
- Critical Studies in Television 2022 (Edge Hill University, UK, 2022)  
- ECREA 2022 (Århus University, Denmark, 2022)  
- Television Publishing Strategies in an On-Demand Driven Media Culture (Århus University, Denmark, 2023)  
- Media Ecologies (Royal Holloway, UK, 2023)  
</details>


## 🛠️ Methodology  
**Data Collection**:  
- Automated daily scrapes using [ParseHub](https://www.parsehub.com/) (capturing a wide range of data points including: titles, synopses, row and column positions, channels).  
- Collected daily snapshots at consistent times (9pm GMT) to account for diurnal variation in content.  

**Data Processing**:  
- Cleaned/combined daily CSV files using [R script](https://figshare.com/articles/software/R_Script_-_Cleaning_BBC_iPlayer_Interface_Data/13296437).  
- Output: Structured dataset for temporal analysis.  

**Analysis & Outputs**:  
1. **Tableau Dashboards**: [Link to Tableau Public](https://public.tableau.com/app/profile/jp.kelly8457/viz/AnAnalysisoftheBBCiPlayer/iPlayerAnalysis)  
2. **Academic Research**:  
   - [*Critical Studies in Television*](https://journals.sagepub.com/doi/full/10.1177/17496020211024201) (sole-authored)  
   - [*MedieKultur*](https://tidsskrift.dk/mediekultur/article/view/122386) (co-authored cross-national study)  

---

## 🎯 Key Insights  
1. **Decline in Channel Branding**:  
   Channel affiliations dropped from near-ubiquitous to negligible over the sample data (2+ years), indicating iPlayer's pivot toward a more platform agnostic model of unbranded content curation.  

2. **Consistent Genre Placement**:  
   Heatmap analysis revealed that selected genres (e.g., film and sport) appeared in a higher concentration in selected rows. This indicated editorial curation and predictable navigation, but reduced exposure to diverse content.  

3. **The Rise and Fall of "Box Sets"**:  
   Longitudinal analysis showed a peak and decline in the prominence of "box sets," suggesting an editorial shift toward a more diverse content mix (aligning more closely with core public service values).  

---

## 📸 Example Visualisations  

| [![Genre Heatmap](https://github.com/user-attachments/assets/84cc2ec6-cade-4494-ac3d-46da7ed69378)](https://public.tableau.com/app/profile/jp.kelly8457/viz/AnAnalysisoftheBBCiPlayer/iPlayerAnalysis) | [![Box Sets](https://github.com/user-attachments/assets/1a266b17-7d40-41a7-ade1-f1c990531930)](https://public.tableau.com/app/profile/jp.kelly8457/viz/AnAnalysisoftheBBCiPlayer/iPlayerAnalysis) |  
|:---:|:---:|  
| *Genre position consistency* | *Box set prominence trend* |  

[**Explore all visualizations →**](https://public.tableau.com/app/profile/jp.kelly8457/viz/AnAnalysisoftheBBCiPlayer/iPlayerAnalysis)  

---


## 📂 Repository Structure  
