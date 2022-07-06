.class final synthetic Lcom/google/firebase/storage/StorageTask$$Lambda$7;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;


# static fields
.field private static final instance:Lcom/google/firebase/storage/StorageTask$$Lambda$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/storage/StorageTask$$Lambda$7;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageTask$$Lambda$7;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTask$$Lambda$7;->instance:Lcom/google/firebase/storage/StorageTask$$Lambda$7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;
    .locals 1

    sget-object v0, Lcom/google/firebase/storage/StorageTask$$Lambda$7;->instance:Lcom/google/firebase/storage/StorageTask$$Lambda$7;

    return-object v0
.end method


# virtual methods
.method public raise(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/firebase/storage/OnProgressListener;

    check-cast p2, Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-interface {p1, p2}, Lcom/google/firebase/storage/OnProgressListener;->onProgress(Ljava/lang/Object;)V

    return-void
.end method
