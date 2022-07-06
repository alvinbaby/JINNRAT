.class Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage$1;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;

    .prologue
    .line 42
    iput-object p1, p0, Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage$1;->this$0:Landroidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localToGlobal(J)J
    .locals 2
    .param p1, "localId"    # J

    .prologue
    .line 45
    const-wide/16 v0, -0x1

    return-wide v0
.end method
