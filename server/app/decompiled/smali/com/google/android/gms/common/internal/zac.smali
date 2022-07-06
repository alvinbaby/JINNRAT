.class public final Lcom/google/android/gms/common/internal/zac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# static fields
.field private static final zaa:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sCache"
    .end annotation
.end field

.field private static zab:Ljava/util/Locale;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sCache"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    move-object v0, v1

    move-object v1, v0

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public static zaa(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    .line 1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v2, v3

    move v3, v1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v0, v3

    move-object v3, v0

    const/16 v4, 0x21

    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    const-string v4, "Unexpected error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v3, "GoogleApiAvailability"

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_1
    const-string v3, "GoogleApiAvailability"

    const-string v4, "The current user profile is restricted and could not use authenticated features."

    .line 2
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object v3, v0

    const-string v4, "common_google_play_services_restricted_profile_title"

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_2
    const-string v3, "GoogleApiAvailability"

    const-string v4, "The specified account could not be signed in."

    .line 4
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object v3, v0

    const-string v4, "common_google_play_services_sign_in_failed_title"

    .line 5
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_3
    const-string v3, "GoogleApiAvailability"

    const-string v4, "One of the API components you attempted to connect to is not available."

    .line 6
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :pswitch_4
    const-string v3, "GoogleApiAvailability"

    const-string v4, "The application is not licensed to the user."

    .line 7
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :pswitch_5
    const-string v3, "GoogleApiAvailability"

    const-string v4, "Developer error occurred. Please see logs for detailed information"

    .line 8
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :pswitch_6
    const-string v3, "GoogleApiAvailability"

    const-string v4, "Google Play services is invalid. Cannot recover."

    .line 9
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :pswitch_7
    const-string v3, "GoogleApiAvailability"

    const-string v4, "Internal error occurred. Please see logs for detailed information"

    .line 10
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :pswitch_8
    const-string v3, "GoogleApiAvailability"

    const-string v4, "Network error occurred. Please retry request later."

    .line 11
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object v3, v0

    const-string v4, "common_google_play_services_network_error_title"

    .line 12
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_9
    const-string v3, "GoogleApiAvailability"

    const-string v4, "An invalid account was specified when connecting. Please provide a valid account."

    .line 13
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object v3, v0

    const-string v4, "common_google_play_services_invalid_account_title"

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :pswitch_b
    move-object v3, v2

    .line 15
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    :pswitch_c
    move-object v3, v2

    .line 16
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    :pswitch_d
    move-object v3, v2

    .line 17
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static zab(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    move-object v2, v0

    const-string v3, "common_google_play_services_resolution_required_title"

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    move v3, v1

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zac;->zaa(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static zac(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v2, v4

    move-object v4, v0

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zac;->zaf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 15
    :pswitch_0
    sget v4, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    move v0, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    aput-object v6, v4, v5

    move-object v4, v2

    move v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 2
    :pswitch_1
    move-object v4, v0

    const-string v5, "common_google_play_services_restricted_profile_text"

    move-object v6, v3

    .line 3
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 4
    :pswitch_2
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_updating_text:I

    move v0, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    aput-object v6, v4, v5

    move-object v4, v2

    move v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :pswitch_3
    move-object v4, v0

    const-string v5, "common_google_play_services_sign_in_failed_text"

    move-object v6, v3

    .line 5
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :pswitch_4
    move-object v4, v0

    const-string v5, "common_google_play_services_api_unavailable_text"

    move-object v6, v3

    .line 6
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 7
    :pswitch_5
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_unsupported_text:I

    move v0, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    aput-object v6, v4, v5

    move-object v4, v2

    move v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :pswitch_6
    move-object v4, v0

    const-string v5, "common_google_play_services_network_error_text"

    move-object v6, v3

    .line 8
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :pswitch_7
    move-object v4, v0

    const-string v5, "common_google_play_services_invalid_account_text"

    move-object v6, v3

    .line 9
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 10
    :pswitch_8
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_text:I

    move v0, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    aput-object v6, v4, v5

    move-object v4, v2

    move v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :pswitch_9
    move-object v4, v0

    .line 11
    invoke-static {v4}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 12
    sget v5, Lcom/google/android/gms/base/R$string;->common_google_play_services_wear_update_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 13
    :cond_0
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_text:I

    move v0, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    aput-object v6, v4, v5

    move-object v4, v2

    move v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 14
    :pswitch_a
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_text:I

    move v0, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v1, v4

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    aput-object v6, v4, v5

    move-object v4, v2

    move v5, v0

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 2
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static zad(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v2, v0

    const-string v3, "common_google_play_services_resolution_required_text"

    move-object v4, v0

    .line 1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zac;->zaf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/internal/zac;->zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 3
    :goto_0
    return-object v0

    .line 2
    :cond_1
    move-object v2, v0

    move v3, v1

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zac;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static zae(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    .line 1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v0, v2

    move v2, v1

    packed-switch v2, :pswitch_data_0

    move-object v2, v0

    const v3, 0x104000a

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_0
    move-object v2, v0

    .line 2
    sget v3, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    move-object v2, v0

    .line 3
    sget v3, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_2
    move-object v2, v0

    .line 4
    sget v3, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zaf(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    move-object v0, p0

    move-object v3, v0

    .line 1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    .line 2
    :try_start_0
    invoke-static {v3}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v0, v3

    .line 4
    :goto_0
    return-object v0

    .line 3
    :catch_0
    move-exception v3

    :goto_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    move-object v0, v3

    move-object v3, v0

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 3
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static zag(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    move-object v0, p0

    move-object v1, v0

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_channel_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static zah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    .line 1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v1

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zac;->zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object v4, v0

    if-nez v4, :cond_0

    move-object v4, v3

    .line 3
    sget v5, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 4
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :cond_0
    move-object v4, v3

    .line 5
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v1, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v3, v4

    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v2

    aput-object v6, v4, v5

    move-object v4, v1

    move-object v5, v0

    move-object v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private static zai(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    sget-object v5, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    move-object v2, v5

    move-object v5, v2

    .line 1
    monitor-enter v5

    move-object v5, v0

    .line 2
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    invoke-static {v5}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    sget-object v6, Lcom/google/android/gms/common/internal/zac;->zab:Ljava/util/Locale;

    .line 3
    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    move v5, v4

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    .line 4
    invoke-virtual {v5}, Landroidx/collection/SimpleArrayMap;->clear()V

    move-object v5, v3

    sput-object v5, Lcom/google/android/gms/common/internal/zac;->zab:Ljava/util/Locale;

    :cond_0
    sget-object v5, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    move-object v6, v1

    .line 5
    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 17
    monitor-exit v5

    move-object v5, v3

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_1
    move-object v5, v0

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    if-nez v5, :cond_2

    move-object v5, v2

    .line 7
    monitor-exit v5

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v1

    const-string v7, "string"

    const-string v8, "com.google.android.gms"

    .line 8
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move v5, v3

    if-nez v5, :cond_4

    const-string v5, "GoogleApiAvailability"

    move-object v3, v5

    const-string v5, "Missing resource: "

    move-object v0, v5

    move-object v5, v1

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    move v5, v4

    if-eqz v5, :cond_3

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :goto_1
    move-object v5, v3

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v5, v2

    .line 10
    monitor-exit v5

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/String;

    move-object v1, v5

    move-object v5, v1

    move-object v6, v0

    .line 9
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    move-object v0, v5

    goto :goto_1

    :cond_4
    move-object v5, v0

    move v6, v3

    .line 11
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    .line 12
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    move v3, v5

    move v5, v3

    if-eqz v5, :cond_6

    const-string v5, "GoogleApiAvailability"

    move-object v3, v5

    const-string v5, "Got empty resource: "

    move-object v0, v5

    move-object v5, v1

    .line 13
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    move v5, v4

    if-eqz v5, :cond_5

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :goto_2
    move-object v5, v3

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v5, v2

    .line 14
    monitor-exit v5

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/lang/String;

    move-object v1, v5

    move-object v5, v1

    move-object v6, v0

    .line 13
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    move-object v0, v5

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/google/android/gms/common/internal/zac;->zaa:Landroidx/collection/SimpleArrayMap;

    move-object v6, v1

    move-object v7, v0

    .line 15
    invoke-virtual {v5, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v2

    .line 16
    monitor-exit v5

    move-object v5, v0

    move-object v0, v5

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v5

    .line 18
    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    move-object v5, v0

    .line 18
    throw v5
.end method
