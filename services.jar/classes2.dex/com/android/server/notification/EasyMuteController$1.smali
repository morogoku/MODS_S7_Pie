.class Lcom/android/server/notification/EasyMuteController$1;
.super Ljava/lang/Object;
.source "EasyMuteController.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EasyMuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .registers 4

    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    goto :goto_45

    :cond_9
    const-string v0, "EasyMuteController"

    const-string v1, "SemMotionRecognitionEvent.FLIP_SCREEN_DOWN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_10
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    # getter for: Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->access$000(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_37
    .catchall {:try_start_10 .. :try_end_1f} :catchall_28

    :cond_1f
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    # getter for: Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z
    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->access$100(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_40

    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    # getter for: Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z
    invoke-static {v1}, Lcom/android/server/notification/EasyMuteController;->access$100(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v1}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_36
    throw v0

    :catch_37
    move-exception v0

    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    # getter for: Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z
    invoke-static {v0}, Lcom/android/server/notification/EasyMuteController;->access$100(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v0

    if-eqz v0, :cond_45

    :goto_40
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_45
    :goto_45
    return-void
.end method
