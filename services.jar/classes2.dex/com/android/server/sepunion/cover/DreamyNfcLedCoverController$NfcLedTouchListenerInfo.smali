.class Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "DreamyNfcLedCoverController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedTouchListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    iput p5, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    iput p6, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1200(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_21
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1200(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public onCoverTapLeft()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null listener received onCoverTapLeft!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapLeft()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    :cond_1a
    goto :goto_25

    :catch_1b
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverTapLeft callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public onCoverTapMid()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null listener received onCoverTapMid!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapMid()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    :cond_1a
    goto :goto_25

    :catch_1b
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverTapMid callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public onCoverTapRight()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null listener received onCoverTapRight!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapRight()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    :cond_1a
    goto :goto_25

    :catch_1b
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverTapRight callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public onCoverTouchAccept()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null listener received TouchAccept!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    :cond_1a
    goto :goto_25

    :catch_1b
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverTouchAccept callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public onCoverTouchReject()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null listener received TouchReject!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    :cond_1a
    goto :goto_25

    :catch_1b
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onCoverTouchReject callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null listener received onSystemCoverEvent!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    :cond_1a
    goto :goto_25

    :catch_1b
    move-exception v0

    # getter for: Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed onSystemCoverEvent callback"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method
