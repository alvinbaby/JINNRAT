.class public Lsigma/male/main/part2;
.super Ljava/lang/Object;
.source "part2.java"


# instance fields
.field private accessibilityEvent:Ljava/lang/String;

.field private logoDate:Ljava/util/Date;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lsigma/male/main/part2;->accessibilityEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lsigma/male/main/part2;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getlogoDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lsigma/male/main/part2;->logoDate:Ljava/util/Date;

    return-object v0
.end method

.method public setAccessibilityEvent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lsigma/male/main/part2;->accessibilityEvent:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lsigma/male/main/part2;->msg:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setlogoDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lsigma/male/main/part2;->logoDate:Ljava/util/Date;

    .line 18
    return-void
.end method
