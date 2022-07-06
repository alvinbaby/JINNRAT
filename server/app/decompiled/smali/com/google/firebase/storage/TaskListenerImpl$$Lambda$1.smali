.class final synthetic Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/storage/TaskListenerImpl;

.field private final arg$2:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;->arg$1:Lcom/google/firebase/storage/TaskListenerImpl;

    iput-object p2, p0, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;->arg$2:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;-><init>(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;->arg$1:Lcom/google/firebase/storage/TaskListenerImpl;

    iget-object v1, p0, Lcom/google/firebase/storage/TaskListenerImpl$$Lambda$1;->arg$2:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/firebase/storage/TaskListenerImpl;->lambda$addListener$0(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)V

    return-void
.end method
