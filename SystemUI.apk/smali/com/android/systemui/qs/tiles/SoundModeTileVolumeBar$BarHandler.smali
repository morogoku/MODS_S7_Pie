.class final Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;
.super Landroid/os/Handler;
.source "SoundModeTileVolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BarHandler"
.end annotation


# static fields
.field private static final HANDLER_DELAY_TIME:I = 0x32

.field private static final HANDLER_FREE_PASS_INTERVAL:I = 0x5

.field private static final REFRESH_BAR_VIEWS:I = 0xd9c

.field private static final SEND_SA_LOGGING:I = 0x856


# instance fields
.field private mCountFreePass:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    return-void
.end method

.method private sendSAVolumeBarLogging()V
    .locals 3

    const-string v0, "SoundModeTileVolumeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSAVolumeBarLogging() ScreenID:205,  mStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(4101~4105)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4101"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$1200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4102"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4103"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4104"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I

    move-result v0

    sget v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4105"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private switchOperator(I)V
    .locals 1

    const/16 v0, 0x856

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd9c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$1000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendSAVolumeBarLogging()V

    nop

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->switchOperator(I)V

    return-void
.end method

.method public sendNewMessage(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(IZ)V

    return-void
.end method

.method public sendNewMessage(IZ)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->switchOperator(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->mCountFreePass:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
