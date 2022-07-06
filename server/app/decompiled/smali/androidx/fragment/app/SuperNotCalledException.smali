.class final Landroidx/fragment/app/SuperNotCalledException;
.super Landroid/util/AndroidRuntimeException;
.source "SuperNotCalledException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
