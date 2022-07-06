.class public final Lcom/google/android/gms/internal/base/zak;
.super Landroidx/collection/LruCache;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xa

    .line 1
    invoke-direct {v1, v2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method
