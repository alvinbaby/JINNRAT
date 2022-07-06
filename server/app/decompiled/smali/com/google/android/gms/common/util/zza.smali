.class public final Lcom/google/android/gms/common/util/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# direct methods
.method public static zza(I)I
    .locals 3

    move v0, p0

    move v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v1, v0

    const/16 v2, 0x3e8

    div-int/lit16 v1, v1, 0x3e8

    move v0, v1

    goto :goto_0
.end method
