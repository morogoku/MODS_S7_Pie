.class public Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;
.super Ljava/lang/Object;
.source "StatusBarAudioManagerHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;


# instance fields
.field private mCachedRingerMode:I

.field private mManager:Landroid/media/AudioManager;

.field private mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StatusBarAudioManagerHelper"

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mCachedRingerMode:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mCachedRingerMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;)Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;)Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    return-object v0
.end method

.method private getManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public getRingerMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mCachedRingerMode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mCachedRingerMode:I

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mCachedRingerMode:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mCachedRingerMode:I

    :goto_0
    return v1
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper$StatusBarAudioManagerHelperBroadcastReceiver;->registerReceiver()V

    return-void
.end method

.method public setRingerModeInternal(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_1
    return-void
.end method
