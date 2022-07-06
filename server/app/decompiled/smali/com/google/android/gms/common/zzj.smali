.class final Lcom/google/android/gms/common/zzj;
.super Lcom/google/android/gms/common/zzi;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field private final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/16 v5, 0x19

    .line 1
    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzi;-><init>([B)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/common/zzj;->zza:[B

    return-void
.end method


# virtual methods
.method final zzc()[B
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/zzj;->zza:[B

    move-object v0, v1

    return-object v0
.end method
