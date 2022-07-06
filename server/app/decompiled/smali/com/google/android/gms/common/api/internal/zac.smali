.class public abstract Lcom/google/android/gms/common/api/internal/zac;
.super Lcom/google/android/gms/common/api/internal/zai;
.source "com.google.android.gms:play-services-base@@17.6.0"


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/zai;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract zaa(Lcom/google/android/gms/common/api/internal/zabl;)[Lcom/google/android/gms/common/Feature;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl",
            "<*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation
.end method

.method public abstract zab(Lcom/google/android/gms/common/api/internal/zabl;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabl",
            "<*>;)Z"
        }
    .end annotation
.end method
