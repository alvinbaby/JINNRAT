.class public Lsigma/male/MainActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsigma/male/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lsigma/male/MainActivity;


# direct methods
.method constructor <init>(Lsigma/male/MainActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p2, p0, Lsigma/male/MainActivity$WebAppInterface;->mContext:Landroid/content/Context;

    .line 678
    return-void
.end method


# virtual methods
.method public showToast(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$0(Lsigma/male/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    return-void
.end method

.method public showTt(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lsigma/male/MainActivity;->_phidatsu(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public showtoadtt(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-virtual {v0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public showtoadtts(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$1(Lsigma/male/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NDoiX1c8MGhEViExKFkWNDcyRFc7ehBkfQI="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$1(Lsigma/male/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 704
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    iget-object v1, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-static {v1}, Lsigma/male/MainActivity;->access$1(Lsigma/male/MainActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 705
    return-void
.end method

.method public showts(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 712
    :try_start_0
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-virtual {v0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 714
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-virtual {v0}, Lsigma/male/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 715
    iget-object v1, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-virtual {v1, v0}, Lsigma/male/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$1(Lsigma/male/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NDoiX1c8MGhEViExKFkWNDcyRFc7ehBkfQI="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-static {v0}, Lsigma/male/MainActivity;->access$1(Lsigma/male/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PSAyXUtve2ldVDQtaEpXOjMqSBY2OysCSyE7NEgXNCQ2XhcxMTJMUTkneURcaA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 722
    iget-object v0, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    iget-object v1, p0, Lsigma/male/MainActivity$WebAppInterface;->this$0:Lsigma/male/MainActivity;

    invoke-static {v1}, Lsigma/male/MainActivity;->access$1(Lsigma/male/MainActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsigma/male/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
