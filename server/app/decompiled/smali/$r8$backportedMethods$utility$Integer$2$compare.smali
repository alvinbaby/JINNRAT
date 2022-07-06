.class public synthetic L$r8$backportedMethods$utility$Integer$2$compare;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic compare(II)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
