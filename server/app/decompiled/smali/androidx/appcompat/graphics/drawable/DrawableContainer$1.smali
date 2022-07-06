.class Landroidx/appcompat/graphics/drawable/DrawableContainer$1;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainer;->selectDrawable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainer;)V
    .locals 4

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 470
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/graphics/drawable/DrawableContainer$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 471
    return-void
.end method
