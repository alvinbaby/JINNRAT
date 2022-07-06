.class public abstract synthetic Lcom/google/android/gms/common/util/Clock$$CC;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# direct methods
.method public static currentThreadTimeMillis$$dflt$$(Lcom/google/android/gms/common/util/Clock;)J
    .locals 3
    .param p0    # Lcom/google/android/gms/common/util/Clock;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method
