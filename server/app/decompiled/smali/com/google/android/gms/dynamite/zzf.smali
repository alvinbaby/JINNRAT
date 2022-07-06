.class final Lcom/google/android/gms/dynamite/zzf;
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
    .locals 8
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

    new-instance v4, Lcom/google/android/gms/dynamite/zzn;

    move-object v0, v4

    move-object v4, v0

    .line 1
    invoke-direct {v4}, Lcom/google/android/gms/dynamite/zzn;-><init>()V

    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    .line 2
    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/gms/dynamite/zzm;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    move v1, v4

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/gms/dynamite/zzn;->zzb:I

    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/dynamite/zzn;->zzc:I

    :goto_0
    move-object v4, v0

    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/google/android/gms/dynamite/zzn;->zzc:I

    goto :goto_0
.end method
