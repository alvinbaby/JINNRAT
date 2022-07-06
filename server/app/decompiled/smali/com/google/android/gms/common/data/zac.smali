.class public final Lcom/google/android/gms/common/data/zac;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-base@@17.6.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle."

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
