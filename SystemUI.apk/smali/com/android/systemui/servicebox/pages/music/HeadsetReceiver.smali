.class public Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private updateBtHeadSetConnectionInfo(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBTHeadSetConnectionInfo() state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;->onHeadsetConnected()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;->onHeadsetDisconnected()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onReceive() return : sticky broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v1, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->updateHeadSetConnectionInfo(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->updateBtHeadSetConnectionInfo(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateHeadSetConnectionInfo(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "state"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHeadSetDeviceInfo() state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;->onHeadsetConnected()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;->onHeadsetDisconnected()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
