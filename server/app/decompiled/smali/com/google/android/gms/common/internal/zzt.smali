.class public final Lcom/google/android/gms/common/internal/zzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;

.field private final zzc:I

.field private final zzd:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/android/gms/common/internal/zzt;->zzb:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/google/android/gms/common/internal/zzt;->zza:Ljava/lang/String;

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/google/android/gms/common/internal/zzt;->zzc:I

    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/google/android/gms/common/internal/zzt;->zzd:Z

    return-void
.end method


# virtual methods
.method final zza()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzt;->zza:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzt;->zzb:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method final zzc()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/internal/zzt;->zzc:I

    move v0, v1

    return v0
.end method

.method final zzd()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/zzt;->zzd:Z

    move v0, v1

    return v0
.end method
