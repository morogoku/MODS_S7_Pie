.class Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSoundItem"
.end annotation


# instance fields
.field private mDevice:I

.field private mRatio:I

.field private mUid:I

.field final synthetic this$1:Lcom/android/server/audio/AudioService$MultiSoundManager;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$MultiSoundManager;III)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->this$1:Lcom/android/server/audio/AudioService$MultiSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mUid:I

    iput p3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    invoke-virtual {p0, p4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->setAppVolume(I)V

    iput p4, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mRatio:I

    return-void
.end method

.method static synthetic access$19200(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mUid:I

    return v0
.end method


# virtual methods
.method public getAppDevice(Z)I
    .registers 4

    if-nez p1, :cond_11

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->this$1:Lcom/android/server/audio/AudioService$MultiSoundManager;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$16600(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    return v0
.end method

.method public getAppVolume()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mRatio:I

    return v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mUid:I

    return v0
.end method

.method public removable()Z
    .registers 3

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mRatio:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public setAppDevice(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    return-void
.end method

.method public setAppVolume(I)V
    .registers 4

    if-ltz p1, :cond_6

    const/16 v0, 0x64

    if-le p1, v0, :cond_d

    :cond_6
    const-string v0, "AudioService"

    const-string v1, "Invalid app volume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mRatio:I

    return-void
.end method
