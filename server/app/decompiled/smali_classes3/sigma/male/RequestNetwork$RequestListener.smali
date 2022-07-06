.class public interface abstract Lsigma/male/RequestNetwork$RequestListener;
.super Ljava/lang/Object;
.source "RequestNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsigma/male/RequestNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestListener"
.end annotation


# virtual methods
.method public abstract onErrorResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
