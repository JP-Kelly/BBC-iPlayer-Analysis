# BBC iPlayer Interface Dataset (2018-2021)
*Longitudinal study of content prioritization and UX patterns*

## 📁 Sample Data

This section provides a glimpse into the structure of the anonymized daily snapshots collected for this project. The following is an excerpt from a data file (similar to `iplayer_sample.csv`) showing the types of information captured:

- **Title:** The title of the content item displayed on the iPlayer landing page.
- **Series:** The name of the series, if applicable.
- **Synopsis:** A brief description or summary of the content.
- **URL:** The link to the content on iPlayer.
- **Genre:** The primary genre classification of the content.
- **Category:** Any additional categories or collections the content belongs to (e.g., "New & Trending").
- **Availability:** Information about the content's availability (e.g., "Available for 35 mins").
- **Date:** The date the snapshot was taken (YYYY-MM-DD).
- **Row:** The row number indicating the vertical position on the landing page.
- **Column:** The column number indicating the horizontal position on the landing page.
- **Box_Set:** Indicates if the content is part of a box set (yes/no).
- **Channel:** The BBC channel associated with the content.
- **Box_No:** If part of a box set, the identifier for that box set.
- **Spotlight_Title:** An alternative title if the content was featured in a "spotlight" section.
- **episodeId:** A unique identifier for the episode (if applicable).
- **programmeSeriesId:** A unique identifier for the programme series.
- **is_clip:** Indicates if the item is a short clip (yes/no).
- **is_live:** Indicates if the content is a live broadcast (yes/no).
- **in_watch_list:** Indicates if the item is in the user's watch list (likely a static feature of the scrape).
- **Actual_Genre:** A more granular genre classification.

```csv
Title,Series,Synopsis,URL,Genre,Category,Availability,Date,Row,Column,Box_Set,Channel,Box_No,Spotlight_Title,episodeId,programmeSeriesId,is_clip,is_live,in_watch_list,Actual_Genre
Showtrial,,Rich, unlikable, accused of murder...,[https://www.bbc.co.uk/iplayer/ep6...,Drama,New](https://www.bbc.co.uk/iplayer/ep6...,Drama,New) & Trending,,31/10/2021,0,1,yes,BBC One,0,Showtrial - Ep1,p09xrhp6,p09xrhp8,no,0,0,DRAMA > CRIME
Doctor Who: Flux,The Halloween Apocalypse,The Halloween Apocalypse,Sci-Fi,New & Trending,,31/10/2021,1,1,yes,BBC One,0,Doctor Who: 60th,m000qxj0,m0013jh6,no,0,0,DRAMA > SCIFI & FANTASY
Angels of the Big Bird,,Big Bird and...Reality,[https://www.bbc.co.uk/iplayer/ep7...,Reality,New](https://www.bbc.co.uk/iplayer/ep7...,Reality,New) & Trending,,31/10/2021,2,1,yes,BBC Three,0,Angels of the Big Bird,b07nqpl9,p09qf8bs,no,0,0,ENTERTAINMENT > REALITY
Match of the Day,,30/10/2021: Spurs v Man Utd,Sport,New & Trending,Available for 35 mins,31/10/2021,3,1,no,BBC One,,Match of the Day,m0013zp4,b007bb2j,no,0,0,SPORT > FOOTBALL
The Outlaws,,New episodes: Comedy,[https://www.bbc.co.uk/iplayer/ep6...,Comedy,New](https://www.bbc.co.uk/iplayer/ep6...,Comedy,New) & Trending,,31/10/2021,4,1,yes,BBC One,0,The Outlaws - Ep6,m0013qx9,m0013qxj,no,0,0,COMEDY > COMEDY DRAMA
U Like the Way U Move,,Dancing dating show,[https://www.bbc.co.uk/iplayer/ep9...,Entertainment,New](https://www.bbc.co.uk/iplayer/ep9...,Entertainment,New) & Trending,,31/10/2021,5,1,yes,BBC Three,0,U Like the Way U Move,p09vbhsc,,no,0,0,ENTERTAINMENT > DATING
Bump,,All episodes: Comedy Drama,[https://www.bbc.co.uk/iplayer/ep6...,Comedy](https://www.bbc.co.uk/iplayer/ep6...,Comedy) Drama,New & Trending,,31/10/2021,6,1,yes,BBC One,0,Bump - All Ep,p09rhdc2,p09rhdcq,no,0,0,DRAMA > RELATIONSHIP
Guilt: Series 2,,All episodes: Crime Drama,[https://www.bbc.co.uk/iplayer/s00...,Crime](https://www.bbc.co.uk/iplayer/s00...,Crime) Drama,New & Trending,,31/10/2021,7,1,yes,BBC Scotland,0,Guilt: Series vs,m000yprk,m0013zj4,no,0,0,DRAMA > CRIME
Impeachment: American Crime Story,The scandal...,Crime Drama,New & Trending,,31/10/2021,8,1,yes,BBC Two,0,Impeachment: 00:00,m0013z4z,m0013z4p,no,0,0,DRAMA > BIOGRAPHY
Universe,,All episodes: Science,[https://www.bbc.co.uk/iplayer/ep9...,Science,New](https://www.bbc.co.uk/iplayer/ep9...,Science,New) & Trending,,31/10/2021,9,1,yes,BBC Two,0,Universe - All Ep,p09vbnpd,p09vbnmf,no,0,0,DOCUMENTARY > SCIENCE & NATURE```


