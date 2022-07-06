.class public abstract Lcom/google/android/gms/common/internal/FallbackServiceBroker;
.super Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;-><init>()V

    return-void
.end method
