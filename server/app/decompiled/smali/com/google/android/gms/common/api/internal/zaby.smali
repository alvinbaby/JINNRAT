.class final Lcom/google/android/gms/common/api/internal/zaby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

.field final zab:I

.field final zac:J

.field final zad:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V
    .locals 11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/google/android/gms/common/api/internal/zaby;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    move-object v7, v1

    move v8, v3

    iput v8, v7, Lcom/google/android/gms/common/api/internal/zaby;->zab:I

    move-object v7, v1

    move-wide v8, v4

    iput-wide v8, v7, Lcom/google/android/gms/common/api/internal/zaby;->zac:J

    move-object v7, v1

    move v8, v6

    iput v8, v7, Lcom/google/android/gms/common/api/internal/zaby;->zad:I

    return-void
.end method
