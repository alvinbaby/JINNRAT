.class public abstract Lcom/google/android/gms/common/stats/StatsEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/stats/StatsEvent$Types;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 11
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/gms/common/stats/StatsEvent;->zza()J

    move-result-wide v8

    move-wide v1, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/gms/common/stats/StatsEvent;->zzb()I

    move-result v8

    move v3, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/gms/common/stats/StatsEvent;->zzc()J

    move-result-wide v8

    move-wide v4, v8

    move-object v8, v0

    .line 1
    invoke-virtual {v8}, Lcom/google/android/gms/common/stats/StatsEvent;->zzd()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v7, v8

    move-object v8, v7

    move v9, v6

    const/16 v10, 0x35

    add-int/lit8 v9, v9, 0x35

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v7

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    return-object v0
.end method

.method public abstract zza()J
.end method

.method public abstract zzb()I
.end method

.method public abstract zzc()J
.end method

.method public abstract zzd()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method
