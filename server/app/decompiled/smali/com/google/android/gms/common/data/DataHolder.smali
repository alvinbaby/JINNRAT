.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "DataHolderCreator"
    validate = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final zak:Lcom/google/android/gms/common/data/DataHolder$Builder;


# instance fields
.field final zaa:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x3e8
    .end annotation
.end field

.field zab:Landroid/os/Bundle;

.field zac:[I

.field zad:I

.field zae:Z

.field private final zaf:[Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getColumns"
        id = 0x1
    .end annotation
.end field

.field private final zag:[Landroid/database/CursorWindow;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWindows"
        id = 0x2
    .end annotation
.end field

.field private final zah:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStatusCode"
        id = 0x3
    .end annotation
.end field

.field private final zai:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getMetadata"
        id = 0x4
    .end annotation
.end field

.field private zaj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v1, Lcom/google/android/gms/common/data/zad;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/data/zad;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v1, Lcom/google/android/gms/common/data/zab;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/data/zab;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/data/DataHolder;->zak:Lcom/google/android/gms/common/data/DataHolder$Builder;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 8
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3e8
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p3    # [Landroid/database/CursorWindow;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    .line 1
    invoke-direct {v6}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILandroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    .line 2
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v9, Lcom/google/android/gms/common/sqlite/CursorWrapper;

    move-object v4, v9

    move-object v9, v4

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/google/android/gms/common/sqlite/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    move-object v9, v4

    .line 3
    invoke-virtual {v9}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    new-instance v9, Ljava/util/ArrayList;

    move-object v6, v9

    move-object v9, v6

    .line 4
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v4

    .line 5
    :try_start_0
    invoke-virtual {v9}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getCount()I

    move-result v9

    move v7, v9

    move-object v9, v4

    .line 6
    invoke-virtual {v9}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v9

    move-object v1, v9

    move-object v9, v1

    if-eqz v9, :cond_4

    move-object v9, v1

    .line 7
    invoke-virtual {v9}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v9

    move v8, v9

    move v9, v8

    if-nez v9, :cond_3

    move-object v9, v1

    .line 8
    invoke-virtual {v9}, Landroid/database/CursorWindow;->acquireReference()V

    move-object v9, v4

    const/4 v10, 0x0

    .line 9
    invoke-virtual {v9, v10}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    move-object v9, v6

    move-object v10, v1

    .line 10
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    move-object v9, v1

    .line 11
    invoke-virtual {v9}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v9

    move v1, v9

    :goto_0
    move v9, v1

    move v10, v7

    if-ge v9, v10, :cond_0

    move-object v9, v4

    move v10, v1

    .line 12
    invoke-virtual {v9, v10}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->moveToPosition(I)Z

    move-result v9

    move v8, v9

    move v9, v8

    if-eqz v9, :cond_0

    move-object v9, v4

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    if-eqz v9, :cond_2

    move-object v9, v8

    .line 14
    invoke-virtual {v9}, Landroid/database/CursorWindow;->acquireReference()V

    move-object v9, v4

    const/4 v10, 0x0

    .line 15
    invoke-virtual {v9, v10}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    move-object v9, v8

    move-object v1, v9

    :goto_1
    move-object v9, v1

    .line 19
    invoke-virtual {v9}, Landroid/database/CursorWindow;->getNumRows()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    move v8, v9

    move v9, v8

    if-nez v9, :cond_1

    :cond_0
    move-object v9, v4

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->close()V

    move-object v9, v0

    move-object v10, v5

    move-object v11, v6

    move-object v12, v6

    .line 23
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/database/CursorWindow;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/database/CursorWindow;

    move v12, v2

    move-object v13, v3

    .line 3
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void

    :cond_1
    move-object v9, v6

    move-object v10, v1

    .line 20
    :try_start_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    move-object v9, v1

    .line 21
    invoke-virtual {v9}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v9

    move v8, v9

    move-object v9, v1

    invoke-virtual {v9}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v9

    move v1, v9

    move v9, v8

    move v10, v1

    add-int/2addr v9, v10

    move v1, v9

    goto :goto_0

    :cond_2
    new-instance v9, Landroid/database/CursorWindow;

    move-object v8, v9

    move-object v9, v8

    const/4 v10, 0x0

    .line 16
    invoke-direct {v9, v10}, Landroid/database/CursorWindow;-><init>(Z)V

    move-object v9, v8

    move v10, v1

    .line 17
    invoke-virtual {v9, v10}, Landroid/database/CursorWindow;->setStartPosition(I)V

    move-object v9, v4

    move v10, v1

    move-object v11, v8

    .line 18
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    move-object v1, v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    move v1, v9

    goto :goto_0

    :catchall_0
    move-exception v9

    move-object v0, v9

    move-object v9, v4

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->close()V

    move-object v9, v0

    .line 24
    throw v9

    :cond_4
    const/4 v9, 0x0

    move v1, v9

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V
    .locals 9
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/google/android/gms/common/data/DataHolder;->zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object v6

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;ILcom/google/android/gms/common/data/zab;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/google/android/gms/common/data/DataHolder;->zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object v8

    move v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;Lcom/google/android/gms/common/data/zab;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 7
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/database/CursorWindow;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    .line 26
    invoke-direct {v5}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    move-object v5, v0

    move-object v6, v1

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    .line 28
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/database/CursorWindow;

    iput-object v6, v5, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    move-object v5, v0

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/common/data/DataHolder;->zaa()V

    return-void
.end method

.method public static builder([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .locals 6
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    new-instance v2, Lcom/google/android/gms/common/data/DataHolder$Builder;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/zab;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static empty(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 6
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move v0, p0

    new-instance v2, Lcom/google/android/gms/common/data/DataHolder;

    move-object v1, v2

    move-object v2, v1

    sget-object v3, Lcom/google/android/gms/common/data/DataHolder;->zak:Lcom/google/android/gms/common/data/DataHolder$Builder;

    move v4, v0

    const/4 v5, 0x0

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;
    .locals 18

    .prologue
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v13, v1

    .line 1
    invoke-static {v13}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    new-array v13, v13, [Landroid/database/CursorWindow;

    move-object v1, v13

    .line 46
    :goto_0
    return-object v1

    .line 1
    :cond_0
    move-object v13, v1

    .line 2
    invoke-static {v13}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    move-result-object v13

    move-object v9, v13

    move-object v13, v9

    .line 3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v10, v13

    new-instance v13, Landroid/database/CursorWindow;

    move-object v2, v13

    move-object v13, v2

    const/4 v14, 0x0

    .line 4
    invoke-direct {v13, v14}, Landroid/database/CursorWindow;-><init>(Z)V

    new-instance v13, Ljava/util/ArrayList;

    move-object v11, v13

    move-object v13, v11

    .line 5
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v11

    move-object v14, v2

    .line 6
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v13

    move-object v13, v2

    move-object v14, v1

    .line 7
    invoke-static {v14}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v13, v14}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move-result v13

    const/4 v13, 0x0

    move v3, v13

    const/4 v13, 0x0

    move v4, v13

    :goto_1
    move v13, v4

    move v14, v10

    if-ge v13, v14, :cond_d

    move-object v13, v2

    .line 8
    :try_start_0
    invoke-virtual {v13}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v13

    move v5, v13

    move v13, v5

    if-nez v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v2, v13

    move-object v13, v2

    const/16 v14, 0x48

    .line 9
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v13, v2

    const-string v14, "Allocating additional cursor window for large data set (row "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v13, v2

    move v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v13, v2

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v13, "DataHolder"

    move-object v14, v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    new-instance v13, Landroid/database/CursorWindow;

    move-object v2, v13

    move-object v13, v2

    const/4 v14, 0x0

    .line 10
    invoke-direct {v13, v14}, Landroid/database/CursorWindow;-><init>(Z)V

    move-object v13, v2

    move v14, v4

    .line 11
    invoke-virtual {v13, v14}, Landroid/database/CursorWindow;->setStartPosition(I)V

    move-object v13, v2

    move-object v14, v1

    .line 12
    invoke-static {v14}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v13, v14}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move-result v13

    move-object v13, v11

    move-object v14, v2

    .line 13
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v13

    move-object v13, v2

    .line 14
    invoke-virtual {v13}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v13

    move v5, v13

    move v13, v5

    if-nez v13, :cond_1

    const-string v13, "DataHolder"

    const-string v14, "Unable to allocate row to hold data."

    .line 44
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    move-object v13, v11

    move-object v14, v2

    .line 45
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v13

    move-object v13, v11

    move-object v14, v11

    .line 46
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/database/CursorWindow;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/database/CursorWindow;

    move-object v1, v13

    move-object v13, v1

    move-object v1, v13

    goto/16 :goto_0

    :cond_1
    move-object v13, v9

    move v14, v4

    .line 15
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    move-object v12, v13

    const/4 v13, 0x1

    move v5, v13

    const/4 v13, 0x0

    move v6, v13

    :goto_2
    move-object v13, v1

    .line 16
    invoke-static {v13}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    move v7, v13

    move v13, v6

    move v14, v7

    if-ge v13, v14, :cond_c

    move v13, v5

    if-eqz v13, :cond_a

    move-object v13, v1

    .line 17
    invoke-static {v13}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v13

    move v14, v6

    aget-object v13, v13, v14

    move-object v5, v13

    move-object v13, v12

    move-object v14, v5

    .line 18
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    move-object v13, v7

    if-nez v13, :cond_2

    move-object v13, v2

    move v14, v4

    move v15, v6

    .line 19
    invoke-virtual {v13, v14, v15}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v13

    move v5, v13

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object v13, v7

    .line 20
    instance-of v13, v13, Ljava/lang/String;

    move v8, v13

    move v13, v8

    if-eqz v13, :cond_3

    move-object v13, v2

    move-object v14, v7

    .line 21
    check-cast v14, Ljava/lang/String;

    move v15, v4

    move/from16 v16, v6

    invoke-virtual/range {v13 .. v16}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v13

    move v5, v13

    goto :goto_3

    :cond_3
    move-object v13, v7

    .line 22
    instance-of v13, v13, Ljava/lang/Long;

    move v8, v13

    move v13, v8

    if-eqz v13, :cond_4

    move-object v13, v2

    move-object v14, v7

    .line 23
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v13

    move v5, v13

    goto :goto_3

    :cond_4
    move-object v13, v7

    .line 24
    instance-of v13, v13, Ljava/lang/Integer;

    move v8, v13

    move v13, v8

    if-eqz v13, :cond_5

    move-object v13, v2

    move-object v14, v7

    .line 25
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v13

    move v5, v13

    goto :goto_3

    :cond_5
    move-object v13, v7

    .line 26
    instance-of v13, v13, Ljava/lang/Boolean;

    move v8, v13

    move v13, v8

    if-eqz v13, :cond_7

    move-object v13, v7

    .line 27
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move v5, v13

    const/4 v13, 0x1

    move v14, v5

    if-eq v13, v14, :cond_6

    const-wide/16 v13, 0x0

    move-wide v7, v13

    :goto_4
    move-object v13, v2

    move-wide v14, v7

    move/from16 v16, v4

    move/from16 v17, v6

    .line 28
    invoke-virtual/range {v13 .. v17}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v13

    move v5, v13

    goto :goto_3

    :cond_6
    const-wide/16 v13, 0x1

    move-wide v7, v13

    goto :goto_4

    :cond_7
    move-object v13, v7

    .line 29
    instance-of v13, v13, [B

    move v8, v13

    move v13, v8

    if-eqz v13, :cond_8

    move-object v13, v2

    move-object v14, v7

    .line 30
    check-cast v14, [B

    move v15, v4

    move/from16 v16, v6

    invoke-virtual/range {v13 .. v16}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v13

    move v5, v13

    goto/16 :goto_3

    :cond_8
    move-object v13, v7

    .line 31
    instance-of v13, v13, Ljava/lang/Double;

    move v8, v13

    move v13, v8

    if-eqz v13, :cond_9

    move-object v13, v2

    move-object v14, v7

    .line 32
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v13

    move v5, v13

    goto/16 :goto_3

    :cond_9
    move-object v13, v7

    .line 33
    instance-of v13, v13, Ljava/lang/Float;

    move v8, v13

    move v13, v8

    if-eqz v13, :cond_e

    move-object v13, v2

    move-object v14, v7

    .line 34
    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    float-to-double v14, v14

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v13

    move v5, v13

    goto/16 :goto_3

    :cond_a
    move v13, v3

    if-eqz v13, :cond_b

    const-string v13, "Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle."

    move-object v1, v13

    new-instance v13, Lcom/google/android/gms/common/data/zac;

    move-object v2, v13

    move-object v13, v2

    move-object v14, v1

    .line 42
    invoke-direct {v13, v14}, Lcom/google/android/gms/common/data/zac;-><init>(Ljava/lang/String;)V

    move-object v13, v2

    throw v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    move-exception v13

    move-object v2, v13

    move-object v13, v11

    .line 47
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v3, v13

    const/4 v13, 0x0

    move v1, v13

    :goto_5
    move v13, v1

    move v14, v3

    if-ge v13, v14, :cond_f

    move-object v13, v11

    move v14, v1

    .line 48
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/database/CursorWindow;

    invoke-virtual {v13}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 42
    :cond_b
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    move-object v3, v13

    move-object v13, v3

    const/16 v14, 0x4a

    .line 35
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v13, v3

    const-string v14, "Couldn\'t populate window data for row "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v13, v3

    move v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v13, v3

    const-string v14, " - allocating new window."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v13, "DataHolder"

    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    move-object v13, v2

    .line 36
    invoke-virtual {v13}, Landroid/database/CursorWindow;->freeLastRow()V

    new-instance v13, Landroid/database/CursorWindow;

    move-object v2, v13

    move-object v13, v2

    const/4 v14, 0x0

    .line 37
    invoke-direct {v13, v14}, Landroid/database/CursorWindow;-><init>(Z)V

    move-object v13, v2

    move v14, v4

    .line 38
    invoke-virtual {v13, v14}, Landroid/database/CursorWindow;->setStartPosition(I)V

    move-object v13, v2

    move-object v14, v1

    .line 39
    invoke-static {v14}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v13, v14}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move-result v13

    move-object v13, v11

    move-object v14, v2

    .line 40
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    move v13, v4

    const/4 v14, -0x1

    add-int/lit8 v13, v13, -0x1

    move v5, v13

    const/4 v13, 0x1

    move v3, v13

    :goto_6
    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v4, v13

    goto/16 :goto_1

    :cond_c
    move v13, v5

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    move v3, v13

    move v13, v4

    move v5, v13

    goto :goto_6

    :cond_d
    move-object v13, v11

    move-object v14, v11

    .line 41
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/database/CursorWindow;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/database/CursorWindow;

    move-object v1, v13

    goto/16 :goto_0

    .line 48
    :cond_e
    :try_start_2
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object v1, v13

    move-object v13, v7

    .line 43
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    move-object v13, v5

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v3, v13

    add-int/lit8 v3, v3, 0x20

    move-object v13, v2

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v4, v13

    move v13, v3

    move v14, v4

    add-int/2addr v13, v14

    move v3, v13

    .line 49
    new-instance v13, Ljava/lang/StringBuilder;

    move-object v4, v13

    move-object v13, v4

    move v14, v3

    .line 43
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v13, v4

    const-string v14, "Unsupported object for column "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v13, v4

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v13, v4

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v13, v4

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v13, v1

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v13, v1

    throw v13
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_f
    move-object v13, v2

    .line 49
    throw v13
.end method

.method private final zaf(Ljava/lang/String;I)V
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    .line 1
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v2, v4

    move-object v4, v1

    .line 2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const-string v4, "No such column: "

    move-object v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :goto_0
    move-object v4, v2

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    throw v4

    :cond_1
    move-object v4, v0

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v0, v4

    move-object v4, v0

    const-string v5, "Buffer is closed."

    .line 4
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    :cond_2
    move v4, v2

    if-ltz v4, :cond_3

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    if-lt v4, v5, :cond_4

    .line 5
    :cond_3
    new-instance v4, Landroid/database/CursorIndexOutOfBoundsException;

    move-object v1, v4

    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    invoke-direct {v4, v5, v6}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    move-object v4, v1

    throw v4

    :cond_4
    return-void

    :cond_5
    new-instance v4, Ljava/lang/String;

    move-object v0, v4

    move-object v4, v0

    move-object v5, v1

    .line 2
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v4, v0

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    move v1, v4

    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move-object v2, v4

    move-object v4, v2

    .line 1
    array-length v4, v4

    move v3, v4

    move v4, v1

    move v5, v3

    if-ge v4, v5, :cond_0

    move-object v4, v2

    move v5, v1

    .line 2
    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 3
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    throw v4
.end method

.method protected final finalize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    move v1, v5

    move v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 1
    array-length v5, v5

    move v1, v5

    move v5, v1

    if-lez v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v5

    move v1, v5

    move v5, v1

    if-nez v5, :cond_0

    move-object v5, v0

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v5, "DataBuffer"

    move-object v1, v5

    move-object v5, v0

    .line 3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    add-int/lit16 v3, v3, 0xb2

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v4, v5

    move-object v5, v4

    move v6, v3

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v4

    const-string v6, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v4

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 6
    :cond_0
    move-object v5, v0

    .line 5
    invoke-super {v5}, Ljava/lang/Object;->finalize()V

    return-void

    .line 4
    :catchall_0
    move-exception v5

    move-object v1, v5

    move-object v5, v0

    .line 5
    invoke-super {v5}, Ljava/lang/Object;->finalize()V

    move-object v5, v1

    .line 6
    throw v5
.end method

.method public getBoolean(Ljava/lang/String;II)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;II)[B
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getCount()I
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    move v0, v1

    return v0
.end method

.method public getInteger(Ljava/lang/String;II)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public getLong(Ljava/lang/String;II)J
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v4

    move-wide v0, v4

    return-wide v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getStatusCode()I
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    move v0, v1

    return v0
.end method

.method public getString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getWindowIndex(I)I
    .locals 8
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-ltz v5, :cond_4

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    if-ge v5, v6, :cond_3

    const/4 v5, 0x1

    move v2, v5

    :goto_0
    move v5, v2

    .line 1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    move-object v3, v5

    move-object v5, v3

    .line 2
    array-length v5, v5

    move v4, v5

    move v5, v2

    move v6, v4

    if-ge v5, v6, :cond_2

    move v5, v1

    move-object v6, v3

    move v7, v2

    .line 3
    aget v6, v6, v7

    if-ge v5, v6, :cond_1

    move v5, v2

    const/4 v6, -0x1

    add-int/lit8 v5, v5, -0x1

    move v0, v5

    :goto_2
    move v5, v0

    move v6, v4

    if-ne v5, v6, :cond_0

    move v5, v0

    const/4 v6, -0x1

    add-int/lit8 v5, v5, -0x1

    move v0, v5

    :goto_3
    return v0

    :cond_0
    move v5, v0

    move v0, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    move v0, v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v3, v1

    .line 1
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public hasNull(Ljava/lang/String;II)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public isClosed()Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v2, v0

    monitor-enter v2

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    move v1, v2

    move-object v2, v0

    .line 1
    monitor-exit v2

    move v2, v1

    move v0, v2

    return v0

    :catchall_0
    move-exception v2

    move-object v1, v2

    .line 2
    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    move-object v2, v1

    .line 2
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v4

    move v3, v4

    move-object v4, v1

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    const/4 v7, 0x0

    .line 2
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    move-object v4, v1

    const/4 v5, 0x2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v7, v2

    const/4 v8, 0x0

    .line 3
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    move-object v4, v1

    const/4 v5, 0x3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v6

    .line 4
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    const/4 v5, 0x4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    .line 5
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    move-object v4, v1

    const/16 v5, 0x3e8

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    .line 6
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    move v5, v3

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public final zaa()V
    .locals 8

    .prologue
    move-object v0, p0

    new-instance v4, Landroid/os/Bundle;

    move-object v1, v4

    move-object v4, v1

    .line 1
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    move-object v2, v4

    move v4, v1

    move-object v5, v2

    .line 2
    array-length v5, v5

    if-ge v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v5, v2

    move v6, v1

    .line 3
    aget-object v5, v5, v6

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 4
    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    const/4 v4, 0x0

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move-object v3, v4

    move v4, v2

    move-object v5, v3

    .line 5
    array-length v5, v5

    if-ge v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    move v5, v2

    move v6, v1

    .line 6
    aput v6, v4, v5

    move-object v4, v3

    move v5, v2

    .line 7
    aget-object v4, v4, v5

    move-object v3, v4

    move-object v4, v3

    invoke-virtual {v4}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v4

    move v3, v4

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v6, v2

    .line 8
    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v5

    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    return-void
.end method

.method public final zab(Ljava/lang/String;II)F
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v4

    move v0, v4

    return v0
.end method

.method public final zac(Ljava/lang/String;II)D
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    .line 1
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v5, v3

    .line 2
    aget-object v4, v4, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v4

    move-wide v0, v4

    return-wide v0
.end method

.method public final zad(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/database/CharArrayBuffer;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    .line 1
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    move v6, v3

    .line 2
    aget-object v5, v5, v6

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method
