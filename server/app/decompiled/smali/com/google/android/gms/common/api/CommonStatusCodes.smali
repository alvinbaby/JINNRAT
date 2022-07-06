.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final CANCELED:I = 0x10

.field public static final CONNECTION_SUSPENDED_DURING_CALL:I = 0x14

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RECONNECTION_TIMED_OUT:I = 0x16

.field public static final RECONNECTION_TIMED_OUT_DURING_UPDATE:I = 0x15

.field public static final REMOTE_EXCEPTION:I = 0x13

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move v0, p0

    move v2, v0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v1, v2

    move-object v2, v1

    const/16 v3, 0x20

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v1

    const-string v3, "unknown status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v2, v1

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_1
    const-string v2, "RECONNECTION_TIMED_OUT"

    move-object v0, v2

    goto :goto_0

    :pswitch_2
    const-string v2, "RECONNECTION_TIMED_OUT_DURING_UPDATE"

    move-object v0, v2

    goto :goto_0

    :pswitch_3
    const-string v2, "CONNECTION_SUSPENDED_DURING_CALL"

    move-object v0, v2

    goto :goto_0

    :pswitch_4
    const-string v2, "REMOTE_EXCEPTION"

    move-object v0, v2

    goto :goto_0

    :pswitch_5
    const-string v2, "DEAD_CLIENT"

    move-object v0, v2

    goto :goto_0

    :pswitch_6
    const-string v2, "API_NOT_CONNECTED"

    move-object v0, v2

    goto :goto_0

    :pswitch_7
    const-string v2, "CANCELED"

    move-object v0, v2

    goto :goto_0

    :pswitch_8
    const-string v2, "TIMEOUT"

    move-object v0, v2

    goto :goto_0

    :pswitch_9
    const-string v2, "INTERRUPTED"

    move-object v0, v2

    goto :goto_0

    :pswitch_a
    const-string v2, "ERROR"

    move-object v0, v2

    goto :goto_0

    :pswitch_b
    const-string v2, "DEVELOPER_ERROR"

    move-object v0, v2

    goto :goto_0

    :pswitch_c
    const-string v2, "INTERNAL_ERROR"

    move-object v0, v2

    goto :goto_0

    :pswitch_d
    const-string v2, "NETWORK_ERROR"

    move-object v0, v2

    goto :goto_0

    :pswitch_e
    const-string v2, "RESOLUTION_REQUIRED"

    move-object v0, v2

    goto :goto_0

    :pswitch_f
    const-string v2, "INVALID_ACCOUNT"

    move-object v0, v2

    goto :goto_0

    :pswitch_10
    const-string v2, "SIGN_IN_REQUIRED"

    move-object v0, v2

    goto :goto_0

    :pswitch_11
    const-string v2, "SERVICE_DISABLED"

    move-object v0, v2

    goto :goto_0

    :pswitch_12
    const-string v2, "SERVICE_VERSION_UPDATE_REQUIRED"

    move-object v0, v2

    goto :goto_0

    :pswitch_13
    const-string v2, "SUCCESS"

    move-object v0, v2

    goto :goto_0

    :pswitch_14
    const-string v2, "SUCCESS_CACHE"

    move-object v0, v2

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
