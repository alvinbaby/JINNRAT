.class public final Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zaa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zab:Z

.field private zac:Z

.field private zad:Z

.field private zae:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zaf:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zag:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zah:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private zai:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    move-object v1, v2

    move-object v2, v1

    .line 1
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    new-instance v2, Ljava/util/HashMap;

    move-object v1, v2

    move-object v2, v1

    .line 2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    move-object v2, v3

    move-object v3, v2

    .line 3
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    new-instance v3, Ljava/util/HashMap;

    move-object v2, v3

    move-object v3, v2

    .line 4
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    move-object v3, v1

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v3, Ljava/util/HashSet;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zac(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    move-object v3, v0

    move-object v4, v1

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zab:Z

    move-object v3, v0

    move-object v4, v1

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zae(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zac:Z

    move-object v3, v0

    move-object v4, v1

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaf(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zad:Z

    move-object v3, v0

    move-object v4, v1

    .line 10
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zag(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    .line 11
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zah(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/accounts/Account;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaf:Landroid/accounts/Account;

    move-object v3, v0

    move-object v4, v1

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zai(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zag:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaj(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zak(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    move-object v3, v0

    move-object v4, v1

    .line 14
    invoke-static {v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zal(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zai:Ljava/lang/String;

    return-void
.end method

.method private final zaa(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    move-object v0, v2

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    move v2, v0

    const-string v3, "two different server client ids provided"

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addExtension(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 8
    .param p1    # Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    move-object v6, v1

    .line 1
    invoke-interface {v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;->getExtensionType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v0, v5

    move-object v5, v0

    const-string v6, "Only one extension per type may be added"

    .line 2
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    throw v5

    :cond_0
    move-object v5, v1

    .line 3
    invoke-interface {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;->getImpliedScopes()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    move-object v6, v2

    .line 4
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v5

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    move-object v2, v5

    move-object v5, v1

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;->getExtensionType()I

    move-result v5

    move v3, v5

    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;)V

    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    .line 6
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 15
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    .line 1
    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zae:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zad:Lcom/google/android/gms/common/api/Scope;

    .line 2
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zad:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaf:Landroid/accounts/Account;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    .line 3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v0

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v3

    :cond_2
    new-instance v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-object v1, v3

    new-instance v3, Ljava/util/ArrayList;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    .line 5
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v1

    const/4 v4, 0x3

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaf:Landroid/accounts/Account;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zad:Z

    move-object v8, v0

    iget-boolean v8, v8, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zab:Z

    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zac:Z

    move-object v10, v0

    iget-object v10, v10, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zag:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zah:Ljava/util/Map;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zai:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/zac;)V

    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    .line 1
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zab:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public requestId()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    .line 1
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zac:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zad:Z

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    .line 1
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zaa:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public varargs requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    move-object v4, v1

    .line 1
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa:Ljava/util/Set;

    move-object v4, v2

    .line 2
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v3

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    .line 1
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public requestServerAuthCode(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zab:Z

    move-object v3, v0

    move-object v4, v1

    .line 2
    invoke-direct {v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zae:Ljava/lang/String;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zac:Z

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/accounts/Account;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zaf:Landroid/accounts/Account;

    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setHostedDomain(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    .line 1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zag:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setLogSessionId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->zai:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method
