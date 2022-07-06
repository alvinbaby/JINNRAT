.class public interface abstract Lcom/google/firebase/database/connection/Connection$Delegate;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/connection/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract onCacheHost(Ljava/lang/String;)V
.end method

.method public abstract onDataMessage(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDisconnect(Lcom/google/firebase/database/connection/Connection$DisconnectReason;)V
.end method

.method public abstract onKill(Ljava/lang/String;)V
.end method

.method public abstract onReady(JLjava/lang/String;)V
.end method
