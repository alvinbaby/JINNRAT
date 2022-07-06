.class Lcom/google/android/gms/common/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/gms/common/zzw;


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final zzc:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    new-instance v1, Lcom/google/android/gms/common/zzw;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/zzw;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/zzw;->zzd:Lcom/google/android/gms/common/zzw;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/android/gms/common/zzw;->zza:Z

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/android/gms/common/zzw;->zzb:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/android/gms/common/zzw;->zzc:Ljava/lang/Throwable;

    return-void
.end method

.method static zzb()Lcom/google/android/gms/common/zzw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/zzw;->zzd:Lcom/google/android/gms/common/zzw;

    return-object v0
.end method

.method static zzc(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/zzw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/zzw;"
        }
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/common/zzv;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    .line 1
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/zzv;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/zzu;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method static zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzw;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/common/zzw;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v5, 0x0

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/zzw;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method static zze(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzw;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/android/gms/common/zzw;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    move-object v6, v1

    .line 1
    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/common/zzw;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method static zzg(Ljava/lang/String;Lcom/google/android/gms/common/zzi;ZZ)Ljava/lang/String;
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v5, 0x1

    move v6, v3

    if-eq v5, v6, :cond_0

    const-string v5, "not allowed"

    move-object v3, v5

    :goto_0
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v3

    aput-object v7, v5, v6

    move-object v5, v4

    const/4 v6, 0x1

    move-object v7, v0

    aput-object v7, v5, v6

    const-string v5, "SHA-1"

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->zza(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v4

    const/4 v6, 0x2

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/android/gms/common/zzi;->zzc()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 2
    invoke-static {v7}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v5, v4

    const/4 v6, 0x3

    move v7, v2

    .line 3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v5, v4

    const/4 v6, 0x4

    const-string v7, "12451000.false"

    aput-object v7, v5, v6

    const-string v5, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    move-object v6, v4

    .line 4
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0

    :cond_0
    const-string v5, "debug cert rejected"

    move-object v3, v5

    goto :goto_0
.end method


# virtual methods
.method zza()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/zzw;->zzb:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method final zzf()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/android/gms/common/zzw;->zza:Z

    if-nez v1, :cond_1

    const-string v1, "GoogleCertificatesRslt"

    const/4 v2, 0x3

    .line 1
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/zzw;->zzc:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string v1, "GoogleCertificatesRslt"

    move-object v2, v0

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/common/zzw;->zza()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/zzw;->zzc:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 3
    :goto_0
    return-void

    .line 2
    :cond_0
    const-string v1, "GoogleCertificatesRslt"

    move-object v2, v0

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/common/zzw;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    goto :goto_0
.end method
