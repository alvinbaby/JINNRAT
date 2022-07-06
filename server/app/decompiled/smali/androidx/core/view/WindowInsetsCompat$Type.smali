.class public final Landroidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x100

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0x9

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static all()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2019
    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .locals 1

    .prologue
    .line 1938
    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .locals 1

    .prologue
    .line 1999
    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .locals 1

    .prologue
    .line 1946
    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 2023
    sparse-switch p0, :sswitch_data_0

    .line 2043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2025
    :sswitch_0
    const/4 v0, 0x0

    .line 2041
    :goto_0
    return v0

    .line 2027
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2029
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2031
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2033
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2035
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 2037
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 2039
    :sswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 2041
    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 2023
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
        0x100 -> :sswitch_8
    .end sparse-switch
.end method

.method public static mandatorySystemGestures()I
    .locals 1

    .prologue
    .line 1976
    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .locals 1

    .prologue
    .line 1922
    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .locals 1

    .prologue
    .line 2008
    const/4 v0, 0x7

    return v0
.end method

.method public static systemGestures()I
    .locals 1

    .prologue
    .line 1968
    const/16 v0, 0x10

    return v0
.end method

.method public static tappableElement()I
    .locals 1

    .prologue
    .line 1984
    const/16 v0, 0x40

    return v0
.end method
