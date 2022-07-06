.class final Lokhttp3/CipherSuite$1;
.super Ljava/lang/Object;
.source "CipherSuite.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokhttp3/CipherSuite$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 45
    const/4 v2, 0x4

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, "limit":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 47
    .local v0, "charA":C
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 48
    .local v1, "charB":C
    if-eq v0, v1, :cond_2

    if-ge v0, v1, :cond_1

    .line 53
    .end local v0    # "charA":C
    .end local v1    # "charB":C
    :cond_0
    :goto_1
    return v6

    .restart local v0    # "charA":C
    .restart local v1    # "charB":C
    :cond_1
    move v6, v7

    .line 48
    goto :goto_1

    .line 45
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "charA":C
    .end local v1    # "charB":C
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 51
    .local v3, "lengthA":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 52
    .local v4, "lengthB":I
    if-eq v3, v4, :cond_4

    if-lt v3, v4, :cond_0

    move v6, v7

    goto :goto_1

    .line 53
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method
