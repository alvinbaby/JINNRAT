.class public Lsigma/male/sol/timedate;
.super Ljava/lang/Object;
.source "timedate.java"


# static fields
.field private static final calendar:Ljava/util/Calendar;

.field private static final simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LC0/VBUYGWtJXHIAYWVwbzkrF0smehV+aw8="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsigma/male/sol/timedate;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 17
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ISY="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDaysOfTheWeek()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x1

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    sget-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 102
    sget-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 103
    sget-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/sol/timedate;->getTheDateInString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 106
    :goto_0
    const/4 v3, 0x6

    if-le v0, v3, :cond_0

    .line 112
    return-object v2

    .line 108
    :cond_0
    sget-object v3, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 109
    sget-object v3, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lsigma/male/sol/timedate;->getTheDateInString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCurrentDay()Ljava/util/Date;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 22
    sget-object v1, Lsigma/male/sol/timedate;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    return-object v0
.end method

.method public static getCurrentWeekNumber()I
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private static getDayOfTheWeek(Ljava/util/Date;I)Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x7

    .line 77
    sget-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 79
    if-ne p1, v1, :cond_1

    .line 82
    sget-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 91
    :cond_0
    :goto_0
    sget-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    if-ne p1, v2, :cond_0

    .line 87
    sget-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 88
    sget-object v0, Lsigma/male/sol/timedate;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public static getFirstDayOfMonth(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 119
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "LC0/VBUYGWtJXA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstDayOfWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lsigma/male/sol/timedate;->getMondayOfTheWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/sol/timedate;->getTheDateInString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastDayOfMonth(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 129
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "LC0/VBUYGWtJXA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastDayOfWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lsigma/male/sol/timedate;->getSundayOfTheWeek(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/sol/timedate;->getTheDateInString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMondayOfTheWeek(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsigma/male/sol/timedate;->getDayOfTheWeek(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getNumericLastDayOfMonth(Ljava/util/Date;)I
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 137
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method public static getSundayOfTheWeek(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lsigma/male/sol/timedate;->getDayOfTheWeek(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getTheDateInDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 40
    if-nez p0, :cond_1

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 47
    :try_start_0
    sget-object v0, Lsigma/male/sol/timedate;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public static getTheDateInString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    if-nez p0, :cond_1

    .line 30
    const-string v0, ""

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    sget-object v0, Lsigma/male/sol/timedate;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getYear()I
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method
