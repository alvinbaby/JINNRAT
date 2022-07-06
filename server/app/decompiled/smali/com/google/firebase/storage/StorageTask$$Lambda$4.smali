.class final synthetic Lcom/google/firebase/storage/StorageTask$$Lambda$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;


# instance fields
.field private final arg$1:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method private constructor <init>(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$4;->arg$1:Lcom/google/firebase/storage/StorageTask;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/storage/StorageTask;)Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
    .locals 1

    new-instance v0, Lcom/google/firebase/storage/StorageTask$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StorageTask$$Lambda$4;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    return-object v0
.end method


# virtual methods
.method public raise(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$4;->arg$1:Lcom/google/firebase/storage/StorageTask;

    check-cast p1, Lcom/google/android/gms/tasks/OnFailureListener;

    check-cast p2, Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->lambda$new$1(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/OnFailureListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    return-void
.end method
