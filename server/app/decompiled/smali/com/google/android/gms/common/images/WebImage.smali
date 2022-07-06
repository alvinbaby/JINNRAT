.class public final Lcom/google/android/gms/common/images/WebImage;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "WebImageCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaa:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zab:Landroid/net/Uri;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUrl"
        id = 0x2
    .end annotation
.end field

.field private final zac:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getWidth"
        id = 0x3
    .end annotation
.end field

.field private final zad:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHeight"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v1, Lcom/google/android/gms/common/images/zah;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/android/gms/common/images/zah;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;II)V
    .locals 7
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # I
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

    move v3, p3

    move v4, p4

    move-object v5, v0

    .line 1
    invoke-direct {v5}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/android/gms/common/images/WebImage;->zaa:I

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/android/gms/common/images/WebImage;->zab:Landroid/net/Uri;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/android/gms/common/images/WebImage;->zac:I

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/android/gms/common/images/WebImage;->zad:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v1

    move v7, v2

    move v8, v3

    .line 3
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/images/WebImage;-><init>(ILandroid/net/Uri;II)V

    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v0, v4

    move-object v4, v0

    const-string v5, "url cannot be null"

    .line 4
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    :cond_0
    move v4, v2

    if-ltz v4, :cond_1

    move v4, v3

    if-gez v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v0, v4

    move-object v4, v0

    const-string v5, "width and height must not be negative"

    .line 5
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    throw v4

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object v2, v4

    move-object v4, v1

    const-string v5, "url"

    .line 6
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    :try_start_0
    const-string v5, "url"

    .line 7
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v2, v4

    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    const-string v7, "width"

    const/4 v8, 0x0

    .line 8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-object v7, v1

    const-string v8, "height"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;II)V

    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 3
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 1
    instance-of v2, v2, Lcom/google/android/gms/common/images/WebImage;

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 2
    check-cast v2, Lcom/google/android/gms/common/images/WebImage;

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/common/images/WebImage;->zab:Landroid/net/Uri;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/android/gms/common/images/WebImage;->zab:Landroid/net/Uri;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/images/WebImage;->zac:I

    move-object v3, v1

    iget v3, v3, Lcom/google/android/gms/common/images/WebImage;->zac:I

    if-ne v2, v3, :cond_3

    move-object v2, v0

    iget v2, v2, Lcom/google/android/gms/common/images/WebImage;->zad:I

    move-object v3, v1

    iget v3, v3, Lcom/google/android/gms/common/images/WebImage;->zad:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/images/WebImage;->zad:I

    move v0, v1

    return v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/common/images/WebImage;->zab:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/android/gms/common/images/WebImage;->zac:I

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    move-object v0, p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/WebImage;->zab:Landroid/net/Uri;

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/images/WebImage;->zac:I

    .line 1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/images/WebImage;->zad:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .prologue
    .line 1
    move-object v0, p0

    new-instance v2, Lorg/json/JSONObject;

    move-object v1, v2

    move-object v2, v1

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v1

    :try_start_0
    const-string v3, "url"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/common/images/WebImage;->zab:Landroid/net/Uri;

    .line 2
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v2, v1

    const-string v3, "width"

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/images/WebImage;->zac:I

    .line 3
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    move-object v2, v1

    const-string v3, "height"

    move-object v4, v0

    iget v4, v4, Lcom/google/android/gms/common/images/WebImage;->zad:I

    .line 4
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v1, v3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/images/WebImage;->zac:I

    .line 1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/google/android/gms/common/images/WebImage;->zad:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v3, v2

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/common/images/WebImage;->zab:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v3, v1

    const-string v4, "Image %dx%d %s"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
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

    iget v6, v6, Lcom/google/android/gms/common/images/WebImage;->zaa:I

    .line 2
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    const/4 v5, 0x2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v6

    move v7, v2

    const/4 v8, 0x0

    .line 3
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    move-object v4, v1

    const/4 v5, 0x3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    move-result v6

    .line 4
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    const/4 v5, 0x4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    move-result v6

    .line 5
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    move-object v4, v1

    move v5, v3

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
