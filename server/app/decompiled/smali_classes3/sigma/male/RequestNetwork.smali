.class public Lsigma/male/RequestNetwork;
.super Ljava/lang/Object;
.source "RequestNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsigma/male/RequestNetwork$RequestListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/RequestNetwork;->params:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/RequestNetwork;->headers:Ljava/util/HashMap;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lsigma/male/RequestNetwork;->requestType:I

    .line 16
    iput-object p1, p0, Lsigma/male/RequestNetwork;->activity:Landroid/app/Activity;

    .line 17
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lsigma/male/RequestNetwork;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lsigma/male/RequestNetwork;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lsigma/male/RequestNetwork;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lsigma/male/RequestNetwork;->requestType:I

    return v0
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iput-object p1, p0, Lsigma/male/RequestNetwork;->headers:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method public setParams(Ljava/util/HashMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lsigma/male/RequestNetwork;->params:Ljava/util/HashMap;

    .line 25
    iput p2, p0, Lsigma/male/RequestNetwork;->requestType:I

    .line 26
    return-void
.end method

.method public startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsigma/male/RequestNetwork$RequestListener;)V
    .locals 6

    .prologue
    .line 45
    invoke-static {}, Lsigma/male/RequestNetworkController;->getInstance()Lsigma/male/RequestNetworkController;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lsigma/male/RequestNetworkController;->execute(Lsigma/male/RequestNetwork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsigma/male/RequestNetwork$RequestListener;)V

    .line 46
    return-void
.end method
