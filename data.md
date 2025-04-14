# BBC iPlayer Interface Dataset (2018-2021)
*Longitudinal study of content prioritization and UX patterns*

## 💾 About the Dataset

This dataset comprises daily snapshots of the BBC iPlayer landing page (2018-2021), providing a longitudinal record of content presentation. The data includes details such as content titles, descriptions, URLs, genre classifications, availability, duration, and positioning on the page. It also captures information related to channel branding and box set inclusion. For a comprehensive explanation of all variables, see the [**Data Dictionary**](#data-dictionary) section.

## 📁 Sample Data

This section provides a glimpse into the structure of the anonymized daily snapshots collected for this project. The following is an excerpt from a data file (similar to `iplayer_sample.csv`) showing the types of information captured:

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
Universe,,All episodes: Science,[https://www.bbc.co.uk/iplayer/ep9...,Science,New](https://www.bbc.co.uk/iplayer/ep9...,Science,New) & Trending,,31/10/2021,9,1,yes,BBC Two,0,Universe - All Ep,p09vbnpd,p09vbnmf,no,0,0,DOCUMENTARY > SCIENCE & NATURE
```

## 📌 Data Dictionary

| Header            | Description                                                                    | Example Value(s)                                  |
|-------------------|--------------------------------------------------------------------------------|---------------------------------------------------|
| `Title`           | The title of the content item displayed on the iPlayer landing page.           | Showtrial, Doctor Who: Flux, Match of the Day      |
| `Series`          | The name of the series the content belongs to.                                 | The Halloween Apocalypse,                               |
| `Synopsis`        | A brief summary or description of the content.                               | Rich, unlikable, accused of murder...              |
| `URL`             | The direct link to the content page on BBC iPlayer.                          | https://www.bbc.co.uk/iplayer/episodes/p09twdp8/showtrial?seriesId=p09twdth |
| `Genre`           | The broad genre classification assigned to the content.                        | Drama, Sci-Fi, Sport, Comedy, Entertainment, Reality |
| `Category`        | Any special categories or collections the content is featured in.              | New & Trending             |
| `Availability`    | Information about how long the content is available.                           | Available for 30 days                           |
| `Duration`        | The duration of the content (in minutes)                                       | 30, 60, 90 ...                                    |
| `Date`            | The date the data snapshot was taken (DD/MM/YYYY).                             | 31/10/2021                                        |
| `Row`             | The row number indicating the vertical position on the landing page.           | 0, 1, 2, ... (0 = header)                                     |
| `Column`          | The column number indicating the horizontal position on the landing page.       | 1, 2, 3, ...                                                 |
| `Box_Set`         | Indicates whether the content is part of a box set.                            | yes, no                                           |
| `Channel`         | The BBC channel that originally broadcast the content.                         | BBC One, BBC Three, BBC Scotland, BBC Two         |
| `Box_Yes`         | An identifier for the box set if the content belongs to one.                   | 0, 1                                                 |
| `Box_No`          | An identifier for the box set if the content doesn't belongs to one.           | 0, 1                                                |
| `Title_Synopsis` | Concatanated column with title + synopsis                                       | Match of the Day -- 30/10/2021: With Spurs v Man Utd      |
| `Pid`       | A unique identifier for a specific programme.                                    | p09xrhp6, m000qxj0                                |
| `episodeID`| A unique identifier for an episode of a programme.                          | p09xrhp8, m0013jh6                                |                       |
| `is_live`         | Indicates if the content is a live broadcast at the time of scraping.         | 0, 1                       |
| `is_live_yes`         | Indicates if the content is a live broadcast at the time of scraping (for counting instances of yes).         | 0, 1                       |
| `is_live_no`         | Indicates if the content is a live broadcast at the time of scraping (for counting instances of no).         | 0, 1                       |
| `Actual_Genre`    | A more specific and detailed genre classification taken from the programme's main page.                             | DRAMA > CRIME, DRAMA > SCIFI & FANTASY            |

