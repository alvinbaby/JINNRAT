.class final synthetic Lcom/google/android/gms/common/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Z

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/common/zzi;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/google/android/gms/common/zzi;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/android/gms/common/zzd;->zza:Z

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/zzd;->zzb:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/zzd;->zzc:Lcom/google/android/gms/common/zzi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/zzd;->zza:Z

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/zzd;->zzb:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/zzd;->zzc:Lcom/google/android/gms/common/zzi;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/zzm;->zze(ZLjava/lang/String;Lcom/google/android/gms/common/zzi;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
