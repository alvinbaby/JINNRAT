.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi29Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "familyEntry"    # Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :try_start_0
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v8

    array-length v9, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    move v7, v6

    move-object v4, v3

    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .local v4, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :goto_0
    if-ge v7, v9, :cond_2

    :try_start_1
    aget-object v2, v8, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    .local v2, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :try_start_2
    new-instance v6, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v10

    invoke-direct {v6, p3, v10}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 113
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v10

    .line 114
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v10, v6}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 116
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 117
    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v5

    .line 119
    .local v5, "platformFont":Landroid/graphics/fonts/Font;
    if-nez v4, :cond_1

    .line 120
    new-instance v3, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v3, v5}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 110
    .end local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v5    # "platformFont":Landroid/graphics/fonts/Font;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :goto_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move-object v4, v3

    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_0

    .line 115
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 122
    .restart local v5    # "platformFont":Landroid/graphics/fonts/Font;
    :cond_1
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .end local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_2

    .line 124
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v5    # "platformFont":Landroid/graphics/fonts/Font;
    .restart local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_2

    .line 128
    .end local v2    # "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_2
    if-nez v4, :cond_3

    .line 129
    const/4 v6, 0x0

    .line 141
    .end local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :goto_3
    return-object v6

    .line 131
    .restart local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_3
    :try_start_3
    new-instance v0, Landroid/graphics/fonts/FontStyle;

    .line 132
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_4

    const/16 v6, 0x2bc

    move v7, v6

    .line 134
    :goto_4
    and-int/lit8 v6, p4, 0x2

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    .line 135
    :goto_5
    invoke-direct {v0, v7, v6}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 137
    .local v0, "defaultStyle":Landroid/graphics/fonts/FontStyle;
    new-instance v6, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 138
    invoke-virtual {v6, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v6

    .line 139
    invoke-virtual {v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    goto :goto_3

    .line 133
    .end local v0    # "defaultStyle":Landroid/graphics/fonts/FontStyle;
    :cond_4
    const/16 v6, 0x190

    move v7, v6

    goto :goto_4

    .line 135
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 140
    .end local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :catch_1
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    const/4 v6, 0x0

    goto :goto_3

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_6
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 65
    .local v7, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    array-length v10, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v8, 0x0

    move v9, v8

    move-object v3, v2

    .end local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .local v3, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :goto_0
    if-ge v9, v10, :cond_6

    :try_start_1
    aget-object v4, p3, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 66
    .local v4, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    :try_start_2
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v8

    const-string v11, "r"

    invoke-virtual {v7, v8, v11, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 68
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v5, :cond_2

    .line 82
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    move-object v2, v3

    .line 65
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_1
    :goto_1
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move-object v3, v2

    .end local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_0

    .line 71
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :try_start_3
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v8, v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 72
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v11

    .line 73
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v11, v8}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 75
    invoke-virtual {v4}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 76
    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v6

    .line 77
    .local v6, "platformFont":Landroid/graphics/fonts/Font;
    if-nez v3, :cond_4

    .line 78
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v6}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 82
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :goto_3
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_1

    .line 74
    .end local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v6    # "platformFont":Landroid/graphics/fonts/Font;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 80
    .restart local v6    # "platformFont":Landroid/graphics/fonts/Font;
    :cond_4
    :try_start_5
    invoke-virtual {v3, v6}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v2, v3

    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_3

    .line 66
    .end local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v6    # "platformFont":Landroid/graphics/fonts/Font;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :catch_1
    move-exception v8

    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_4
    :try_start_7
    throw v8

    .line 82
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_1

    .line 66
    .end local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v11

    invoke-virtual {v8, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    .line 98
    .end local v4    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v1

    move-object v2, v3

    .line 99
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :goto_5
    const/4 v8, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    return-object v8

    .line 86
    .end local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_6
    if-nez v3, :cond_7

    .line 87
    const/4 v8, 0x0

    move-object v2, v3

    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_6

    .line 89
    .end local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_7
    :try_start_8
    new-instance v0, Landroid/graphics/fonts/FontStyle;

    .line 90
    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_8

    const/16 v8, 0x2bc

    move v9, v8

    .line 92
    :goto_7
    and-int/lit8 v8, p4, 0x2

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    .line 93
    :goto_8
    invoke-direct {v0, v9, v8}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 95
    .local v0, "defaultStyle":Landroid/graphics/fonts/FontStyle;
    new-instance v8, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 96
    invoke-virtual {v8, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v8

    .line 97
    invoke-virtual {v8}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v8

    move-object v2, v3

    .line 95
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_6

    .line 91
    .end local v0    # "defaultStyle":Landroid/graphics/fonts/FontStyle;
    .end local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_8
    const/16 v8, 0x190

    move v9, v8

    goto :goto_7

    .line 93
    :cond_9
    const/4 v8, 0x0

    goto :goto_8

    .line 98
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v2    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :catch_5
    move-exception v1

    goto :goto_5
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "style"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "family":Landroid/graphics/fonts/FontFamily;
    const/4 v2, 0x0

    .line 155
    .local v2, "font":Landroid/graphics/fonts/Font;
    :try_start_0
    new-instance v3, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v3, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v3}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v2

    .line 156
    new-instance v3, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v3, v2}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    .line 157
    new-instance v3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v3, v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 159
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 162
    :goto_0
    return-object v3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 2
    .param p1, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p2, "style"    # I

    .prologue
    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
