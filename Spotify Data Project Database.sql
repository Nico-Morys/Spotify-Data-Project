--Song Table
CREATE TABLE Song (
    TitleID char(4) not null,
    Title varchar2(100) not null,
    Bpm int not null,
    dB int not null,
    Dur int not null,
    top_genre varchar2(100) not null,
    constraint Song_pk primary key (TitleID)
);

--Audio table
CREATE TABLE AUDIO_Table (
    TitleID char(4) not null,
    Audio_Feature varchar2(25) not null,
    Audio_Value char(2) not null,
    constraint Audio_Table_pk primary key (TitleID, Audio_Feature)
);

--Top_Year Table
CREATE TABLE Top_Year (
    TitleID char(4) not null,
    Top_Year char(4) not null,
    constraint Top_Year_pk primary key (TitleID, Top_Year)  
);


--Artist Table
CREATE TABLE Artist (
    Artist varchar2(25) not null,
    ArtistID char(4) not null,
    TitleID char(4) not null,
    Artist_Type varchar2(20) not null,
    constraint Artist_pk primary key (ArtistID, TitleID) 
);