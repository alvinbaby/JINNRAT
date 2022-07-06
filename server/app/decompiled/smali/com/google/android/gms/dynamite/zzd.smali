.class final Lcom/google/android/gms/dynamite/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# direct methods
.method constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/zzm;)Lcom/google/android/gms/dynamite/zzn;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Lcom/google/android/gms/dynamite/zzn;

    move-object v0, v5

    move-object v5, v0

    .line 1
    invoke-direct {v5}, Lcom/google/android/gms/dynamite/zzn;-><init>()V

    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x1

    .line 2
    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/gms/dynamite/zzm;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v5

    move v4, v5

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/android/gms/dynamite/zzn;->zzb:I

    move v5, v4

    if-eqz v5, :cond_1

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/android/gms/dynamite/zzn;->zzc:I

    :cond_0
    :goto_0
    move-object v5, v0

    move-object v0, v5

    return-object v0

    :cond_1
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    .line 3
    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/dynamite/zzm;->zzb(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    move v1, v5

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/android/gms/dynamite/zzn;->zza:I

    move v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lcom/google/android/gms/dynamite/zzn;->zzc:I

    goto :goto_0
.end method
