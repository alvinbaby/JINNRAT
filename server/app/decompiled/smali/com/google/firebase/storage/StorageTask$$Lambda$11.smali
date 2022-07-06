.class final synthetic Lcom/google/firebase/storage/StorageTask$$Lambda$11;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final arg$1:Lcom/google/android/gms/tasks/SuccessContinuation;

.field private final arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final arg$3:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$11;->arg$1:Lcom/google/android/gms/tasks/SuccessContinuation;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$11;->arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$11;->arg$3:Lcom/google/android/gms/tasks/CancellationTokenSource;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/android/gms/tasks/OnSuccessListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/storage/StorageTask$$Lambda$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/storage/StorageTask$$Lambda$11;-><init>(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    return-object v0
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$11;->arg$1:Lcom/google/android/gms/tasks/SuccessContinuation;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$11;->arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageTask$$Lambda$11;->arg$3:Lcom/google/android/gms/tasks/CancellationTokenSource;

    check-cast p1, Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/storage/StorageTask;->lambda$successTaskImpl$6(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    return-void
.end method
