.class Lcom/android/server/audio/AudioService$9;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService;->registerGearVrStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGearVrStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    if-eq p1, v0, :cond_a2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_94

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_8c

    const v0, 0x8000

    if-eq p1, v0, :cond_84

    packed-switch p1, :pswitch_data_b2

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignore HMT state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :pswitch_4b
    const-string v0, "AudioService"

    const-string v1, "HMT OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "hmtState=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mHMTDocked:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mHMTTetheredDocked:Z

    goto :goto_b0

    :pswitch_62
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_72

    const-string v0, "AudioService"

    const-string v2, "HMT Tethered Docked"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mHMTTetheredDocked:Z

    goto :goto_b0

    :cond_72
    const-string v0, "AudioService"

    const-string v2, "HMT Docked"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "hmtState=dock"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mHMTDocked:Z

    goto :goto_b0

    :cond_84
    const-string v0, "AudioService"

    const-string v1, "HMT headset unplugged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_8c
    const-string v0, "AudioService"

    const-string v1, "HMT headset plugged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_94
    const-string v0, "AudioService"

    const-string v1, "HMT unmount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "hmtState=unmount"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_b0

    :cond_a2
    const-string v0, "AudioService"

    const-string v1, "HMT mount!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "hmtState=mount"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    nop

    :goto_b0
    return-void

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_62
        :pswitch_4b
    .end packed-switch
.end method
