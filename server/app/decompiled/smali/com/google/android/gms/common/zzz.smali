.class final Lcom/google/android/gms/common/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/common/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/common/zzu",
            "<[B>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/common/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/common/zzu",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/internal/common/zzu;Lcom/google/android/gms/common/zzx;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/google/android/gms/common/zzz;->zzb:Lcom/google/android/gms/internal/common/zzu;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzu;

    return-void
.end method
