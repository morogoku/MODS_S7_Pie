.class public final Lcom/android/systemui/util/SystemUIImsManager;
.super Ljava/lang/Object;
.source "SystemUIImsManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;,
        Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;,
        Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsManager:[Lcom/sec/ims/ImsManager;

.field private mImsManagerConnected:[Z

.field private mImsRegStateChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

.field private mRegiListeners:[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/ims/ImsManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    new-array v1, v0, [Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mRegiListeners:[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    new-array v0, v0, [Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    iput-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SystemUIImsManager;->createImsManager(I)V

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isMultisim()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/systemui/util/SystemUIImsManager;->createImsManager(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManager:[Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/util/SystemUIImsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/SystemUIImsManager;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mRegiListeners:[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    return-object v0
.end method


# virtual methods
.method public addImsRegStateChangedCallback(ILcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    aget-object v0, v0, p1

    invoke-interface {p2, v0}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;->onImsRegStateChanged(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public createImsManager(I)V
    .locals 3

    const-string v0, "SystemUIImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createImsManager : slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUIImsManager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/SystemUIImsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/SystemUIImsManager$1;-><init>(Lcom/android/systemui/util/SystemUIImsManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Slot 0 : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "mImsManagerConnected : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mImsRegStateChangedCallbacks : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "Slot 1 : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "mImsManagerConnected : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    aget-boolean v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mImsRegStateChangedCallbacks : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public fireImsRegStateChangedCallback(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;->onImsRegStateChanged(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public getImsManager()Lcom/sec/ims/ImsManager;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SystemUIImsManager;->getImsManager(I)Lcom/sec/ims/ImsManager;

    move-result-object v0

    return-object v0
.end method

.method public getImsManager(I)Lcom/sec/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->createImsManager(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoLTEEnableState()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SystemUIImsManager;->isVoLteSupportedOperator(I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SystemUIImsManager;->isVoLteSupportedOperator(I)Z

    move-result v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v3, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v0
.end method

.method public getVoLTESupportedSIM()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SystemUIImsManager;->isVoLteSupportedSIM(I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SystemUIImsManager;->isVoLteSupportedSIM(I)Z

    move-result v3

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v3, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v0
.end method

.method public hasVoLteSIM(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->getImsManager(I)Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v1

    const-string v2, "SystemUIImsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasVoLteSIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v1, "SystemUIImsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasVoLteSIM slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", imsManager =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isImsManagerConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isImsManagerConnected()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected(I)Z

    move-result v0

    return v0
.end method

.method public isImsManagerConnected(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isVoLTEVideoCallSupportedSIM()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/util/SystemUIImsManager;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mmtel-video"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v3

    const-string v4, "SystemUIImsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVoLTEVideoCallSupportedSIM hasVoLteSim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isVoLteVideoCallSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    const-string v2, "SystemUIImsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsManager =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isVoLteSupportedOperator(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->getImsManager(I)Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mmtel"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "SystemUIImsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoLteSupportedOperator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v1, "SystemUIImsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoLteSupportedOperator slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", imsManager =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isImsManagerConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isVoLteSupportedSIM(I)Z
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->getImsManager(I)Lcom/sec/ims/ImsManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mmtel"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v3

    const-string v4, "SystemUIImsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVoLteSupportedSIM isVoLteSupported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hasVoLteSim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    const-string v2, "SystemUIImsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoLteSupportedSIM slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", imsManager =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isImsManagerConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isVolteEnabled()Z
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/util/SystemUIImsManager;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/util/SystemUIImsManager;->isImsManagerConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "volte"

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    if-eqz v3, :cond_1

    const-string v7, "volte"

    invoke-virtual {v3, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "SystemUIImsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVoLteRegistered:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v7, "SystemUIImsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVoLteRegistered:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    return v5

    :cond_4
    const-string v3, "SystemUIImsManager"

    const-string v4, "imsManager Null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2
.end method

.method public removeImsRegStateChangedCallback(ILcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
