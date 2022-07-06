.class public final Lcom/google/android/gms/signin/SignInOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final zaa:Lcom/google/android/gms/signin/SignInOptions;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# instance fields
.field private final zab:Z

.field private final zac:Z

.field private final zad:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zae:Z

.field private final zaf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zah:Z

.field private final zai:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zaj:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    new-instance v1, Lcom/google/android/gms/signin/SignInOptions;

    move-object v0, v1

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/signin/SignInOptions;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/signin/zaf;)V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/signin/zaf;)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v11, v0

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 8
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v1

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/signin/SignInOptions;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 2
    check-cast v2, Lcom/google/android/gms/signin/SignInOptions;

    move-object v0, v2

    move-object v2, v0

    .line 3
    iget-boolean v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    move-object v0, p0

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    move-object v0, v2

    const/4 v2, 0x0

    .line 1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    aput-object v4, v2, v3

    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    aput-object v4, v2, v3

    move-object v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object v2, v0

    const/4 v3, 0x3

    move-object v4, v1

    aput-object v4, v2, v3

    move-object v2, v0

    const/4 v3, 0x4

    move-object v4, v1

    aput-object v4, v2, v3

    move-object v2, v0

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object v2, v0

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object v2, v0

    const/4 v3, 0x7

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object v2, v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object v2, v0

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method
