.class final synthetic Lcom/google/firebase/storage/StorageTask$$Lambda$12;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method private constructor <init>(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$12;->arg$1:Lcom/google/firebase/storage/StorageTask;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/storage/StorageTask$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$12;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$12;->arg$1:Lcom/google/firebase/storage/StorageTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageTask;->lambda$getRunnable$7(Lcom/google/firebase/storage/StorageTask;)V

    return-void
.end method