## 📌 Data Dictionary

| Header            | Description                                                                    | Example Value(s)                                  |
|-------------------|--------------------------------------------------------------------------------|---------------------------------------------------|
| `Title`           | The title of the content item displayed on the iPlayer landing page.           | Showtrial, Doctor Who: Flux, Match of the Day      |
| `Series`          | The name of the series the content belongs to.                                 | The Halloween Apocalypse,                               |
| `Synopsis`        | A brief summary or description of the content.                               | Rich, unlikable, accused of murder...              |
| `URL`             | The direct link to the content page on BBC iPlayer.                          | [https://www.google.com/search?q=https://www.bbc.co.uk/iplayer/ep6](https://www.google.com/search?q=https://www.bbc.co.uk/iplayer/ep6)...              |
| `Genre`           | The broad genre classification assigned to the content.                        | Drama, Sci-Fi, Sport, Comedy, Entertainment, Reality |
| `Category`        | Any special categories or collections the content is featured in.              | New & Trending, Available for 35 mins             |
| `Availability`    | Information about how long the content is available.                           | , Available for 35 mins                           |
| `Date`            | The date the data snapshot was taken (YYYY-MM-DD).                             | 31/10/2021                                        |
| `Row`             | The row number indicating the vertical position on the landing page.           | 0, 1, 2, ...                                      |
| `Column`          | The column number indicating the horizontal position on the landing page.       | 1                                                 |
| `Box_Set`         | Indicates whether the content is part of a box set.                            | yes, no                                           |
| `Channel`         | The BBC channel that originally broadcast the content.                         | BBC One, BBC Three, BBC Scotland, BBC Two         |
| `Box_No`          | An identifier for the box set if the content belongs to one.                   | 0                                                 |
| `Spotlight_Title` | An alternative title used if the content was in a featured "spotlight" area. | Showtrial - Ep1, Doctor Who: 60th                 |
| `episodeId`       | A unique identifier for a specific episode.                                    | p09xrhp6, m000qxj0                                |
| `programmeSeriesId`| A unique identifier for the entire programme series.                          | p09xrhp8, m0013jh6                                |
| `is_clip`         | Indicates if the content is a short video clip.                                | no                                                |
| `is_live`         | Indicates if the content is a live broadcast at the time of scraping.         | 0 (likely representing no)                        |
| `in_watch_list`   | Indicates if the item was in a user's watch list (likely a static scrape).     | 0 (likely representing no)                        |
| `Actual_Genre`    | A more specific and detailed genre classification.                             | DRAMA > CRIME, DRAMA > SCIFI & FANTASY            |
