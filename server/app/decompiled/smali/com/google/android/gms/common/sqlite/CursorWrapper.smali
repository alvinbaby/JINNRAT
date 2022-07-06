.class public Lcom/google/android/gms/common/sqlite/CursorWrapper;
.super Landroid/database/CursorWrapper;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private zza:Landroid/database/AbstractWindowedCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    .line 1
    invoke-direct {v3, v4}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    move-object v3, v1

    .line 2
    instance-of v3, v3, Landroid/database/CursorWrapper;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 3
    check-cast v3, Landroid/database/CursorWrapper;

    invoke-virtual {v3}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 4
    instance-of v3, v3, Landroid/database/AbstractWindowedCursor;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v2, v3

    move-object v3, v1

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    const-string v3, "Unknown type: "

    move-object v1, v3

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_1
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    throw v3

    :cond_1
    move-object v3, v0

    move-object v4, v1

    .line 6
    check-cast v4, Landroid/database/AbstractWindowedCursor;

    iput-object v4, v3, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    return-void

    :cond_2
    new-instance v3, Ljava/lang/String;

    move-object v0, v3

    move-object v3, v0

    move-object v4, v1

    .line 5
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 6
    .param p2    # Landroid/database/CursorWindow;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    move v4, v1

    move-object v5, v2

    .line 1
    invoke-virtual {v3, v4, v5}, Landroid/database/AbstractWindowedCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    .line 1
    invoke-virtual {v1}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final bridge synthetic getWrappedCursor()Landroid/database/Cursor;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    move-object v0, v1

    return-object v0
.end method

.method public final onMove(II)Z
    .locals 6

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    move v4, v1

    move v5, v2

    .line 1
    invoke-virtual {v3, v4, v5}, Landroid/database/AbstractWindowedCursor;->onMove(II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 4
    .param p1    # Landroid/database/CursorWindow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    return-void
.end method
