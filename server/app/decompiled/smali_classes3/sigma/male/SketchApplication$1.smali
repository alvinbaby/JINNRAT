.class Lsigma/male/SketchApplication$1;
.super Ljava/lang/Object;
.source "SketchApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/SketchApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsigma/male/SketchApplication;


# direct methods
.method constructor <init>(Lsigma/male/SketchApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/SketchApplication$1;->this$0:Lsigma/male/SketchApplication;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lsigma/male/SketchApplication$1;->this$0:Lsigma/male/SketchApplication;

    invoke-virtual {v1}, Lsigma/male/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsigma/male/DebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    const-string v1, "MCY0Qko="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lsigma/male/SketchApplication$1;->this$0:Lsigma/male/SketchApplication;

    invoke-virtual {v1}, Lsigma/male/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2b67

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 27
    iget-object v0, p0, Lsigma/male/SketchApplication$1;->this$0:Lsigma/male/SketchApplication;

    const-string v2, "NDgnX1U="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsigma/male/SketchApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 28
    const/4 v2, 0x2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 30
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 33
    iget-object v0, p0, Lsigma/male/SketchApplication$1;->this$0:Lsigma/male/SketchApplication;

    invoke-static {v0}, Lsigma/male/SketchApplication;->access$0(Lsigma/male/SketchApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method
