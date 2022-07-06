.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toPlatformType(I)I
    .locals 3
    .param p0, "typeMask"    # I

    .prologue
    .line 2067
    const/4 v1, 0x0

    .line 2068
    .local v1, "result":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x100

    if-gt v0, v2, :cond_1

    .line 2069
    and-int v2, p0, v0

    if-eqz v2, :cond_0

    .line 2070
    sparse-switch v0, :sswitch_data_0

    .line 2068
    :cond_0
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2072
    :sswitch_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 2073
    goto :goto_1

    .line 2075
    :sswitch_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    .line 2076
    goto :goto_1

    .line 2078
    :sswitch_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    or-int/2addr v1, v2

    .line 2079
    goto :goto_1

    .line 2081
    :sswitch_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    .line 2082
    goto :goto_1

    .line 2084
    :sswitch_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v2

    or-int/2addr v1, v2

    .line 2085
    goto :goto_1

    .line 2087
    :sswitch_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v2

    or-int/2addr v1, v2

    .line 2088
    goto :goto_1

    .line 2090
    :sswitch_6
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v2

    or-int/2addr v1, v2

    .line 2091
    goto :goto_1

    .line 2093
    :sswitch_7
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 2098
    :cond_1
    return v1

    .line 2070
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method
