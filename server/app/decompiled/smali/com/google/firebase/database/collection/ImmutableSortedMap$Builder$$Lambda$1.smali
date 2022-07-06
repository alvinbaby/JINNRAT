.class final synthetic Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database-collection@@16.0.1"

# interfaces
.implements Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;


# static fields
.field private static final instance:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$Lambda$1;

    invoke-direct {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$Lambda$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$Lambda$1;->instance:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$KeyTranslator;
    .locals 1

    sget-object v0, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$Lambda$1;->instance:Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
