.class Landroidx/core/content/ContextCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    return-void
.end method

.method static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "obj"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "obj"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "obj"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    return v0
.end method
