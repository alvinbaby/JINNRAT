.class public Lsigma/male/SketchApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "SketchApplication.java"


# instance fields
.field private uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lsigma/male/SketchApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lsigma/male/SketchApplication;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/SketchApplication;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    new-instance v0, Lsigma/male/SketchApplication$1;

    invoke-direct {v0, p0}, Lsigma/male/SketchApplication$1;-><init>(Lsigma/male/SketchApplication;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 36
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 37
    return-void
.end method
