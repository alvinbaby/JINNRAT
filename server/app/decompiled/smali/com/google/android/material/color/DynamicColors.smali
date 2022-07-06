.class public Lcom/google/android/material/color/DynamicColors;
.super Ljava/lang/Object;
.source "DynamicColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;,
        Lcom/google/android/material/color/DynamicColors$Precondition;
    }
.end annotation


# static fields
.field private static final ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private static final DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

.field private static final USE_DEFAULT_THEME_OVERLAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/google/android/material/R$attr;->dynamicColorThemeOverlay:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    .line 46
    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "oppo"

    aput-object v4, v2, v3

    const-string v3, "realme"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "oneplus"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "vivo"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "xiaomi"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "motorola"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "itel"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "tecno mobile limited"

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string v3, "infinix mobility limited"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    const-string v3, "hmd global"

    aput-object v3, v2, v0

    const/16 v0, 0xa

    const-string v3, "sharp"

    aput-object v3, v2, v0

    const/16 v0, 0xb

    const-string v3, "sony"

    aput-object v3, v2, v0

    const/16 v0, 0xc

    const-string v3, "tcl"

    aput-object v3, v2, v0

    const/16 v0, 0xd

    const-string v3, "lenovo"

    aput-object v3, v2, v0

    const/16 v0, 0xe

    const-string v3, "google"

    aput-object v3, v2, v0

    const/16 v0, 0xf

    const-string v3, "robolectric"

    aput-object v3, v2, v0

    .line 47
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Set;

    .line 54
    new-instance v0, Lcom/google/android/material/color/DynamicColors$1;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColors$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColors;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 42
    invoke-static {p0, p1, p2}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;I)V

    .line 144
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "theme"    # I

    .line 153
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    invoke-static {p0, p1, v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 154
    return-void
.end method

.method private static applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "theme"    # I
    .param p2, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 170
    invoke-static {}, Lcom/google/android/material/color/DynamicColors;->isDynamicColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    if-nez p1, :cond_1

    .line 174
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->getDefaultThemeOverlay(Landroid/content/Context;)I

    move-result p1

    .line 176
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p2, p0, p1}, Lcom/google/android/material/color/DynamicColors$Precondition;->shouldApplyDynamicColors(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 179
    :cond_2
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 165
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 166
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;I)V

    .line 74
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;I)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "theme"    # I

    .line 88
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    invoke-static {p0, p1, v0}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 89
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "theme"    # I
    .param p2, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 132
    new-instance v0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;-><init>(ILcom/google/android/material/color/DynamicColors$Precondition;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 134
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 104
    return-void
.end method

.method private static getDefaultThemeOverlay(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 228
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 230
    .local v0, "dynamicColorAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 231
    .local v1, "theme":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    return v1
.end method

.method public static isDynamicColorAvailable()Z
    .locals 2

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "originalContext"    # Landroid/content/Context;

    .line 193
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->wrapContextIfAvailable(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1
    .param p0, "originalContext"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .line 208
    invoke-static {}, Lcom/google/android/material/color/DynamicColors;->isDynamicColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    return-object p0

    .line 211
    :cond_0
    if-nez p1, :cond_1

    .line 212
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->getDefaultThemeOverlay(Landroid/content/Context;)I

    move-result p1

    .line 214
    :cond_1
    if-nez p1, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0
.end method
