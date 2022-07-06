.class final synthetic Lcom/google/firebase/storage/StorageTask$$Lambda$10;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final arg$1:Lcom/google/firebase/storage/StorageTask;

.field private final arg$2:Lcom/google/android/gms/tasks/Continuation;

.field private final arg$3:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final arg$4:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method private constructor <init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->arg$1:Lcom/google/firebase/storage/StorageTask;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->arg$2:Lcom/google/android/gms/tasks/Continuation;

    iput-object p3, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->arg$3:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->arg$4:Lcom/google/android/gms/tasks/CancellationTokenSource;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/storage/StorageTask$$Lambda$10;-><init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->arg$1:Lcom/google/firebase/storage/StorageTask;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->arg$2:Lcom/google/android/gms/tasks/Continuation;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->arg$3:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$10;->arg$4:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/storage/StorageTask;->lambda$continueWithTaskImpl$5(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
