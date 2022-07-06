.class public final Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    .line 1
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    return-void
.end method
